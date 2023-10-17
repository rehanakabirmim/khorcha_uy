<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\IncomeCategory;
use Carbon\Carbon;
use Session;
use Auth;

class IncomeCategoryController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }


    public function index(){
        $allData=IncomeCategory::where('incate_status',1)->orderBy('incate_id','DESC')->get();
        return view ('admin.income.category.all',compact('allData'));


    }

    public function add(){
        return view ('admin.income.category.add');


    }
    public function edit(){
        return view ('admin.income.category.edit');


    }

    public function view(){
        return view ('admin.income.category.view'); 

    }
    public function insert(Request $request){
        IncomeCategory::insert([

            'incate_name'=>$request->name,
            'incate_remarks'=>$request->remarks,
        ]);

        

    }
    public function update(){

    }
    public function softdelete(){

    }
    public function restore(){

    }
    public function delete(){
        
    }
}
