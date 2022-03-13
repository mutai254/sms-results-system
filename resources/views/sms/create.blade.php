@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Create New Student
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{ route('student.index')}}"><i class="fa fa-dashboard"></i> Student</a></li>
        <li class="active">Add Student</li>
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
       <form action="{{ route('student.store')}}" method="post">
       @csrf
        <div class="row">
            <div class="col-md-6">
            <strong>Reg No. </strong>
                <input type="text" name="regNo" class="form-control" placeholder="Reg No.">
            </div>
            
            <div class="col-md-6">
            <strong>ID No. </strong>
                <input type="number" name="idNo" class="form-control" placeholder="ID No.">
            </div>
            <div class="col-md-6">
            <strong>Phone No. </strong>
                <input type="text" name="phoneNo" class="form-control" placeholder="Phone No.">
            </div>
            <div class="col-md-6">
            <strong>Email </strong>
                <input type="email" name="email" class="form-control" placeholder="email">
            </div>
            <div class="col-md-6">
            <strong>Sur Name </strong>
                <input type="text" name="surName" class="form-control" placeholder="Sur Name ">
            </div>
            <div class="col-md-6">
            <strong>Other Name </strong>
                <input type="text" name="otherName" class="form-control" placeholder="Other Name ">
            </div>
            
            
            <div class="col-md-6">
            <strong>Parent Phone No.</strong>
            <select name="parentPhone" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                  <option value="+254700795553">-Select Parent's Phone-</option>
                </select>
            </div>
             <div class="col-md-6">
            <strong>Year of Study</strong>
                <input type="number" name="yos" class="form-control" placeholder="Year of Study">
            </div>
            <div class="col-md-6">
            <strong>Parent Not there? Add new.</strong>
            <button type="button" class="form-control btn btn-sm btn-info" data-toggle="modal" data-target="#modal-default">
                <i class="fa fa-plus"></i> Add New Parent
              </button>
            </div>

            </div>
            <div class="pull-left">
            <p>&nbsp; </p>
                <a class="btn btn-sm btn-danger" href="{{ route('student.index')}}">Close</a>
            </div>
            <div class="pull-right">
            <p>&nbsp; </p>
                <button type="submit" onclick="return confirm('Add Student?')" class="btn btn-sm btn-primary">Save</button>
            </div>
        
        </form>  
        <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Add Parent</h4>
              </div>
              <div class="modal-body">
                <form action="{{ route('student.store')}}" method="post">
                @csrf
        <div class="row">
            <div class="col-md-6">
            <strong>Sur Name </strong>
                <input type="text" name="surName1" class="form-control" placeholder="Sur Name">
            </div>
            <div class="col-md-6">
            <strong>ID No. </strong>
                <input type="number" name="idNo1" class="form-control" placeholder="ID No.">
            </div>
            <div class="col-md-6">
            <strong>Other Name </strong>
                <input type="text" name="otherName1" class="form-control" placeholder="Other Name">
            </div>
            <div class="col-md-6">
            <strong>Phone No. </strong>
                <input type="text" name="phoneNo1" class="form-control" placeholder="Phone No.">
            </div>
            <div class="col-md-6">
            <strong>Email </strong>
                <input type="email" name="email1" class="form-control" placeholder="Email">
            </div>
            
            </div>
            <div class="pull-left">
            <p>&nbsp; </p>
                <a class="btn btn-sm btn-danger" data-dismiss="modal">Close</a>
            </div>
            <div class="pull-right">
            <p>&nbsp; </p>
                <button type="submit" class="btn btn-sm btn-primary">Save</button>
            </div>
        
        </form>
              </div>
              <div class="modal-footer">
                 
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

           
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
