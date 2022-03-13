@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Student Details
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{ route('student.index')}}"><i class="fa fa-dashboard"></i> Student</a></li>
        <li class="active">Edit Student</li>
      </ol>
    </section>

    <!--- Main content -->
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
       <form action="{{ route('student.update', $student->id)}}" method="post">
       @csrf
       @method('PUT')
        <div class="row">
            <div class="col-md-6">
            <strong>Reg No. </strong>
                <input type="text" name="regNo" value="{{ $student->regNo}}" class="form-control" placeholder="Reg No.">
            </div>
            
            <div class="col-md-6">
            <strong>ID No. </strong>
                <input type="number" name="idNo" value="{{ $student->idNo}}" class="form-control" placeholder="ID No.">
            </div>
            <div class="col-md-6">
            <strong>Phone No. </strong>
                <input type="text" name="phoneNo" value="{{ $student->phoneNo}}" class="form-control" placeholder="Phone No.">
            </div>
            <div class="col-md-6">
            <strong>Email </strong>
                <input type="email" name="email" value="{{ $student->email}}" class="form-control" placeholder="email">
            </div>
            
            <div class="col-md-6">
            <strong>Sur Name </strong>
                <input type="text" name="surName" value="{{ $student->surName}}" class="form-control" placeholder="Sur Name ">
            </div>
            <div class="col-md-6">
            <strong>Other Name </strong>
                <input type="text" name="otherName" value="{{ $student->otherName}}" class="form-control" placeholder="Other Name ">
            </div>
            
            <div class="col-md-6">
            <strong>Parent's Phone</strong>
                <input type="text" name="parentPhone" value="{{ $student->parentPhone}}" class="form-control" placeholder="Parent's Phone">
            </div>
             <div class="col-md-6">
            <strong>Year of Study</strong>
                <input type="number" name="yos" value="{{ $student->yos}}" class="form-control" placeholder="Year of Study">
            </div>

            </div>
            <div class="pull-left">
            <p>&nbsp; </p>
                <a class="btn btn-sm btn-danger" href="{{ route('student.index')}}">Close</a>
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
