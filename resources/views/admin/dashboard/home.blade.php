@extends('layouts.admin')
@section('main-content')
<div class="row">
    <div class="col-md-12 welcome_part">
        <p><span>Welcome Mr.</span> {{Auth::user()->name}}</p>
    </div>
</div>
<div class="row mt-5">
  <div class="col-md-6">
      <div class="card mb-3">
        <div class="card-header">
          <div class="row">
              <div class="col-md-12 card_title_part">
                  <i class="fab fa-gg-circle"></i>
              </div>
          </div>
        </div>
        <div class="card-body"  style= "height:500px;" >
          <canvas id="myChart"></canvas>
        </div>
        <div class="card-footer">
          .
        </div>
      </div>
  </div>
  <div class="col-md-6">
      <div class="card mb-3">
        <div class="card-header">
          <div class="row">
              <div class="col-md-12 card_title_part">
                  <i class="fab fa-gg-circle"></i>
              </div>
          </div>
        </div>
        <div class="card-body" style= "height:500px; margin:0px auto;">
          <canvas id="myPieChart"></canvas>
        </div>
        <div class="card-footer">
          .
        </div>
      </div>
  </div>
</div>
@php
    $all_cate=App\Models\IncomeCategory::where('incate_status',1)->orderBy('incate_id','ASC')->get();
@endphp
<script>
const ctx = document.getElementById('myChart');

new Chart(ctx, {
type: 'bar',
data: {
  labels:
    [
      @php
      foreach($all_cate as $cate){
        echo "'".$cate->incate_name ."',";
      }
      @endphp
    ],

    datasets: [{
    label: 'Income Source',
    data: [
        @php
        foreach($all_cate as $cate){
            $cateID=$cate->incate_id;
            $cate_income=App\Models\Income::where('income_status',1)->where('incate_id', $cateID)->sum('income_amount');
            echo $cate_income.',';
        }
        @endphp
    ],


    backgroundColor: [
      'rgba(200, 99, 132, 0.2)',
      'rgba(154, 162, 235, 0.2)',
      'rgba(255, 205, 86, 0.2)',
      'rgba(75, 192, 192, 0.2)',
      'rgba(54, 162, 235, 0.2)',
      'rgba(153, 102, 255, 0.2)',
      'rgba(201, 203, 207, 0.2)'
    ],
    borderColor: [
      'rgb(255, 99, 132)',
      'rgb(255, 159, 64)',
      'rgb(255, 205, 86)',
      'rgb(75, 192, 192)',
      'rgb(54, 162, 235)',
      'rgb(153, 102, 255)',
      'rgb(201, 203, 207)'
    ],



    borderWidth: 1,

}]
},
options: {
  scales: {
    y: {
      beginAtZero: true
    }
  }
}
});
</script>

<script>
const ctx_pie = document.getElementById('myPieChart');

new Chart(ctx_pie, {
type: 'pie',
data: {
  labels:
    [
      @php
      foreach($all_cate as $cate){
        echo "'".$cate->incate_name ."',";
      }
      @endphp
    ],
  datasets: [{
    label: 'Income Source',
    data: [
    @php
      foreach($all_cate as $cate){
        $cateID=$cate->incate_id;
        $cate_income=App\Models\Income::where('income_status',1)->where('incate_id', $cateID)->sum('income_amount');
        echo $cate_income.',';
      }
    @endphp
    ],
    backgroundColor: [
      'rgb(200, 99, 132)',
      'rgb(154, 162, 235)',
      'rgb(255, 205, 86)'
    ],
    hoverOffset: 4
  }]
},
});
</script>
@endsection
