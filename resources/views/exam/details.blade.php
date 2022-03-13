@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        View Exam Details
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{ route('exam.index')}}"><i class="fa fa-dashboard"></i> View Exams</a></li>
        <li class="active">View Exam</li>
      </ol>
    </section>

    <!--- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Exam: </h3>

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
       
        <div class="row">
            <div class="col-md-6" style="padding:15px;">
            <strong>Reg No.: </strong>
                {{ $exams->regNo}}
            </div>
            
            <div class="col-md-6" style="padding:15px;">
            <strong>Course Code: </strong>
                {{ $exams->courseCode}}
            </div>
            <div class="col-md-6" style="padding:15px;">
            <strong>Course Title: </strong>
                {{ $exams->courseTitle}}
            </div>
            <div class="col-md-6" style="padding:15px;">
            <strong>Marks: </strong>
               {{ $exams->marks}}
            </div>
            <div class="col-md-6" style="padding:15px;">
            <strong>Academic Year: </strong>
                {{ $exams->acYear}}
            </div>
           
            </div>
            <div class="pull-left">
            <p>&nbsp; </p>
                <a class="btn btn-sm btn-danger" href="{{ route('exam.index')}}">Close</a>
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
