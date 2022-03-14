<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\SidebarController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('fontend/home');
// });

Route::view('/', 'fontend/home')->name('home');
//Route for Post view
Route::get('/postlistById/{slug}', [PostController::class,'show'])->name('home.show');
//Route for save comment
Route::post('/publicPostComment/{id}', [CommentController::class,'store'])->name('comment.store');
//Route for get comment
Route::get('/getCommentByPostId/{id}', [CommentController::class,'index'])->name('comment.index');
//Route for get latest 5 post
Route::get('/latestPost', [PostController::class,'latestpost'])->name('post.latestpost');
//Route for category wish post view
Route::get('/categoryWishPostView/{categoryName}', [PostController::class,'categoryWishPostView'])->name('post.categoryWishPostView');

Auth::routes();

Route::get('/dashboard', [HomeController::class, 'index'])->name('home');

//Route for Save Category
Route::post('/categorySave', [CategoryController::class, 'store'])->name('category.store');
//Route for get Category List
Route::get('/categoryList', [CategoryController::class, 'index'])->name('category.index');
//Route for edit Category
Route::get('/categoryById/{id}', [CategoryController::class, 'edit'])->name('category.edit');
//Route for update Category
Route::post('/categoryUpdate/{id}', [CategoryController::class, 'update'])->name('category.update');
//Route for Delete Category
Route::get('/categoryDelete/{id}', [CategoryController::class, 'destroy'])->name('category.destroy');

//Router for save post
Route::post('/postSave', [PostController::class, 'store'])->name('post.store');
//Router for get post list
Route::get('/postList', [PostController::class, 'index'])->name('post.index');
//Router for edit post
Route::get('/postById/{id}', [PostController::class, 'edit'])->name('post.edit');
//Router for update post
Route::post('/updatePost/{id}', [PostController::class, 'update'])->name('post.update');
//Router for Delete post
Route::get('/postDelete/{id}', [PostController::class, 'destroy'])->name('post.destroy');

//Router for Sidebar Content
Route::get('/sidebarcontent', [SidebarController::class, 'index'])->name('sidebar.index');
//Router for Update Sidebar Content
Route::post('/sidebarUpdate', [SidebarController::class, 'update'])->name('sidebar.update');
//Router for save Sidebar Icon
Route::post('/sidebarIcon', [SidebarController::class, 'store'])->name('sidebar.store');
//Router for get Sidebar Icon List
Route::get('/sideIconList', [SidebarController::class, 'show'])->name('sidebar.show');
//Router for get Sidebar Icon List
Route::post('/updateSocialIcon/{id}', [SidebarController::class, 'edit'])->name('sidebar.edit');
//Router for get Sidebar Icon List
Route::get('/socialIconDelete/{id}', [SidebarController::class, 'destroy'])->name('sidebar.destroy');
