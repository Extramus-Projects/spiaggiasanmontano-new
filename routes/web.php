<?php

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

// Route::get('/', 'App\Http\Controllers\PagesController@index')->name('user.index');
Route::get('/', 'App\Http\Controllers\PagesController@viewsmallplace')->name('user.viewsmallplace');
Route::get('/booking/{place_id}/{checkin}/{checkout}/{error_msg}', [App\Http\Controllers\PagesController::class,'createbooking'])->name('user.createbooking');
Route::post('/booking/confirm', [App\Http\Controllers\PagesController::class, 'confirmbooking'])->name('user.createbooking.confirm');
Route::post('/booking/confirm/payment', [App\Http\Controllers\PagesController::class, 'confirmbookingpayment'])->name('user.createbooking.confirm.payment');

Route::get('/booking/payment/tracking/{tracking_id}', [App\Http\Controllers\PagesController::class, 'confirmbookingpaymentpaypal'])->name('user.createbooking.payment.track');

Route::get('/booking/confirm/card/{tracking_id}', [App\Http\Controllers\BookingController::class, 'confirmCreditcard'])->name('user.createbooking.confirmcreditcard');


Route::get('/regulations', [App\Http\Controllers\PagesController::class, 'regulationsview'])->name('user.regulations');
Route::get('/prices', [App\Http\Controllers\PagesController::class, 'pricesview'])->name('user.allprices');
Route::get('/privacy', [App\Http\Controllers\PagesController::class, 'privacyview'])->name('user.privacy');

// error page
Route::get('/404', [App\Http\Controllers\PagesController::class, 'error404'])->name('error.404');


Route::get('/home', 'App\Http\Controllers\PagesController@viewsmallplace')->name('home');

Route::get('/contact', [App\Http\Controllers\PagesController::class, 'contact'])->name('user.contact');

