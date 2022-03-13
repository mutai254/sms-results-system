@extends('layouts.admin')
@section('content')
<section class="content-header">
      <h1>
        My profile.&nbsp;
        <small>Personal details</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ route('home') }}"><i class="fa fa-dashboard"></i>Home</a></li>
        <li class="active">Profile</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
<!-- general form elements -->
          <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title">Update profile</h3>
            </div>
            <!-- /.box-header -->
             @if ($message = Session::get('success'))
                <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <p>{{$message}}</p>
                </div>
              @endif
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
            <!-- form start -->
            <form role="form" action="{{ route('profile') }}" method="POST">
                @csrf
                 @method('PUT')
                @foreach($users as $user)
              <div class="box-body">
              
              <div class="row">
                    <div class="col-md-6">
                <div class="form-group">
                  <img src="{{ asset('dist/img/face-0.jpg')}}" class="img-circle" alt="User Image">
                  </div>
                </div>
                
                <div class="col-md-6">
                <div class="form-group">
                  <label for="name">Name</label>
                  <input class="form-control" id="name" name="name" value="{{ $user->name }}" placeholder="" type="text" required>
                </div>
                </div>
                <div class="col-md-6">
                <div class="form-group">
                  <label for="email">Email</label>
                  <input class="form-control" id="email" name="email" value="{{ $user->email }}" placeholder="Your Email" type="email" required>
                </div>
                </div>
                
                <div class="col-md-6">
                <div class="form-group">
                <label for="password">Password</label>
                <input class="form-control" type="password" name="password">
                </div>
                </div>

                <div class="col-md-6">
                <div class="form-group">
                  <label for="email">Registered on</label>
                  <input class="form-control" id="created_at" name="created_at" value="{{ $user->created_at }}" placeholder="Registered on" type="text" disabled required>
                </div>
                </div>
                <div class="col-md-6">
                <div class="form-group">
                <label for="cpassword">Confirm Password</label>
                <input class="form-control" type="password" name="cpassword">
                </div>
                </div>
                </div>
                @endforeach
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-sm btn-primary pull-right">Update Profile</button>
              </div>
            </div>
          <!-- /.box -->
          </section>
@endsection