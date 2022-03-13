@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        SMS
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">SMS Reports</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">List of SMS</h3>

          <div class="box-tools">
            <button type="button" class="btn btn-box-tool pull-right" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
            
            <div class="box box-default">
          <div class="box-header with-border">
            <h3 class="box-title"></h3>
            <a class="btn btn-sm btn-info pull-right" href="{{ route('sms.create')}}"><i class="fa fa-plus"></i> Add request</a>
          </div>
          <div class="box-body">
        <div class="box-body table-responsive no-padding">
              
              <!--tbl -->
                <table  id="example1" class="table table-bordered table-striped">
                <thead><tr>
                 <th>No.</th>
                 <th>Sender</th>
                 <th>shortCode</th>
                 <th>Created at</th>
                </tr></thead>
                <tbody>
                @foreach($requests as $request)
                <tr>
                 <td>{{ ++$i}}.</td>
                 <td>{{ $request->sender}}</td>
                 <td>{{ $request->shortCode}}</td>
                 <td>{{ $request->created_at}}</td>
                 <td>
                   
                    <a class="btn btn-sm btn-success" href="{{ route('sms.show', $request->id)}}">View</a>
                    <a class="btn btn-sm btn-warning" href="{{ route('sms.edit', $request->id)}}">Edit</a>
                    
                 </td>
                </tr></tbody>
                @endforeach
                <tfoot><tr>
                 <th>No.</th>
                 <th>Sender</th>
                 <th>shortCode</th>
                 <th>Created at</th>
                </tr></tfoot>
                </table>
                
               
              <!--/tbl-->
        </div>
        </div>
        <!-- /.box-body -->
        </div>
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->
      
      </section>
    <!-- /.content -->
    
@endsection
