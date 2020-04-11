<?php

namespace App\Admin\Controllers;

use App\Book;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class BookController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Book';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Book());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('author', __('Author'));
        $grid->column('isbn', __('Isbn'));
        $grid->column('gid', __('Gid'));
        $grid->column('pagenum', __('Pagenum'));
        $grid->column('price', __('Price'));
        $grid->column('qty', __('Qty'));
        $grid->column('imgurl', __('Imgurl'));
        $grid->column('expenditure',__('Expenditure'));
        $grid->column('pid',__('Pid'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Book::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('author', __('Author'));
        $show->field('isbn', __('Isbn'));
        $show->field('gid', __('Gid'));
        $show->field('pagenum', __('Pagenum'));
        $show->field('price', __('Price'));
        $show->field('qty', __('Qty'));
        $show->field('imgurl', __('Imgurl'));
        $show->field('expenditure',__('Expenditure'));
        $show->field('pid',__('Pid'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));


        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Book());

        $form->text('name', __('Name'));
        $form->text('author', __('Author'));
        $form->text('isbn', __('Isbn'));
        $form->number('gid', __('Gid'));
        $form->number('pagenum', __('Pagenum'));
        $form->decimal('price', __('Price'));
        $form->number('qty', __('Qty'));
        $form->number('pid',__('Pid'));
        $form->number('expenditure',__('Expenditure'));
        $form->image('imgurl', __('Imgurl'));

        return $form;
    }
}
