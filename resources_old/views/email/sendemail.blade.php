@php
@endphp

<h1>Negombo Booking Confirmation</h1>
<hr>
  <div class="card">
    <div class="card-body">
        @php

          $all_content = str_replace("[name]", $maparray['booking']->user_fullname, $maparray['set_admin']->booking_email_content);
          $all_content = str_replace("[tracking_id]", $maparray['booking']->user_booking_tracking_id, $all_content);
          $all_content = str_replace("[booking_id]", $maparray['booking']->id, $all_content);
          $all_content = str_replace("[checkin_date]", $maparray['booking']->user_checkin, $all_content);
          $all_content = str_replace("[checkout_date]", $maparray['booking']->user_checkout, $all_content);

          $all_content = str_replace("[user_email]", $maparray['booking']->user_email, $all_content);
          $all_content = str_replace("[user_phone]", $maparray['booking']->user_phone, $all_content);
          $all_content = str_replace("[no_of_adults]", $maparray['booking']->user_no_of_guest, $all_content);
          $all_content = str_replace("[no_of_babies]", $maparray['booking']->user_no_of_babies, $all_content);
          $all_content = str_replace("[payment_type]", $maparray['booking']->user_payment_type, $all_content);
          $all_content = str_replace("[paid_amount]", 300, $all_content);
          $all_content = str_replace("[total_amount]", $maparray['booking']->paid_ammount, $all_content);
          $all_content = str_replace("[remaining_amount]", $maparray['booking']->paid_ammount-1000, $all_content);


          $all_content = str_replace("[place_id]", $maparray['place']->place_id, $all_content);
          $all_content = str_replace("[place_name]", $maparray['place']->place_name, $all_content);
          $all_content = str_replace("[map_name]", $maparray['place']->map_name, $all_content);
          $all_content = str_replace("[place_description]", $maparray['place']->place_description, $all_content);


          echo $all_content;
        @endphp

    </div>
  </div>

  {{-- @include('layouts.bookingplacedetails') --}}
