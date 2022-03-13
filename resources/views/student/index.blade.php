@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Students
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Student</li>
      </ol>
    </section>

    <!--- Main content -->
    <section class="content">
 <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">List of Students</h3>

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
            <a class="btn btn-sm btn-info pull-right" href="{{ route('student.create')}}"><i class="fa fa-plus"></i> Add Student</a>
            </div>
          <div class="box-body">
               
              @if ($message = Session::get('success'))
                <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <p>{{$message}}</p>
                </div>
              @endif
              <!--tbl -->
                <table id="example1" class="table table-bordered table-striped">
                <tfoot>
                <tr>
                 <th>No.</th>
                 <th>Reg No</th>
                 <th>Sur Name</th>
                 <th>Other Name</th>
                 <th>ID No.</th>
                 <th>Phone No.</th>
                 <th>Parent Phone</th>
                 <th>Year of Study</th>
                 <th>Actions</th>
                </tr>
                </tfoot>
                <tbody>
                @foreach($students as $student)
                <tr>
                 <td>{{ ++$i}}.</td>
                 <td>{{ $student->regNo}}</td>
                 <td>{{ $student->surName}}</td>
                 <td>{{ $student->otherName}}</td>
                 <td>{{ $student->idNo}}</td>
                 <td>{{ $student->phoneNo}}</td>
                 <td>{{ $student->parentPhone}}</td>
                 <td>{{ $student->yos}}</td>
                 <td>
                    <form action="{{ route('student.destroy', $student->id)}}" method="post">
                    <a class="btn btn-sm btn-success" href="{{ route('student.show', $student->id)}}">View</a>
                    <a class="btn btn-sm btn-warning" href="{{ route('student.edit', $student->id)}}">Edit</a>
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-sm btn-danger" onclick="return confirm('Delete Student?')" type="submit">Delete</button>
                    </form>
                 </td>
                </tr>
                </tbody>
                @endforeach
                <thead>
                <tr>
                 <th>No.</th>
                 <th>Reg No</th>
                 <th>Sur Name</th>
                 <th>Other Name</th>
                 <th>ID No.</th>
                 <th>Phone No.</th>
                 <th>Parent Phone</th>
                 <th>Year of Study</th>
                 <th>Actions</th>
                </tr>
                </thead>
                </table>
               
              <!--/tbl-->

        </div>
        <!-- /.box-body -->
      </div>
      </div>
      </div>
      <!-- /.box -->
      
      </section>
    <!-- /.content -->
@endsection
