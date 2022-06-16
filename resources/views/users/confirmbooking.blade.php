@extends('users.usermaster')
@section('section')
  <div class="container-fluid padding20">
    <div class="row">
      <div class="col-sm-1">
      </div>
      {{-- <div class="col-sm-4">
        @include('layouts.bookingplacedetails')
      </div> --}}
      <div class="col-sm-6 offset-sm-3">
        {{-- booking form --}}
        <h2>Spiaggia San Montano, {{ __('Booking Reservation') }}</h2>
        <hr>
        <div class="card">
          <div class="card-body">
              <h3>{{ __('Congratulations') }}  {{ $maparray['booking']->user_surname }}, {{ __('You have a successful booking') }}.
              </h3>


              <span><strong>{{ __('Tracking Number') }}: </strong></span><span><strong>{{ $maparray['booking']->user_booking_tracking_id }}</strong></span><br>
              <span>{{ __('Store your tracking number for future tracking, also check your email about the booking confirmation') }}</span><br><br>

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
                 {{--   <tr>
                    <td colspan="2"><span><strong>{{ __('Price paid now') }}: </strong></span></td>
                    <td colspan="2"><span>500 €</span></td>
                  </tr>--}}
                    {{-- <tr>
                    <td colspan="2"><span><strong>{{ __('Remaining price') }}: </strong></span></td>
                    <td colspan="2"><span>{{ $maparray['place']->price-500 }} €</span></td>
                  </tr>--}}

                  @isset($maparray['booking']->user_promo)
                    @if ($maparray['booking']->user_promo == "0")
                      <tr>
                        <td colspan="2"><span><strong>{{ __('Used Promo') }}: </strong></span></td>
                        <td colspan="2"><span>{{ __('Not found') }} / {{ __('Expired') }}</span></td>
                      </tr>
                    @else
                      @isset($maparray['discount'])
                        @if ($maparray['discount'] != "0")
                          <span><strong>{{ __('Discount') }}: </strong></span><span>{{ $maparray['discount'] }} {{ $maparray['place']->currency_type }}</span><br>
                        @endif
                      @endisset
                    @endif
                  @endisset
              </table>


              {{-- @isset($maparray['booking']->user_promo)
                @if ($maparray['booking']->user_promo == "0")
                  <span><strong>{{ __('Used Promo') }}: </strong></span><span>{{ __('Not found') }} / {{ __('Expired') }}</span><br>
                @else
                  <span><strong>{{ __('Used Promo') }}: </strong></span><span>{{ $maparray['booking']->user_promo }}</span><br>
                @endif
              @endisset
              @isset(	$maparray['booking']->paid_ammount)
                @if (	$maparray['booking']->user_payment_type == "Agreements")

                  <span><strong>{{ __('Due Paid Amount') }} : </strong></span><span>{{ $maparray['booking']->paid_ammount }}</span> <span>{{ $maparray['place']->currency_type }}</span><br>
                  @else
                    <span><strong>{{ __('Paid Amount') }} : </strong></span><span>{{ $maparray['booking']->paid_ammount }}</span> <span>{{ $maparray['place']->currency_type }}</span><br>
                @endif

              @endisset --}}
          </div>
        </div>
        <button type="button" id="btn_print_booking" class="btn btn-info" onclick="window.print();return false;">{{ __('Print Reservation') }}</button>
      </div>
      <div class="col-sm-1">
      </div>
    </div>
  </div>
@endsection
