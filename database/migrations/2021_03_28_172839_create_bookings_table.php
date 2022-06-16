<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBookingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bookings', function (Blueprint $table) {
            $table->id();
            $table->string('place_id');
            $table->foreign('place_id')->references('place_id')->on('places');
            $table->string('user_fullname');
            $table->string('payer_name');
            $table->string('user_surname');
            $table->string('user_email');
            $table->string('user_phone');
            $table->integer('user_no_of_guest');
            $table->integer('user_no_of_babies');
            $table->string('guest_surname1')->nullable();
            $table->string('guest_surname2')->nullable();
            $table->string('guest_surname3')->nullable();
            $table->string('baby_surname1')->nullable();
            $table->string('baby_surname2')->nullable();
            $table->string('baby_surname3')->nullable();
            $table->string('baby_surname4')->nullable();
            $table->date('user_checkin');
            $table->date('user_checkout');
            $table->smallInteger('is_approved')->default(0);
            $table->string('user_promo')->nullable();
            $table->string('user_payment_type');
            $table->string('user_booking_tracking_id');
            $table->float('paid_ammount')->nullable();

            $table->string('creator_name')->nullable()->default("user");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bookings');
    }
}
