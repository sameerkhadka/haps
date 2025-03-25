<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\PageController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[PageController::class,'index']);
Route::get('/about',[PageController::class,'about']);
Route::get('/projects',[PageController::class,'project']);
Route::get('/projects/{slug}',[PageController::class,'projectDetail']);
Route::get('/news',[PageController::class,'news']);
Route::get('/news/{slug}',[PageController::class,'newsDetail']);
Route::get('/gallery',[PageController::class,'gallery']);
Route::get('/contact',[PageController::class,'contact']);
Route::get('/volunteer',[PageController::class,'volunteer']);
Route::get('/donate',[PageController::class,'donate']);
Route::get('/resources',[PageController::class,'resource']);
Route::get('/project-blog/{id}',[PageController::class,'projectBlog']);


Route::group(['prefix' => 'admin'], function () {
    Route::post('submit-faqs',[AdminController::class,'addUpdateFaq']);
    Route::post('submit-testimonials',[AdminController::class,'addUpdateTestimonial']);
    Voyager::routes();
});
