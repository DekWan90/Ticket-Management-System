<?php

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

Auth::routes();


// Route::get('/', function () {
//     return view('welcome');
// });

//Route::get('/adminHome','adminController@getData');

// Route::get('/home', 'HomeController@index')->name('home');

Route::get('/ticketSubmitted', 'HomeController@ticketSubmitted');

Route::get('/open', 'HomeController@open');

Route::get('/awaitingReply', 'HomeController@awaitingReply');

Route::get('/closed', 'HomeController@closed');

Route::get('/viewTicket', 'HomeController@viewTicket');

Route::get('/form', 'HomeController@form');

Route::get('/get/data/{type}','TestController@index')->name('get.data');

Route::post('/submit/store', 'TestController@store' )->name('submit.store');

Route::get('/admin','adminHomeController@login');

Route::get('/viewTicket','TestController@show');

Route::get('/viewTicketDetails/{id}', 'TestController@showTicket');

Route::post('/submit/storeStatus', 'TestController@storeStatus' )->name('submit.storeStatus');




Route::group(['middleware'=>['web','auth']],function(){
		Route::get('/', function () {
    		return view('welcome');

		});

		Route::get('/home', 'adminHomeController@index');


		Route::get('/projects/{project}/show','adminHomeController@show');

		Route::resource('projects','adminHomeController');

		Route::post('/submit/store/{id}', 'MessageController@storeMessage' )->name('submit.message');

				
});



// Route::get('/','SearchController@index');
// Route::get('/search','SearchController@search');

