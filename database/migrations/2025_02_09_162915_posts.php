<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
{
    Schema::create('posts', function (Blueprint $table) {
        $table->id(); 
        $table->foreignId('id')->constrained()->onDelete('cascade'); 
        $table->string('title'); 
        $table->text('body'); 
        $table->string('image')->nullable();
        $table->timestamps();
    });
}

public function down()
{
    Schema::drop('posts');
}
};
