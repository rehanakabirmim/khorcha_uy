@extends('layouts.admin')

@section('main-content')

@php

$all=App\Models\Income::where('income_status',0)->orderBy('income_id','DESC')->get();
@endphp

<div class="row"> <div class="col-md-12"> <div class="card mb-3">
    <div class="card-header">
    <div class="row">
    <div class="col-md-8 card_title_part">
        <i class="fab fa-gg-circle"></i> Recycle Income Information
        </div>
        <div class="col-md-4 card_button_part">
            <a href="{{url('dashboard/recycle')}}" class="btn btn-sm btn-dark"><i
            class="fas fa-th"></i>Recycle Bin</a>
        </div>
        </div>
        </div>
        <div class="card-body">
            <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                @if (Session::has('success'))
                <div class="alert alert-success alert_success" role="alert">
                <strong>Success!</strong> {{ Session::get('success') }}
                </div>
                @endif
                @if (Session::has('error'))
                <div class="alert alert-danger alert_error" role="alert">
                <strong>Opps!</strong> {{ Session::get('error') }}
            </div>
            @endif
            </div>
            <div class="col-md-2"></div>
            </div>
            <table id="alltableinfo" class="table table-bordered table-striped table-hover custom_table">
            <thead class="table-dark">
                <tr>
                <th>Date</th>
                <th>Title</th>
                <th>Category</th>
                <th>Amount</th>
                <th>Manage</th>
                </tr>
            </thead>
            <tbody>
                @foreach($all as $data)
                <tr>
                    <td>{{date('d-m-Y',strtotime($data->income_date))}}</td>
                    <td>{{$data->income_title}}</td>
                    <td>{{$data->categoryInfo->incate_name}}</td>
                    <td>{{number_format($data->income_amount,2)}}</td>
                    <td>
                        <a href="#" id="restore" data-bs-toggle="modal" data-bs-target="#restoreModal"
                            data-id="{{$data->income_id}}"><i
                                class="fas fa-recycle fs-5 text-success fw-bold mx-1"></i></a>
                        <a href="#" id="delete" data-bs-toggle="modal" data-bs-target="#deleteModal"
                            data-id="{{$data->income_id}}"><i class="fas fa-trash fs-5 text-danger fw-bold"></i></a>
                    </td>
                </tr>
                @endforeach
            </tbody>
            </table>
        </div>
        <div class="card-footer">
            <div class="btn-group" role="group" aria-label="Button group">
                <button type="button" class="btn btn-sm btn-dark">Print</button>
                <button type="button" class="btn btn-sm btn-secondary">PDF</button>
                <button type="button" class="btn btn-sm btn-dark">Excel</button>
            </div>
        </div>
    </div>
</div>
</div>

<!-- recycle modal   -->
<div class="modal fade" id="restoreModal" tabindex="-1" aria-labelledby="restoreModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="{{url('dashboard/income/restore')}}" method="post">
            @csrf
            <div class="modal-content modal_content">
                <div class="modal-header modal_header">
                    <h5 class="modal-title modal_title" id="restoreModalLabel"><i class="fab fa-gg-circle"></i> Confirm
                        Message</h5>

                </div>
                <div class="modal-body modal_body">
                    Are you want to sure restore data?
                    <input type="hidden" name="modal_id" id="modal_id" />
                </div>
                <div class="modal-footer modal_footer">

                    <button type="submit" class="btn btn-success">Confirm</button>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </form>
    </div>
</div>


<!-- delete modal  -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="{{url('dashboard/income/delete')}}" method="post">
            @csrf
            <div class="modal-content modal_content">
                <div class="modal-header modal_header">
                    <h5 class="modal-title modal_title" id="deleteModalLabel"><i class="fab fa-gg-circle"></i> Confirm
                        Message</h5>

                </div>
                <div class="modal-body modal_body">
                    Are you want to sure permanently delete data?
                    <input type="hidden" name="modal_id" id="modal_id" />
                </div>
                <div class="modal-footer modal_footer">

                    <button type="submit" class="btn btn-success">Confirm</button>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </form>
    </div>
</div>

@endsection