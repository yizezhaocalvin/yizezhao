<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $table="books";
    protected $fillable=['name','author','isbn','gid','pagenum','price','pid','qty','imgurl','expenditure'];

    public function Publisher(){
        return $this->hasOne('App\Publisher','pid');
    }

    public function Genre(){
        return $this->hasMany('App\BookGenre','bid');
    }
}
