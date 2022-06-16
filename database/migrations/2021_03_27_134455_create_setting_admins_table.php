<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSettingAdminsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('setting_admins', function (Blueprint $table) {
            $table->id();
            $table->integer('max_no_days');
            $table->integer('min_no_days');
            $table->string('booking_email_content', 10000);
            $table->time('closing_time');
            $table->dateTime('booking_start');
            $table->dateTime('booking_end');
            $table->float('daily_fee');
            $table->date('season_start');
            $table->date('season_end');
            $table->integer('status_daily_fee');
            $table->float('adult1_price');
            $table->float('adult2_price');
            $table->float('adult3_price');
            $table->float('adult4_price');
            // $table->float('adult1_1baby_price');
            // $table->float('adult1_2baby_price')->nullable();
            // $table->float('adult1_3baby_price')->nullable();
            // $table->float('adult2_1baby_price');
            // $table->float('adult2_2baby_price');
            // $table->float('adult3_1baby_price');
            // $table->float('adult4_1baby_price');
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
        Schema::dropIfExists('setting_admins');
    }
}
