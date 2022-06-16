<style>
/**
 * The CSS shown here will not be introduced in the Quickstart guide, but shows
 * how you can use CSS to style your Element's container.
 */
.StripeElement {
  box-sizing: border-box;

  height: 40px;

  padding: 10px 12px;

  border: 1px solid transparent;
  border-radius: 4px;
  background-color: white;

  box-shadow: 0 1px 3px 0 #e6ebf1;
  -webkit-transition: box-shadow 150ms ease;
  transition: box-shadow 150ms ease;
}

.StripeElement--focus {
  box-shadow: 0 1px 3px 0 #cfd7df;
}

.StripeElement--invalid {
  border-color: #fa755a;
}

.StripeElement--webkit-autofill {
  background-color: #fefde5 !important;
}
</style>

<form accept-charset="UTF-8" action="{{ route('user.createbooking.confirm.payment.stripe') }}" class="require-validation" data-cc-on-file="false" data-stripe-publishable-key="pk_test_51GzT6ABiRTh77KFmrcoCz5CtNEnnOb4dF35wDglTfnDFppPIyl4jVb3Gxq1EZyY35cDUIHjHHstRAenE5eP6LHqL00JHwRL52U" id="payment-form" method="post">
      {{ csrf_field() }}
      <div class="form-row" >
        <label for="card-element">
          Credit or debit card:
        </label>
        <div id="card-element" style="width:100%">
          <!-- A Stripe Element will be inserted here. -->
        </div>

        <!-- Used to display form errors. -->
        <div id="card-errors" role="alert"></div>
      </div>
      <input type="hidden" name="place_id" value="{{ $maparray['booking']->place_id }}">
      <input type="hidden"  name="user_fullname" value="{{ $maparray['booking']->user_fullname }}">
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
      <br>
      <input style="float:right;" id="btn_booking_data_pass" type="submit" value="Pay »" class="btn btn-success submit-button">


</form>
<script src="https://js.stripe.com/v3/"></script>
<script>
// Create a Stripe client.
var stripe = Stripe('pk_test_51GzT6ABiRTh77KFmrcoCz5CtNEnnOb4dF35wDglTfnDFppPIyl4jVb3Gxq1EZyY35cDUIHjHHstRAenE5eP6LHqL00JHwRL52U');

// Create an instance of Elements.
var elements = stripe.elements();

// Custom styling can be passed to options when creating an Element.
// (Note that this demo uses a wider set of styles than the guide below.)
var style = {
  base: {
    color: '#32325d',
    fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
    fontSmoothing: 'antialiased',
    fontSize: '16px',
    '::placeholder': {
      color: '#aab7c4'
    }
  },
  invalid: {
    color: '#fa755a',
    iconColor: '#fa755a'
  }
};

// Create an instance of the card Element.
var card = elements.create('card', {style: style});

// Add an instance of the card Element into the `card-element` <div>.
card.mount('#card-element');

// Handle real-time validation errors from the card Element.
card.on('change', function(event) {
  var displayError = document.getElementById('card-errors');
  if (event.error) {
    displayError.textContent = event.error.message;
  } else {
    displayError.textContent = '';
  }
});

// Handle form submission.
var form = document.getElementById('payment-form');
form.addEventListener('submit', function(event) {
  event.preventDefault();

  stripe.createToken(card).then(function(result) {
    if (result.error) {
      // Inform the user if there was an error.
      var errorElement = document.getElementById('card-errors');
      errorElement.textContent = result.error.message;
    } else {
      // Send the token to your server.
      stripeTokenHandler(result.token);
    }
  });
});

// Submit the form with the token ID.
function stripeTokenHandler(token) {
  // Insert the token ID into the form so it gets submitted to the server
  var form = document.getElementById('payment-form');
  var hiddenInput = document.createElement('input');
  hiddenInput.setAttribute('type', 'hidden');
  hiddenInput.setAttribute('name', 'stripeToken');
  hiddenInput.setAttribute('value', token.id);
  form.appendChild(hiddenInput);

  // Submit the form
  form.submit();
}
</script>
