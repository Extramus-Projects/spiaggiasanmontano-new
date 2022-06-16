@extends('users.usermaster')

@section('section')
  <div class="container-fluid padding20">
    <div class="row">
      <div class="col-sm-1">
      </div>
      <div class="col-sm-4">
        @include('layouts.bookingplacedetails')
      </div>
      <div class="col-sm-6">
        {{-- booking form --}}
        @include('layouts.bookingform')
      </div>
      <div class="col-sm-1">
      </div>
    </div>
  </div>
@endsection
