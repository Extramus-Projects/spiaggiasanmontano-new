@extends('layouts.adminmaster')

@section('section')
  <div class="container paddingTop20">
      <h3>Profile Setting</h3>
      <hr>
      <div>
        <div class="col-sm-5 offset-sm-2">
    			<div class="profile-sidebar">
    				<!-- SIDEBAR USERPIC -->
    				<div class="profile-userpic">
    					<img src="{{ asset('images/siteimages/profileimage.png') }}" class="img-responsive" alt="">
    				</div>
    				<!-- END SIDEBAR USERPIC -->
    				<!-- SIDEBAR USER TITLE -->
    				<div class="profile-usertitle">
    					<div class="profile-usertitle-name">
    						{{ Auth::user()->name }}
    					</div>
    					<div class="profile-usertitle-job">
    						Role: {{ Auth::user()->role }}
    					</div>
              <div class="profile-usertitle-text">
    						Email: {{ Auth::user()->email }}
    					</div>
              <div class="profile-usertitle-text">
    							Created at: {{ Auth::user()->created_at }}
    					</div>
    				</div>
    				<!-- END SIDEBAR USER TITLE -->
    				<!-- SIDEBAR BUTTONS -->
    				<div class="profile-userbuttons">
    					{{-- <button type="button" class="btn btn-success btn-sm">Follow</button> --}}
              @if (Auth::user()->role=="admin")
                <a href="/admin/register" type="button" class="btn btn-success btn-sm" >{{ __('Register Member') }}</a>
              @endif
              <a href="{{ route('admin.staffs.edit', Auth::user()->id) }}"" type="button" class="btn btn-danger btn-sm" >{{ __('Edit Profile') }}</a>
    					{{-- <button type="button" class="btn btn-danger btn-sm">{{ __('Edit Profile') }}</button> --}}
    				</div>
    				<!-- END SIDEBAR BUTTONS -->

    			</div>
    		</div>
      </div>
  </div>
  <div style="padding-top: 80px;"></div>
@endsection
