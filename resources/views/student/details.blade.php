@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        View Student Details
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{ route('student.index')}}"><i class="fa fa-dashboard"></i> Student</a></li>
        <li class="active">View Student</li>
      </ol>
    </section>

    <!--- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Student: </h3>

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
                        @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul> 
                    </div>
                    
                @endif
       
        <div class="row">
            <div class="col-md-6" style="padding:15px;">
            <strong>Reg No.: </strong>
                {{ $student->regNo}}
            </div>
            
            <div class="col-md-6" style="padding:15px;">
            <strong>ID No.: </strong>
                {{ $student->idNo}}
            </div>
            <div class="col-md-6" style="padding:15px;">
            <strong>Phone No.: </strong>
                {{ $student->phoneNo}}
            </div>
            <div class="col-md-6" style="padding:15px;">
            <strong>Email </strong>
               {{ $student->email}}
            </div>
            <div class="col-md-6" style="padding:15px;">
            <strong>Sur Name: </strong>
                {{ $student->surName}}
            </div>
            <div class="col-md-6" style="padding:15px;">
            <strong>Other Name </strong>
                {{ $student->otherName}}
            </div>
            
             <div class="col-md-6" style="padding:15px;">
            <strong>Year of Study</strong>
                {{ $student->yos}}
            </div>

            </div>
            <div class="pull-left">
            <p>&nbsp; </p>
                <a class="btn btn-sm btn-danger" href="{{ route('student.index')}}">Close</a>
            </div>
            
           
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
