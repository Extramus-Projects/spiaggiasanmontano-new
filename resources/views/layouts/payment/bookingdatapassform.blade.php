<form action="{{ route('user.createbooking.confirm.payment') }}" method="POST">
      {{ csrf_field() }}
      <input type="hidden" name="place_id" value="{{ $maparray['booking']->place_id }}">
      <input type="hidden"  name="user_fullname" value="{{ $maparray['booking']->user_fullname }}">
      <input type="hidden" name="payer_name" value="{{ $maparray['booking']->payer_name }}">
      <input type="hidden" name="user_surname" value="{{ $maparray['booking']->user_surname }}">
      <input type="hidden" name="user_email" value="{{ $maparray['booking']->user_email }}">
      <input type="hidden" name="user_phone" value="{{ $maparray['booking']->user_phone }}">
      <input type="hidden"  name="user_no_of_guest" value="{{ $maparray['booking']->user_no_of_guest }}">
      <input type="hidden"  name="user_no_of_babies" value="{{ $maparray['booking']->user_no_of_babies }}">

      <input type="hidden" name="guest_surname1" value="{{ $maparray['booking']->guest_surname1 }}">
      <input type="hidden" name="guest_surname2" value="{{ $maparray['booking']->guest_surname2 }}">
      <input type="hidden"  name="guest_surname3" value="{{ $maparray['booking']->guest_surname3 }}">

      <input type="hidden" name="baby_surname1" value="{{ $maparray['booking']->baby_surname1 }}">
      <input type="hidden" name="baby_surname2" value="{{ $maparray['booking']->baby_surname2 }}">
      <input type="hidden"  name="baby_surname3" value="{{ $maparray['booking']->baby_surname3 }}">

      <input type="hidden" name="user_checkin" value="{{ $maparray['booking']->user_checkin }}">
      <input type="hidden" name="user_checkout" value="{{ $maparray['booking']->user_checkout }}">
      <input type="hidden"  name="user_promo" value="{{ $maparray['booking']->user_promo }}">
      <input type="hidden" name="user_payment_type" value="{{ $maparray['booking']->user_payment_type }}">
      @if ($maparray['booking']->user_payment_type == "Paypal")
        <input type="hidden"  name="paid_ammount" id="paid_ammount">
        <br>
        <input style="float:right;" id="btn_booking_data_pass" type="submit" value="{{ __('Continue') }}" class="btn btn-info" disabled>
      @else
        <input type="hidden"  name="paid_ammount" id="paid_ammount" value="{{ $maparray['booking']->paid_ammount }}">
        <br>
        <input style="float:right;" id="btn_booking_data_pass" type="submit" value="{{ __('Continue') }}" class="btn btn-info">
      @endif


</form>
