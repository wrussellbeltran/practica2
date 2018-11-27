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

Route::get('/', function () {
    return view('welcome');
});

Route::post('/api/registrar', ['middleware' => 'cors', 'uses' => 'UserController@register']);
Route::post('/api/login', 'UserController@login');
Route::resource('api/cliente', 'CustomerController');
Route::resource('api/articulo', 'ArticleController');
Route::resource('api/configuracion', 'ConfigurationController');
Route::resource('api/venta', 'SaleController');
Route::resource('api/venta_detalle', 'SaleDetailController');