Route::group(['prefix' => 'admin'], function(){
    Auth::routes();


    Route::get('/', [App\Http\Controllers\AdminPagesController::class, 'dashboard'])->name('admin');
    Route::post('/', [App\Http\Controllers\AdminPagesController::class, 'dashboard'])->name('admin');

    Route::post('/place/submit', [App\Http\Controllers\AdminPagesController::class, 'submitplace_search'])->name('admin.place.submit');
    Route::post('/place/quickbooking', [App\Http\Controllers\AdminPagesController::class, 'quickbooking'])->name('admin.place.quickbooking');
    Route::get('/place/viewplaces', [App\Http\Controllers\AdminPagesController::class, 'place_view'])->name('admin.place.viewplaces');
    Route::get('/place/create', [App\Http\Controllers\AdminPagesController::class, 'place_create'])->name('admin.place.create');
    Route::get('/place/status/{place_id}', [App\Http\Controllers\AdminPagesController::class, 'changeStatus'])->name('admin.place.changestatus');
    Route::get('/place/status-reserved/{place_id}', [App\Http\Controllers\AdminPagesController::class, 'changeReserved'])->name('admin.place.changereserved');
     Route::get('/place/status-hotels/{place_id}', [App\Http\Controllers\AdminPagesController::class, 'changeHotels'])->name('admin.place.changehotels');
    Route::post('/place/create', [App\Http\Controllers\AdminPagesController::class, 'place_store'])->name('admin.place.store');
    Route::post('/place/edit/{place_id}', [App\Http\Controllers\AdminPagesController::class, 'place_update'])->name('admin.place.update');
    Route::get('/place/edit/{place_id}', [App\Http\Controllers\AdminPagesController::class, 'place_edit'])->name('admin.place.edit');
    Route::get('/place/delete/{place_id}', [App\Http\Controllers\AdminPagesController::class, 'place_delete'])->name('admin.place.delete');

    Route::get('/booking/exporttoexcel', [App\Http\Controllers\AdminController::class, 'export'])->name('admin.booking.export');
    Route::get('/booking/exporttoexcel/{date}', [App\Http\Controllers\AdminController::class, 'exportdate'])->name('admin.booking.export.date');
    Route::get('/booking/exporttoexcelcat/{category}', [App\Http\Controllers\AdminController::class, 'exportcategory'])->name('admin.booking.export.category');

    Route::get('/booking/viewbookings', [App\Http\Controllers\AdminPagesController::class, 'booking_view'])->name('admin.booking.viewbookings');
    Route::get('/booking/allbookings', [App\Http\Controllers\AdminPagesController::class, 'booking_view_all'])->name('admin.viewbookings.all');
    Route::get('/booking/viewbooking/{id}', [App\Http\Controllers\AdminPagesController::class, 'viewbookingdelaits'])->name('admin.booking.viewbookingdelaits');
    Route::get('/booking/edit/{id}', [App\Http\Controllers\AdminPagesController::class, 'editbookingdelaits'])->name('admin.booking.editbookingdelaits');
    Route::post('/booking/update/', [App\Http\Controllers\AdminPagesController::class, 'updatebookingdelaits'])->name('admin.booking.updatebookingdelaits');
    Route::get('/booking/delete/{id}', [App\Http\Controllers\AdminPagesController::class, 'deletebookingdelaits'])->name('admin.booking.deletebookingdelaits');

    Route::get('/booking/subscription', [App\Http\Controllers\AdminPagesController::class, 'subscription_view'])->name('admin.booking.subscription');
    Route::get('/booking/subscription/approve/{id}', [App\Http\Controllers\AdminPagesController::class, 'subscription_approve'])->name('admin.booking.subscription.approve');
    Route::get('/booking/subscription/reject/{id}', [App\Http\Controllers\AdminPagesController::class, 'subscription_reject'])->name('admin.booking.subscription.reject');

    Route::get('/booking/entrance', [App\Http\Controllers\AdminPagesController::class, 'entrance_view'])->name('admin.booking.entrance');

    Route::get('/booking/transactions', [App\Http\Controllers\AdminPagesController::class, 'transaction_view'])->name('admin.booking.transaction');


    Route::get('/promocodes', [App\Http\Controllers\AdminPagesController::class, 'promocodesviews'])->name('admin.promocodes');
    Route::get('/promocodes/create', [App\Http\Controllers\AdminPagesController::class, 'promocodesviewcreate'])->name('admin.promocodes.create');
    Route::post('/promocodes/edit/add', [App\Http\Controllers\AdminPagesController::class, 'promocodeadd'])->name('admin.promocodes.add');
    Route::get('/promocodes/{id}', [App\Http\Controllers\AdminPagesController::class, 'promocodechange'])->name('admin.promocodes.change');
    Route::get('/promocodes/edit/{id}', [App\Http\Controllers\AdminPagesController::class, 'promocodeedit'])->name('admin.promocodes.edit');
    Route::post('/promocodes/edit/update', [App\Http\Controllers\AdminPagesController::class, 'promocodeupdate'])->name('admin.promocodes.update');
    Route::get('/promocodes/delete/{id}', [App\Http\Controllers\AdminPagesController::class, 'promocodedetele'])->name('admin.promocodes.delete');

    Route::get('/profile', [App\Http\Controllers\AdminPagesController::class, 'profileview'])->name('admin.profile');
    Route::post('/profile/update', [App\Http\Controllers\AdminPagesController::class, 'profileupdate'])->name('admin.profile.update');

    Route::get('/staffs', [App\Http\Controllers\AdminPagesController::class, 'staffsview'])->name('admin.staffs');
    Route::get('/staffs/edit/{id}', [App\Http\Controllers\AdminPagesController::class, 'staffseditview'])->name('admin.staffs.edit');
    Route::get('/staffs/delete/{id}', [App\Http\Controllers\AdminPagesController::class, 'staffsdelete'])->name('admin.staffs.delete');

     Route::get('/users', [App\Http\Controllers\AdminPagesController::class, 'usersview'])->name('admin.users');
    Route::get('/users/edit/{id}', [App\Http\Controllers\AdminPagesController::class, 'userseditview'])->name('admin.users.edit');
    Route::get('/users/delete/{id}', [App\Http\Controllers\AdminPagesController::class, 'usersdelete'])->name('admin.users.delete');



    Route::get('/settings', [App\Http\Controllers\AdminPagesController::class, 'settingsview'])->name('admin.settings');
    Route::post('/settings/update', [App\Http\Controllers\AdminPagesController::class, 'settingsupdate'])->name('admin.settings.update');
    Route::post('/settings/updateprices', [App\Http\Controllers\AdminPagesController::class, 'settingsupdateprices'])->name('admin.settings.update.prices');

    Route::get('/settings/price', [App\Http\Controllers\AdminPagesController::class, 'pricesettingsview'])->name('admin.settings.price');

    Route::get('/settings/email', [App\Http\Controllers\AdminPagesController::class, 'settingsemailContect'])->name('admin.settings.email');
    Route::post('/settings/email/update', [App\Http\Controllers\AdminPagesController::class, 'settingsemailContectupdate'])->name('admin.settings.email.update');



    Route::get('/help', [App\Http\Controllers\HomeController::class, 'helpview'])->name('admin.help');
});
