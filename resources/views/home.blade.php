@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Home page
        <small>Summary Reports</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Dashboard</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
            <div class="row">
        <div class="col-md-4" style="border-right: 1px solid grey">
        <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">Requests Chart</h3>
            </div>
          <div class="box-body">
              <div id="donut-chart" style="height: 300px; padding: 0px; position: relative;"><canvas class="flot-base" width="752" height="300" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 752.5px; height: 300px;"></canvas><canvas class="flot-overlay" width="752" height="300" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 752.5px; height: 300px;"></canvas><span class="pieLabel" id="pieLabel0" style="position: absolute; top: 71px; left: 432.117px;"><div style="font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;">Series2<br>30%</div></span><span class="pieLabel" id="pieLabel1" style="position: absolute; top: 211px; left: 410.117px;"><div style="font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;">Series3<br>20%</div></span><span class="pieLabel" id="pieLabel2" style="position: absolute; top: 130px; left: 251.117px;"><div style="font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;">Series4<br>50%</div></span></div>
            </div>
        </div>
        <!-- ./col -->
        
        <div class="col-md-8">
          <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">SMSes Interactive Chart</h3>

              <div class="box-tools pull-right">
                Real time
                <div class="btn-group" id="realtime" data-toggle="btn-toggle">
                  <button type="button" class="btn btn-default btn-xs active" data-toggle="on">On</button>
                  <button type="button" class="btn btn-default btn-xs" data-toggle="off">Off</button>
                </div>
              </div>
            </div>
            <div class="box-body">
              <div id="interactive" style="height: 300px; padding: 0px; position: relative;"><canvas class="flot-base" width="1555" height="300" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 1555px; height: 300px;"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px;"><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 97px; top: 283px; left: 23px; text-align: center;">0</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 97px; top: 283px; left: 173px; text-align: center;">10</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 97px; top: 283px; left: 326px; text-align: center;">20</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 97px; top: 283px; left: 480px; text-align: center;">30</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 97px; top: 283px; left: 633px; text-align: center;">40</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 97px; top: 283px; left: 787px; text-align: center;">50</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 97px; top: 283px; left: 940px; text-align: center;">60</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 97px; top: 283px; left: 1094px; text-align: center;">70</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 97px; top: 283px; left: 1247px; text-align: center;">80</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 97px; top: 283px; left: 1400px; text-align: center;">90</div></div><div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px;"><div class="flot-tick-label tickLabel" style="position: absolute; top: 270px; left: 14px; text-align: right;">0</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 216px; left: 7px; text-align: right;">20</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 162px; left: 7px; text-align: right;">40</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 108px; left: 7px; text-align: right;">60</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 54px; left: 7px; text-align: right;">80</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 0px; left: 1px; text-align: right;">100</div></div></div><canvas class="flot-overlay" width="1555" height="300" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 1555px; height: 300px;"></canvas></div>
            </div>
        </div>
        <!-- ./col -->
      </div>
    <!--/row-->     
    </div>
     <!-- /.box-body -->
        <div class="box-footer">
          Summarized Reports
        </div>
        <!-- /.box-footer--->
        </div>
      <!-- /.box -->    
      </section>
    <!-- /.content -->
@endsection
