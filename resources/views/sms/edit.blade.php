@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit SMS Details
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{ route('sms.index')}}"><i class="fa fa-dashboard"></i> SMS Reports</a></li>
        <li class="active">Edit SMS</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Edit</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
        @if ($errors->any())
                        <div class="alert alert-danger" role="alert">
                           <strong>Error! </strong>There were some errors with inputs. 
                         <ul>
                        @foreach($errors as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul> 
                    </div>
                    
                @endif
       <form action="{{ route('sms.update', $requests->id)}}" method="post">
       @csrf
       @method('PUT')
         <div class="row">
            <div class="col-md-6" style="padding:15px;">
            <strong>Sender: </strong>
                <input type="text" name="sender" class="form-control" value="{{ $requests->sender}}">
            </div>
            
            <div class="col-md-6" style="padding:15px;">
            <strong>Short Code.: </strong>
                <input type="text" name="sender" class="form-control" value="{{ $requests->shortCode}}">
            </div>
            <div class="col-md-6" style="padding:15px;">
            <strong>Time: </strong>
                <input type="text" name="sender" class="form-control" value="{{ $requests->created_at}}">
            </div>
            </div>
            
            <div class="pull-left">
            <p>&nbsp; </p>
                <a class="btn btn-sm btn-danger" href="{{ route('sms.index')}}">Close</a>
            </div>
            <div class="pull-right">
            <p>&nbsp; </p>
                <button type="submit" onclick="return confirm('Update Student Details?')" class="btn btn-sm btn-primary">Save</button>
            </div>
        
        </form>  
           
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          &nbsp;
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->
      </section>
    <!-- /.content -->
@endsection
