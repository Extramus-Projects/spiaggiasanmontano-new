@extends('layouts.adminmaster')

@section('section')


  <div class="container paddingTop20">
    <div class="row">
      <div class="col-sm-8 offset-sm-1">
        <h3>Booking Details:</h3>
        <hr>
        <div class="card">
            <div class="card-body">
              <label><strong>Booking ID: </strong></label><label> &nbsp; {{ $Booking->id }}</label><br>
              <label><strong>Place ID: </strong></label><label> &nbsp; {{ $Booking->place_id }}</label><br>
              <label><strong>Payer Name: </strong></label><label> &nbsp; {{ $Booking->payer_name }}</label><br>
              <label><strong>Full Name: </strong></label><label> &nbsp; {{ $Booking->user_fullname }}</label><br>
              <label><strong>Email: </strong></label><label> &nbsp; {{ $Booking->user_email }}</label><br>
              <label><strong>Phone Number: </strong></label><label> &nbsp; {{ $Booking->user_phone }}</label><br>
              <label><strong>Number of Geust: </strong></label><label> &nbsp; {{ $Booking->user_no_of_guest }}</label><br>
              <label><strong>Number of Babies: </strong></label><label> &nbsp; {{ $Booking->user_no_of_babies }}</label><br>
              @isset($Booking->guest_surname1)
                <label><strong>{{ __('Guest') }} 1: </strong></label><label> &nbsp; {{ $Booking->guest_surname1 }}</label><br>
              @endisset
              @isset($Booking->guest_surname2)
                <label><strong>{{ __('Guest') }} 2: </strong></label><label> &nbsp; {{ $Booking->guest_surname2 }}</label><br>
              @endisset
              @isset($Booking->guest_surname3)
                <label><strong>{{ __('Guest') }} 3: </strong></label><label> &nbsp; {{ $Booking->guest_surname3 }}</label><br>
              @endisset

              <label><strong>Check-In: </strong></label><label> &nbsp; {{ $Booking->user_checkin }}</label><br>
              <label><strong>Check-Out: </strong></label><label> &nbsp; {{ $Booking->user_checkout }}</label><br>
              <label><strong>Payment Type: </strong></label><label> &nbsp; {{ $Booking->user_payment_type }}</label><br>
              @isset($Booking->user_promo)
                <label><strong>User Promo: </strong></label><label> &nbsp; {{ $Booking->user_promo }}</label><br>
              @endisset
              <label><strong>Tracking ID: </strong></label><label> &nbsp; {{ $Booking->user_booking_tracking_id }}</label><br>
              @isset($Booking->paid_ammount)
                <label><strong>Total Amount: </strong></label><label> &nbsp; {{ $Booking->paid_ammount }} €</label><br>

                @if ($Booking->user_payment_type!="Admin" && strtotime($Booking->created_at) < strtotime('2022-09-30'))
                  <label><strong>Paid Ammount: </strong></label><label> &nbsp; 500 €</label><br>
                  <label><strong>Remaining Ammount: </strong></label><label> &nbsp; {{ $Booking->paid_ammount-500}} €</label><br>
                @endif
              @endisset
              <label><strong>{{ __('Booked By ') }}: </strong></label><label> &nbsp; {{ $Booking->creator_name }}</label><br>
              <label><strong>{{ __('Created At ') }}: </strong></label><label> &nbsp; {{ date("h:i A, Y-m-d", strtotime($Booking->created_at)) }}</label><br>

            </div>
        </div>
      </div>
    </div>
  </div>

@endsection
