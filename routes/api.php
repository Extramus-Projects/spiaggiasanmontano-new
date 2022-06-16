<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('/booking/confirm/paypal-create', [App\Http\Controllers\PaymentController::class, 'create_payment'])->name('user.createbooking.confirm.payment.paypal.create');
Route::post('/booking/confirm/paypal-execute', [App\Http\Controllers\PaymentController::class, 'execute_payment'])->name('user.createbooking.confirm.payment.paypal.execute');
