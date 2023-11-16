<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\IncomeController;
use App\Http\Controllers\IncomeCategoryController;
use App\Http\Controllers\ExpenseController;
use App\Http\Controllers\ExpenseCategoryController;

use Illuminate\Http\Request\ReportController;
use App\Http\Controllers\RecycleController ;
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
Route::get('/dashboard/user/edit/{slug}',[UserController::class,'edit']);
Route::get('/dashboard/user/view/{slug}',[UserController::class,'view']);
Route::post('/dashboard/user/insert',[UserController::class,'insert']);
Route::post('/dashboard/user/update',[UserController::class,'update']);
Route::post('/dashboard/user/softdelete',[UserController::class,'softdelete']);
Route::post('/dashboard/user/restore',[UserController::class,'restore']);
Route::post('/dashboard/user/delete',[UserController::class,'delete']);

//Income
Route::get('/dashboard/income',[IncomeController::class,'index']);
Route::get('/dashboard/income/add',[IncomeController::class,'add']);
Route::get('/dashboard/income/edit/{slug}',[IncomeController::class,'edit']);
Route::get('/dashboard/income/view/{slug}',[IncomeController::class,'view']);
Route::post('/dashboard/income/insert',[IncomeController::class,'insert']);
Route::post('/dashboard/income/update',[IncomeController::class,'update']);
Route::post('/dashboard/income/softdelete',[IncomeController::class,'softdelete']);
Route::post('/dashboard/income/restore',[IncomeController::class,'restore']);
Route::post('/dashboard/income/delete',[IncomeController::class,'delete']);
Route::get('/dashboard/income/pdf',[IncomeController::class,'pdf']);
Route::get('/dashboard/income/excel',[IncomeController::class,'excel']);

//incomecategory
Route::get('/dashboard/income/category',[IncomeCategoryController::class,'index']);
Route::get('/dashboard/income/category/add',[IncomeCategoryController::class,'add']);
Route::get('/dashboard/income/category/edit/{slug}',[IncomeCategoryController::class,'edit']);
Route::get('/dashboard/income/category/view/{slug}',[IncomeCategoryController::class,'view']);
Route::post('/dashboard/income/category/insert',[IncomeCategoryController::class,'insert']);
Route::post('/dashboard/income/category/update',[IncomeCategoryController::class,'update']);
// Route::get('/dashboard/income/category/softdelete/{id}',[IncomeCategoryController::class,'softdelete']);//without using modal softdelete
Route::post('/dashboard/income/category/softdelete',[IncomeCategoryController::class,'softdelete']);
Route::post('/dashboard/income/category/restore',[IncomeCategoryController::class,'restore']);
Route::post('/dashboard/income/category/delete',[IncomeCategoryController::class,'delete']);

//Expense
Route::get('/dashboard/expense',[ExpenseController::class,'index']);
Route::get('/dashboard/expense/add',[ExpenseController::class,'add']);
Route::get('/dashboard/expense/edit/{slug}',[ExpenseController::class,'edit']);
Route::get('/dashboard/expense/view/{slug}',[ExpenseController::class,'view']);
Route::post('/dashboard/expense/insert',[ExpenseController::class,'insert']);
Route::post('/dashboard/expense/update',[ExpenseController::class,'update']);
Route::post('/dashboard/expense/softdelete',[ExpenseController::class,'softdelete']);
Route::post('/dashboard/expense/restore',[ExpenseController::class,'restore']);
Route::post('/dashboard/expense/delete',[ExpenseController::class,'delete']);

//ExpenseCategory
Route::get('/dashboard/expense/category',[ExpenseCategoryController::class,'index']);
Route::get('/dashboard/expense/category/add',[ExpenseCategoryController::class,'add']);
Route::get('/dashboard/expense/category/edit/{slug}',[ExpenseCategoryController::class,'edit']);
Route::get('/dashboard/expense/category/view/{slug}',[ExpenseCategoryController::class,'view']);
Route::post('/dashboard/expense/category/insert',[ExpenseCategoryController::class,'insert']);
Route::post('/dashboard/expense/category/update',[ExpenseCategoryController::class,'update']);
Route::post('/dashboard/expense/category/softdelete',[ExpenseCategoryController::class,'softdelete']);
Route::post('/dashboard/expense/category/restore',[ExpenseCategoryController::class,'restore']);
Route::post('/dashboard/expense/category/delete',[ExpenseCategoryController::class,'delete']);

//Report
Route::get('/dashbaord/report',[ReportController::class,'index']);

//RecycleBin
Route::get('/dashbaord/recycle',[RecycleController::class,'index']);
Route::get('/dashbaord/recycle/user',[RecycleController::class,'user']);
Route::get('/dashbaord/recycle/income',[RecycleController::class,'income']);
Route::get('/dashbaord/recycle/income/category',[RecycleController::class,'income_category']);
Route::get('/dashboard/recycle/expense',[RecycleController::class,'expense']);
Route::get('/dashbaord/recycle/expense/category',[RecycleController::class,'expense_category']);









require __DIR__.'/auth.php';
