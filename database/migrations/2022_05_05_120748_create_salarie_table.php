<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     *
     */
    public function up()
    {
        Schema::create('salarie', function (Blueprint $table) {
            $table->increments('id');

            $table->string('nom_prenom');
            $table->Date('date_de_naissance');
            $table->string('adresse');
            $table->string('email');
            $table->bigInteger('phone');
            $table->Integer('salaire');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     *
     */
    public function down()
    {
        Schema::dropIfExists('salarie');
    }
};
