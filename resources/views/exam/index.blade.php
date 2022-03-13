@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Exam
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">View Exams</li>
      </ol>
    </section>

    <!--- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">List of Exam</h3>

          <div class="box-tools">
            <button type="button" class="btn btn-box-tool pull-right" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body table-responsive no-padding">
               <div class="row">
               <div class="col-sm-10"></div>
               <div class="col-sm-2">
                 <a class="btn btn-sm btn-info" href="{{ route('exam.create')}}"><i class="fa fa-plus"></i> Add Exam</a>
              </div>
              </div>
              @if ($message = Session::get('success'))
                <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <p>{{$message}}</p>
                </div>
              @endif
              <!--tbl -->
                <table class="table table-hover table-sm">
                <tr>
                 <th>No.</th>
                 <th>Reg No</th>
                 <th>Course Code</th>
                 <th>Course Title</th>
                 <td>Marks</td>
                 <th>Academic Year</th>
                 <th>Actions</th>
                </tr>
                @foreach($exams as $exam)
                <tr>
                 <td>{{ ++$i}}.</td>
                 <td>{{ $exam->regNo}}</td>
                 <td><a href="{{route('reports.exams.unit')}}?id={{$exam->courseCode}}">{{ $exam->courseCode}}</a></td>
                 <td>{{ $exam->courseTitle}}</td>
                 <td>{{ $exam->marks}}</td>
                 <td>{{ $exam->acYear}}</td>
                 <td>
                    <form action="{{ route('exam.destroy', $exam->id)}}" method="post">
                    <a class="btn btn-sm btn-success" href="{{ route('exam.show', $exam->id)}}">View</a>
                    <a class="btn btn-sm btn-warning" href="{{ route('exam.edit', $exam->id)}}">Edit</a>
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-sm btn-danger" onclick="return confirm('Delete Student?')" type="submit">Delete</button>
                    </form>
                 </td>
                </tr>
                @endforeach
                </table>
                {!! $exams->links() !!}
              <!--/tbl-->

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
