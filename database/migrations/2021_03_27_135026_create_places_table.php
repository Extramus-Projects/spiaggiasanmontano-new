<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlacesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('places', function (Blueprint $table) {
            $table->id();
            $table->string('place_id')->unique();
            $table->string('place_name');
            $table->string('map_name');
            $table->integer('co_xl');
            $table->integer('co_yl');
            $table->integer('co_xs')->nullable();
            $table->integer('co_ys')->nullable();
            $table->text('place_description')->nullable();
            $table->smallInteger('status')->default(0);
            $table->double('price1');
            $table->double('price2');
            $table->double('price3');
            $table->double('price4');
            $table->string('currency_type');
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
        Schema::dropIfExists('places');
    }
}
