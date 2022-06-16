
<br>
<span>{{ __('Payment with Paypal') }}:</span>
<center><div id="paypal-button"></div></center>


<script src="https://www.paypalobjects.com/api/checkout.js"></script>

<script>
paypal.Button.render({
    env: 'sandbox', // Or 'production'
    // Set up the payment:
    locale: 'it_IT',
    style: {
      size: 'medium',
      color: 'gold',
      shape: 'pill',
    },
    // 1. Add a payment callback
    payment: function(data, actions) {
      // 2. Make a request to your server
      return actions.request.post('/api/booking/confirm/paypal-create', {
        place_id: '{{ $maparray['booking']->place_id }}',
        user_fullname: '{{ $maparray['booking']->user_fullname }}',
        user_email: '{{ $maparray['booking']->user_email }}',
        user_phone: '{{ $maparray['booking']->user_phone }}',
        user_no_of_guest: '{{ $maparray['booking']->user_no_of_guest }}',
        user_no_of_babies: '{{ $maparray['booking']->user_no_of_babies }}',
        guest_surname1: '{{ $maparray['booking']->guest_surname1 }}',
        guest_surname2: '{{ $maparray['booking']->guest_surname2 }}',
        guest_surname3: '{{ $maparray['booking']->guest_surname3 }}',
        baby_surname1: '{{ $maparray['booking']->baby_surname1 }}',
        baby_surname2: '{{ $maparray['booking']->baby_surname2 }}',
        baby_surname3: '{{ $maparray['booking']->baby_surname3 }}',
        user_checkin: '{{ $maparray['booking']->user_checkin }}',
        user_checkout: '{{ $maparray['booking']->user_checkout }}',
        user_promo: '{{ $maparray['booking']->user_promo }}',
        user_booking_tracking_id: '{{ $maparray['booking']->user_booking_tracking_id }}',
        user_payment_type: '{{ $maparray['booking']->user_payment_type }}'

      })
        .then(function(res) {
          // 3. Return res.id from the response
          return res.id;
        });
    },
    // Execute the payment:
    // 1. Add an onAuthorize callback
    onAuthorize: function(data, actions) {
      // 2. Make a request to your server
      return actions.request.post('/api/booking/confirm/paypal-execute', {
        paymentID: data.paymentID,
        payerID:   data.payerID,
        place_id: '{{ $maparray['booking']->place_id }}',
        user_fullname: '{{ $maparray['booking']->user_fullname }}',
        user_email: '{{ $maparray['booking']->user_email }}',
        user_phone: '{{ $maparray['booking']->user_phone }}',
        user_no_of_guest: '{{ $maparray['booking']->user_no_of_guest }}',
        user_no_of_babies: '{{ $maparray['booking']->user_no_of_babies }}',
        guest_surname1: '{{ $maparray['booking']->guest_surname1 }}',
        guest_surname2: '{{ $maparray['booking']->guest_surname2 }}',
        guest_surname3: '{{ $maparray['booking']->guest_surname3 }}',
        baby_surname1: '{{ $maparray['booking']->baby_surname1 }}',
        baby_surname2: '{{ $maparray['booking']->baby_surname2 }}',
        baby_surname3: '{{ $maparray['booking']->baby_surname3 }}',
        user_checkin: '{{ $maparray['booking']->user_checkin }}',
        user_checkout: '{{ $maparray['booking']->user_checkout }}',
        user_promo: '{{ $maparray['booking']->user_promo }}',
        user_booking_tracking_id: '{{ $maparray['booking']->user_booking_tracking_id }}',
        user_payment_type: '{{ $maparray['booking']->user_payment_type }}'
      })
        .then(function(res) {
          // 3. Show the buyer a confirmation message.

          window.location = "/booking/payment/tracking/"+res.user_booking_tracking_id;
        });
    }
  }, '#paypal-button');
</script>
