@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Add Exam Results
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{ route('exam.index')}}"><i class="fa fa-dashboard"></i>View Exams</a></li>
        <li class="active">Add Exams</li>
      </ol>
    </section>


    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Create</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
        @if ($errors->any())
                        <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                           <strong>Error! </strong>There were some errors with inputs. 
                         <ul>
                        @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul> 
                    </div>
                    
                @endif
       <form action="{{ route('exam.store')}}" method="post">
       @csrf
        <div class="row">
        <div class="col-md-6">
            <strong>Reg No.</strong>
            <select name="regNo" class="form-control select2" style="width: 100%;" style="border-radius:0px;">
                  <option selected="selected">-Select Student(RegNo.)-</option> 
                  @foreach($students as $student)
                           <option value="{{ $student->regNo }}">{{ $student->regNo }} </option>    
                             @endforeach
             </select>
            </div>
            
            <div class="col-md-6">
            <strong>Course Code</strong>
                <input type="text" name="courseCode" class="form-control" placeholder="Course Code">
            </div>
            <div class="col-md-6">
            <strong>Course Title </strong>
                <input name="courseTitle" type="text" class="form-control" placeholder="Course Title">
            </div>
            <div class="col-md-6">
            <strong>Marks </strong>
                <input name="marks" type="text" class="form-control" placeholder="Marks">
            </div>
            <div class="col-md-6">
            <strong>Academic Year</strong>
            <select name="examId" class="form-control" style="width: 100%;" style="border-radius:0px;">
                <option value="1">2018/2019</option> 
				<option value="1">2019/2020</option> 
				<option value="1">2020/2021</option> 
				<option value="1">2021/2022</option>
					<option value="1">2022/2023</option>
             </select>
            </div>
            </div>
            <div class="pull-left">
            <p>&nbsp; </p>
                <a class="btn btn-sm btn-danger" href="{{ route('exam.index')}}">Close</a>
            </div>
            <div class="pull-right">
            <p>&nbsp; </p>
                <button type="submit" onclick="return confirm('Add exam results?')" class="btn btn-sm btn-primary">Save</button>
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
