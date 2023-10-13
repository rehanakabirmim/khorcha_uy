<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\IncomeController;
use App\Http\Controllers\ExpenseController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Admin panel Controller
Route::get('/dashboard',[AdminController::class,'index']);

Route::get('/dashboard/user',[UserController::class,'index']);
Route::get('/dashboard/user/add',[UserController::class,'add']);
Route::get('/dashboard/user/edit',[UserController::class,'edit']);
Route::get('/dashboard/user/view',[UserController::class,'view']);
Route::post('/dashboard/user/insert',[UserController::class,'insert']);
Route::post('/dashboard/user/update',[UserController::class,'update']);
Route::post('/dashboard/user/softdelete',[UserController::class,'softdelete']);
Route::post('/dashboard/user/restore',[UserController::class,'restore']);
Route::post('/dashboard/user/delete',[UserController::class,'delete']);

//Income 
Route::get('/dashboard/income',[IncomeController::class,'index']);
Route::get('/dashboard/income/add',[IncomeController::class,'add']);
Route::get('/dashboard/income/edit',[IncomeController::class,'edit']);
Route::get('/dashboard/income/view',[IncomeController::class,'view']);
Route::post('/dashboard/income/insert',[IncomeController::class,'insert']);
Route::post('/dashboard/income/update',[IncomeController::class,'update']);
Route::post('/dashboard/income/softdelete',[IncomeController::class,'softdelete']);
Route::post('/dashboard/income/restore',[IncomeController::class,'restore']);
Route::post('/dashboard/income/delete',[IncomeController::class,'delete']);

//Expense
Route::get('/dashboard/expense',[ExpenseController::class,'index']);
Route::get('/dashboard/expense/add',[ExpenseController::class,'add']);
Route::get('/dashboard/expense/edit',[ExpenseController::class,'edit']);
Route::get('/dashboard/expense/view',[ExpenseController::class,'view']);
Route::post('/dashboard/expense/insert',[ExpenseController::class,'insert']);
Route::post('/dashboard/expense/update',[ExpenseController::class,'update']);
Route::post('/dashboard/expense/softdelete',[ExpenseController::class,'softdelete']);
Route::post('/dashboard/expense/restore',[ExpenseController::class,'restore']);
Route::post('/dashboard/expense/delete',[ExpenseController::class,'delete']);






require __DIR__.'/auth.php';
