<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('expense_categories', function (Blueprint $table) {
            $table->bigIncrements('expcat_id');
            $table->string('expcat_name',50)->unique();
            $table->string('expcat_remarks',200)->nullable();
            $table->integer('expcat_creator')->nullable();
            $table->integer('expcat_editor')->nullable();
            $table->string('expcat_slug',30)->nullable();
            $table->integer('expcat_status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('expense_categories');
    }
};
