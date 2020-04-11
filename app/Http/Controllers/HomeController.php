<?php


namespace App\Http\Controllers;




use App\Genre;

use App\Book;
use App\Order;
use App\OrderBook;
use App\Publisher;
use Validator;
use Illuminate\Http\Request;

use Session;

class HomeController extends Controller {

    /*
    |--------------------------------------------------------------------------
    | Home Controller
    |--------------------------------------------------------------------------
    |
    | This controller renders your application's "dashboard" for users that
    | are authenticated. Of course, you are free to change or remove the
    | controller as you wish. It is just here to get your app started!
    |
    */

    protected $request;

    public function __construct(Request $request) {
        $this->request = $request;
    }

    /**
     * Show the application dashboard to the user.
     *
     * @return Response
     */
    public function index()
    {
        $genres 	= Genre::all();

        foreach ($genres as $genre){
            if(isset($genre->gid))
            {
                $ttl = Book::whereRaw('gid = '. $genre->gid)->count();
                $genres['ttl'] = $ttl;
            }

        }

        $books		= Book::all();
//        foreach ($books as $book){
//            $product['rating'] = $this->getRating($book['author']);
//        }


        return view('home')->with('genres',$genres)->with('books',$books)->with('cart',$this->getCart());;
    }

    private function getCart(){
        if (! $this->request->session()->has('cart')){
            $this->request->session()->put( 'cart',[] );;
            $this->request->session()->save();
        }
        return $cart = $this->request->session()->get('cart');
    }
    public function getBook($id){
        $book 			= Book::where('id',$id)->first();

        $purchased			= false;
        $publisher= Publisher::where('id',$book->pid)->first();
        $genres="";
        for ($x=0; $x<$book->Genre()->get()->count(); $x++) {
            $name=Genre::where('id',$book->Genre()->get()[$x]->gid)->first()->name;
            $genres=$genres.",".$name;
        }

        if ( Session::get('user') !=null ){
            $orders = Order::where('mid','=',Session::get('user')['id'])->get();
            foreach ($orders as $order){
                $books 			= OrderBook::where('oid','=',$order['id'])->get();
                foreach ($books as $pd){
                    //dd($pd['id']);
                    // echo ($pd['id']);
                    // echo ('&nbsp;');
                    // echo ($product['id']);
                    // echo ('</br>');
                    if ($pd['pid'] == $book['id']){$purchased = true;}
                }
            }
        }

        return view('book')->with('book',$book)->with('cart',$this->getCart())->with('publisher',$publisher)->with('genres',$genres);
    }
    public function addBook($id){
        $cart = $this->getCart();
        $qty  = $this->request->input('qty');
        if (array_key_exists($id, $cart)){
            $cart[$id] += $qty;
        }else{
            $cart[$id] = $qty;
        }
        $this->request->session()->put('cart',$cart);
        $this->request->session()->save();
        $book 			= Book::where('id',$id)->first();
   //     dd($this->request->session()->all());
        return redirect(url('/book/'.$id));
    }
    public function checkoutCart(){
        $cart = $this->getCart();
        $books = [];
        foreach($cart as $key => $value){
            $item 			= Book::where('id',$key)->first();
            $item['qty'] = $value;
            $item 	= $item->toArray();
            array_push($books,$item);
        }

        $input = $this->request->all();
        $endDate=date('Y-m-d', strtotime("+30 days"));
        $validator = Validator::make($input, [
            'receiver_name'=>'required|min:10|max:100',
            'address_1'=>'required|min:10|max:100',
            'phone'=>'required|digits:8',
            'credit_card_number'=>array('required',
                'regex:/^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$/'),
            'csv'=>'required|digits:3',
            'delivery_date'=>'required|after:'.date('Y-m-d').'|before:'.$endDate
        ]);
        if (!$validator->fails()){
            $ttlprice 	= 0;
            foreach($cart as $key => $value){


                $item 			= Book::where('id',$key)->first();
                if($item['qty']-$value<0)
                {
                    return view('cart')->with('cart',$cart)->with('books',$books)->with('qerror',"Stock is not enough")->with('input',$input);
                }
                else{
                    $item['qty']-=$value;

                }
                if($item['qty']<10)
                {
                    $item['qty']=10;
                }
                $item.save();

                $ttlprice += ($item['price'] * $value);
            }
            $input['mid'] = Session::get('user')['id'];
            $input['ttlprice'] = $ttlprice;
            $input['payment_method'] = 'Online Payment';
            $oid = Order::create($input)->id;
            foreach($cart as $key => $value){
                $item 			= Book::where('id',$key)->first();
                OrderBook::create(['oid'=>$oid,'pid'=>$item['id'],'qty'=>$value]);
            }
            $this->request->session()->pull('cart');
            return redirect('/order');
        }else{
            return view('cart')->with('cart',$cart)->with('books',$books)->with('ferrors',$validator->errors())->with('input',$input);
        }
    }

    public function showCart(){
        $cart = $this->getCart();
        $books = [];
        foreach($cart as $key => $value){
            $item 			= Book::where('id',$key)->first();
            $item['qty'] = $value;
            $item 	= $item->toArray();
            array_push($books,$item);
        }
        return view('cart')->with('cart',$cart)->with('books',$books);
    }
    public function updateCart(){
        $cart = $this->getCart();
        $books = [];
        if ($this->request->input('action')=='add'){
            $cart[$this->request->input('id')] += 1;
        }else if ($this->request->input('action')=='remove'){
            $cart[$this->request->input('id')] -= 1;
            if ($cart[$this->request->input('id')] == 0){
                unset ($cart[$this->request->input('id')]);
            }
        }else if ($this->request->input('action')=='delete'){
            unset($cart[$this->request->input('id')]);
        }
        $this->request->session()->put( 'cart',$cart );;
        $this->request->session()->save();
        foreach($cart as $key => $value){
            $item 			= Book::where('id',$key)->first();
            $item['qty'] = $value;
            $item 	= $item->toArray();
            array_push($books,$item);
        }
        return view('cart')->with('cart',$cart)->with('books',$books);
    }

    public function getOrder(){
        //get all asoociate order in a list
        //pass the data to the view
        $orders = Order::where('mid','=',Session::get('user')['id'])->get();
        return view('order')->with('cart',$this->getCart())->with('orders',$orders);
    }

}
