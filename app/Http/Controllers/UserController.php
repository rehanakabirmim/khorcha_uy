<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use App\Models\User;
use Carbon\Carbon;
use Session;
use Auth;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function  __construct(){
        $this->middleware('auth');
    }
    public function index(){
        return view('admin.user.all');

    }

    public function add(){
        return view('admin.user.add');
    }
    public function edit(){
        return view('admin.user.edit');
    }

    public function view(){
        return view('admin.user.view');

    }
    public function insert(Request $request){
        $this->validate($request,[
          'name'=>'required|max:50',
          'email'=>'required|email|max:50|unique:users',
          'password'=>'required|min:8',
          'confirm_password'=>'required',
          'username'=>'required',
          'role'=>'required',
        ],[
          'name.required'=>'Please enter your name.',
          'email.required'=>'Please enter email address.',
          'password.required'=>'Please enter password.',
          'confirm_password.required'=>'Please enter confirm password.',
          'username.required'=>'Please enter username.',
          'role.required'=>'Please select user role.',
        ]);
  
        $slug='U'.uniqid('20');
  
        $insert=User::insertGetId([
          'name'=>$request['name'],
          'phone'=>$request['phone'],
          'email'=>$request['email'],
          'username'=>$request['username'],
          'password'=>Hash::make($request['password']),
          'role'=>$request['role'],
          'slug'=>$slug,
          'created_at'=>Carbon::now()->toDateTimeString(),
        ]);
  
        if($insert){
          Session::flash('success','Successfully completed user registration.');
          return redirect('dashboard/user/add');
        }else{
          Session::flash('error','Opps! operation failed.');
          return redirect('dashboard/user/add');
        }
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
