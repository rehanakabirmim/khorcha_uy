<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Expense;
use Carbon\Carbon;
use Session;
use Auth;

class ExpenseController extends Controller{
    public function __construct(){
      $this->middleware('auth');
    }

    public function index(){
      $all=Expense::where('expense_status',1)->orderBy('expense_date','DESC')->get();
      return view('admin.expense.main.all',compact('all'));
    }

    public function add(){
      return view('admin.expense.main.add');
    }

    public function edit($slug){
      $data=Expense::where('expense_status',1)->where('expense_slug',$slug)->firstOrFail();
      return view('admin.expense.main.edit',compact('data'));
    }

    public function view($slug){
      $data=Expense::where('expense_status',1)->where('expense_slug',$slug)->firstOrFail();
      return view('admin.expense.main.view',compact('data'));
    }

    public function insert(Request $request){
      $this->validate($request,[
        'title'=>'required|max:100',
        'category'=>'required',
        'date'=>'required',
        'amount'=>'required',
      ],[
        'title.required'=>'Please enter Expense title.',
        'category.required'=>'Please select Expense category.',
        'date.required'=>'Please select Expense date.',
        'amount.required'=>'Please enter Expense amount.',
      ]);

      $slug='I'.uniqid(20);
      $creator=Auth::user()->id;

      $insert=Expense::insert([
        'expense_title'=>$request['title'],
        'expcat_id'=>$request['category'],
        'expense_date'=>$request['date'],
        'expense_amount'=>$request['amount'],
        'expense_creator'=>$creator,
        'expense_slug'=>$slug,
        'created_at'=>Carbon::now()->toDateTimeString(),
      ]);

      if($insert){
        Session::flash('success','Successfully add Expense information.');
        return redirect('dashboard/expense/add');
      }else{
        Session::flash('error','Opps! operation failed.');
        return redirect('dashboard/expense/add');
      }
    }

    public function update(Request $request){
      $this->validate($request,[
        'title'=>'required|max:100',
        'category'=>'required',
        'date'=>'required',
        'amount'=>'required',
      ],[
        'title.required'=>'Please enter Expense title.',
        'category.required'=>'Please select Expense category.',
        'date.required'=>'Please select Expense date.',
        'amount.required'=>'Please enter Expense amount.',
      ]);

      $id=$request['id'];
      $slug=$request['slug'];
      $editor=Auth::user()->id;

      $update=Expense::where('expense_status',1)->where('expense_id',$id)->update([
        'expense_title'=>$request['title'],
        'expcat_id'=>$request['category'],
        'expense_date'=>$request['date'],
        'expense_amount'=>$request['amount'],
        'expense_editor'=>$editor,
        'updated_at'=>Carbon::now()->toDateTimeString(),
      ]);

      if($update){
        Session::flash('success','Successfully update Expense information.');
        return redirect('dashboard/expense/view/'.$slug);
      }else{
        Session::flash('error','Opps! operation failed.');
        return redirect('dashboard/expense/edit/'.$slug);
      }
    }

    public function softdelete(){
      $id=$_POST['modal_id'];
      $soft=Expense::where('expense_status',1)->where('expense_id',$id)->update([
        'expense_status'=>0,
        'updated_at'=>Carbon::now()->toDateTimeString(),
      ]);

      if($soft){
        Session::flash('success','Successfully delete Expense information.');
        return redirect('dashboard/expense');
      }else{
        Session::flash('error','Opps! operation failed.');
        return redirect('dashboard/expense');
      }
    }

    public function restore(){
      $id=$_POST['modal_id'];
      $restore=Expense::where('expense_status',0)->where('expense_id',$id)->update([
        'expense_status'=>1,
        'updated_at'=>Carbon::now()->toDateTimeString(),
      ]);

      if($restore){
        Session::flash('success','Successfully restore Expense information.');
        return redirect('dashboard/recycle/expense');
      }else{
        Session::flash('error','Opps! operation failed.');
        return redirect('dashboard/recycle/expense');
      }
    }

    public function delete(){
      $id=$_POST['modal_id'];
      $delete=Expense::where('expense_status',0)->where('expense_id',$id)->delete([]);

      if($delete){
        Session::flash('success','Successfully permanently delete Expense information.');
        return back();
      }else{
        Session::flash('error','Opps! operation failed.');
        return back();
      }
    }
}
