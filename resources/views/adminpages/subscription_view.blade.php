@extends('layouts.adminmaster')

@section('section')
  <div class="container paddingTop20">
    <h1>Spiaggia View {{ __('Agreements') }}</h1>
    <hr>
    <div class="row">
        <div class="col-sm-12">
            <table id="example_booking" class="table table-striped table-bordered" style="width:100%; font-size:10px;">
                <thead>
                    <tr>
                        <th>Booking ID</th>
                        <th>Place ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>No of Guest</th>
                        <th>Check-In</th>
                        <th>Check-Out</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <div id="preloader"></div>
                <tbody id="hidden_table_processing">
                  @foreach ($Bookings as $Booking)
                    <tr>
                        <td>{{ $Booking->id }}</td>
                        <td>{{ $Booking->place_id }}</td>
                        <td>{{ $Booking->user_fullname }}</td>
                        <td>{{ $Booking->user_email }}</td>
                        <td>{{ $Booking->user_phone }}</td>
                        <td>{{ $Booking->user_no_of_guest }}</td>
                        <td>{{ $Booking->user_checkin }}</td>
                        <td>{{ $Booking->user_checkout }}</td>
                        @if ($Booking->is_approved==0)
                          <td><a href="{{ route('admin.booking.subscription.approve', $Booking->id) }}">Approve</a></td>
                        @else
                          <td><a href="{{ route('admin.booking.subscription.reject', $Booking->id) }}">Reject</a></td>
                        @endif
                    </tr>
                  @endforeach
                </tbody>
            </table>

            <div id="loader_space"></div>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.min.js"></script>
            <script>
                paceOptions = {
                  ajax: true,
                  document: true,
                  eventLag: false
                };

                Pace.on('done', function() {
                  $('#preloader').delay(100).fadeOut(500);
                  document.getElementById("loader_space").style.display = "none";
                  $('#hidden_table_processing').fadeIn(200);
                });
            </script>

        </div>
    </div>
  </div>
@endsection
