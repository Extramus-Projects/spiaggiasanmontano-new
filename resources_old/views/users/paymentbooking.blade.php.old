@extends('users.usermaster')
@section('section')
  <div class="container-fluid padding20">
    <div class="row">
      {{-- <div class="col-sm-1">
      </div> --}}
      {{-- <div class="col-sm-4">
        @include('layouts.bookingplacedetails')
      </div> --}}
      <div class="col-sm-6 offset-sm-3">
        {{-- booking form --}}
        <h2>{{ __('Booking Confirmation') }}</h2>
        <hr>
        <div class="card">
          <div class="card-body">
              <h3>{{ __('Hi') }} {{ $maparray['booking']->user_surname }}, {{ __('the place is available for booking') }}.
              </h3>
                <br>
                <table>
                  <tr>
                      <td colspan="2"><span><strong>{{ __('Place ID') }}: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->place_id }}</span></td>
                  </tr>
                  <tr>
                      <td><span><strong>{{ __('Check-In') }}: </strong></span></td>
                      <td><span>{{ date("d/m/Y", strtotime($maparray['booking']->user_checkin)) }}</span></td>
                      <td>&nbsp; &nbsp;<strong>{{ __('Check-Out') }}: </strong></td>
                      <td><span>{{ date("d/m/Y", strtotime($maparray['booking']->user_checkout)) }}</span></td>
                    </tr>
                  <tr>
                      <td colspan="2"><span><strong>{{ __('Full Name') }}: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->user_fullname }}</span></td>
                  </tr>
                  <tr>
                      <td colspan="2"><span><strong>{{ __('Payer Name') }}: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->payer_name }}</span></td>
                  </tr>
                  <tr>
                      <td colspan="2"><span><strong>{{ __('Email') }}: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->user_email }}</span></td>
                  </tr>
                  <tr>
                      <td colspan="2"><span><strong>{{ __('Phone') }}: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->user_phone }}</span></td>
                  </tr>
                  <tr>
                      <td colspan="2"><span><strong>{{ __('Number of adults') }}: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->user_no_of_guest }}</span></td>
                  </tr>
                  @isset($maparray['booking']->guest_surname1)
                    <tr>
                      <td colspan="2"><span><strong>{{ __('Adult') }} {{ __('Surname') }} 1: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->guest_surname1 }}</span></td>
                    </tr>
                  @endisset
                  @isset($maparray['booking']->guest_surname2)
                    <tr>
                      <td colspan="2"><span><strong>{{ __('Adult') }} {{ __('Surname') }} 2: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->guest_surname2 }}</span></td>
                    </tr>
                  @endisset
                  @isset($maparray['booking']->guest_surname3)
                    <tr>
                      <td colspan="2"><span><strong>{{ __('Adult') }} {{ __('Surname') }} 3: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->guest_surname3 }}</span></td>
                    </tr>
                  @endisset


                    <tr>
                      <td colspan="2"><span><strong>{{ __('Number of babies') }}: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->user_no_of_babies }}</span></td>
                    </tr>

                    @isset($maparray['booking']->baby_surname1)
                      <tr>
                        <td colspan="2"><span><strong>{{ __('Baby') }} {{ __('Surname') }} 1: </strong></span></td>
                        <td colspan="2"><span>{{ $maparray['booking']->baby_surname1 }}</span></td>
                      </tr>
                    @endisset
                    @isset($maparray['booking']->baby_surname2)
                      <tr>
                        <td colspan="2"><span><strong>{{ __('Baby') }} {{ __('Surname') }} 2: </strong></span></td>
                        <td colspan="2"><span>{{ $maparray['booking']->baby_surname2 }}</span></td>
                      </tr>
                    @endisset
                    @isset($maparray['booking']->baby_surname3)
                      <tr>
                        <td colspan="2"><span><strong>{{ __('Baby') }} {{ __('Surname') }} 3: </strong></span></td>
                        <td colspan="2"><span>{{ $maparray['booking']->baby_surname3 }}</span></td>
                      </tr>
                    @endisset
                    @isset($maparray['booking']->baby_surname4)
                      <tr>
                        <td colspan="2"><span><strong>{{ __('Baby') }} {{ __('Surname') }} 4: </strong></span></td>
                        <td colspan="2"><span>{{ $maparray['booking']->baby_surname4 }}</span></td>
                      </tr>
                    @endisset

                    <tr>
                      <td colspan="2"><span><strong>{{ __('Payment Type') }}: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['booking']->user_payment_type }}</span></td>
                    </tr>

                    <tr>
                      <td colspan="2"><span><strong>{{ __('Total Price') }}: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['place']->price }} €</span></td>
                    </tr>
                    {{-- <tr>
                      <td colspan="2"><span><strong>{{ __('Price paid now') }}: </strong></span></td>
                      <td colspan="2"><span>300 €</span></td>
                    </tr>
                    <tr>
                      <td colspan="2"><span><strong>{{ __('Remaining price') }}: </strong></span></td>
                      <td colspan="2"><span>{{ $maparray['place']->price-1000 }} €</span></td>
                    </tr> --}}
                </table>


              @isset($maparray['booking']->user_promo)
                @if ($maparray['booking']->user_promo == "0")
                  <span><strong>{{ __('Used Promo') }}: </strong></span><span>{{ __('Not found') }} / {{ __('Expired') }}</span><br>
                @else
                  <span><strong>{{ __('Used Promo') }}: </strong></span><span>{{ $maparray['booking']->user_promo }}</span><br>
                  @isset($maparray['discount'])
                    @if ($maparray['discount'] != "0")
                      <span><strong>{{ __('Discount') }}: </strong></span><span>{{ $maparray['discount'] }} {{ $maparray['place']->currency_type }}</span><br>
                    @endif
                  @endisset
                @endif
              @endisset
                {{-- for datapass to next page --}}
              {{-- payment button will depend on payment type --}}
              @if ($maparray['booking']->user_payment_type=="Paypal")
                @include('layouts.payment.paypalformat')
                <span><strong>{{ __('Payment Status') }}:</strong></span> <span id="_payment_status">{{ __('Pending') }}</span>
              @elseif ($maparray['booking']->user_payment_type=="Agreements")
                <span><strong>{{ __('Payment Status') }}:</strong></span> <span id="_payment_status">{{ __('On hold') }}</span>
                <br>
                @include('layouts.payment.bookingdatapassform')
              @elseif ($maparray['booking']->user_payment_type=="Credit Card")
                {{-- <span><strong>{{ __('Payment Status') }}:</strong></span> <span id="_payment_status">{{ __('On hold') }}</span> --}}
                <br>
                @include('layouts.payment.creditcardformat')

              @elseif ($maparray['booking']->user_payment_type=="Entrance")
                <span><strong>{{ __('Entranced by') }}:</strong>:</span> <span id="_payment_status">{{ Auth::user()->name }}</span>
                <br>
                @include('layouts.payment.bookingdatapassform')
              @elseif ($maparray['booking']->user_payment_type=="Admin")
                <span><strong>{{ __('Booked by') }}:</strong>:</span> <span id="_payment_status">{{ Auth::user()->name }}</span>
                <br>
                @include('layouts.payment.bookingdatapassform')
              @elseif ($maparray['booking']->user_payment_type=="Stripe")
                @include('layouts.payment.stripeformat')
              @endif

          </div>
        </div>
      </div>
      <div class="col-sm-1">
      </div>
    </div>
  </div>
@endsection
