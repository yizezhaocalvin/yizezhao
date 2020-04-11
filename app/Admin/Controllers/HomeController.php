<?php

namespace App\Admin\Controllers;

use App\Order;
use App\OrderBook;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
class HomeController extends Controller
{
    public function index(Content $content)
    {



        return $content
            ->title('Dashboard')
            ->description('Description...')
            ->row(Dashboard::title())

            ->row(function (Row $row) {

                $row->column(4, function (Column $column) {
                    $genres = \DB::table("order_books")->join('books', 'order_books.pid', '=', 'books.id')
                        ->join("genres",'books.gid','=','genres.id')
                        ->select('genres.name as name', \DB::raw("sum(order_books.qty) as total"))
                        ->groupby("genres.name")->get();

                    $column->append(  view('genre')->with('genres',$genres));
                });

                $row->column(4, function (Column $column) {
                    $authors = \DB::table("order_books")->join('books', 'order_books.pid', '=', 'books.id')

                        ->select('books.author as author', \DB::raw("sum(order_books.qty) as total"))
                        ->groupby("books.author")->get();

                    $column->append(  view('author')->with('authors',$authors));

                });

                $row->column(4, function (Column $column) {
                    $authors = \DB::table("order_books")->join('books', 'order_books.pid', '=', 'books.id')

                        ->select('books.author as author', \DB::raw("sum(order_books.qty) as total"))
                        ->groupby("books.author")->get();


                    $column->append(view('author')->with('authors',$authors));
                });
            });
    }
}
