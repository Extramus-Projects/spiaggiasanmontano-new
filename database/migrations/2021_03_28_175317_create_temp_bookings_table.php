<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTempBookingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('temp_bookings', function (Blueprint $table) {
            $table->id();
            $table->string('client_ip');
            $table->string('place_id');
            $table->date('user_checkin');
            $table->string('cookie')->nullable();
            $table->dateTime('created');
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
        Schema::dropIfExists('temp_bookings');
    }
}
