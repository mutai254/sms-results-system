@extends('layouts.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit User Details
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{ route('user.index')}}"><i class="fa fa-dashboard"></i> View Users</a></li>
        <li class="active">Edit user</li>
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
                        @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul> 
                    </div>
                    
                @endif
       <form action="{{ route('user.update', $user->id)}}" method="post">
       @csrf
       @method('PUT')
        <div class="row">
            <div class="col-md-6">
            <strong>Name </strong>
                <input type="text" name="name" value="{{ $user->name}}" class="form-control" placeholder="Name">
            </div>
            
            <div class="col-md-6">
            <strong>Email Address</strong>
                <input type="email" name="email" value="{{ $user->email}}" class="form-control" placeholder="Email Address">
            </div>
            <div class="col-md-6">
            <strong>Password </strong>
                <input type="password" name="password" class="form-control" placeholder="Password">
            </div>
            <div class="col-md-6">
            <strong>Password </strong>
                <input type="password" name="cpassword" class="form-control" placeholder="Confirm Password">
            </div>
        
            </div>
            <div class="pull-left">
            <p>&nbsp; </p>
                <a class="btn btn-sm btn-danger" href="{{ route('user.index')}}">Close</a>
            </div>
            <div class="pull-right">
            <p>&nbsp; </p>
                <button type="submit" onclick="return confirm('Update User Details?')" class="btn btn-sm btn-primary">Save</button>
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
