<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTempbookingCardsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tempbooking_cards', function (Blueprint $table) {
            $table->id();
            $table->string('place_id');
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
            $table->string('user_card_paymentid');
            $table->float('paid_ammount')->nullable();
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
        Schema::dropIfExists('tempbooking_cards');
    }
}
