<html>
<body>
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
        <div class="box-body table-responsive no-padding">
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
                 <th>Sur Name</th>
                 <th>Other Name</th>
                 <th>ID No.</th>
                 <th>Phone No.</th>
                 <th>Parent Phone</th>
                 <th>Year of Study</th>
                
                </tr>
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
                 
                </tr>
                @endforeach
                </table>
               
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
</body>
</html>
