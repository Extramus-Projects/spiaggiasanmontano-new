@extends('layouts.adminmaster')

@section('section')
  <div class="container paddingTop20">
    <h1>Spiaggia Admin Panel</h1>
    <hr>

  @if (Auth::user()->role=="user")
       <div class="row">
           <div class="col-sm-12">
             <div class="card">
                <div class="card-header bg-primary">
                    <span class="dashboardcardstyle">{{ __('Quick Booking') }}</span>
                </div>
                <div class="card-body">
                 {{--     <center><button type="button" class="btn btn-success dashboardcardbodystyle2" data-toggle="modal" data-target="#myModal">{{ __('Book Now') }}</button></center>
                    @include('layouts.quickbookingmodal')  --}}
             </div>
           </div>
       </div>
    @else
         <div class="row">
      <div class="col-sm-4">
        <div class="card">
          <div class="card-header bg-primary">
            <span class="dashboardcardstyle">{{ __('Quick Booking') }}</span>
          </div>
          <div class="card-body">
            <center><button type="button" class="btn btn-success dashboardcardbodystyle2" data-toggle="modal" data-target="#myModal">{{ __('Book Now') }}</button></center>
            @include('layouts.quickbookingmodal')
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card">
          <div class="card-header bg-primary">
            <span class="dashboardcardstyle">Total Places</span>
          </div>
          <div class="card-body">
            <center><span class="dashboardcardbodystyle">{{ $numberofplace }}</span></center>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card">
          <div class="card-header bg-primary">
            <span class="dashboardcardstyle">Total Bookings</span>
          </div>
          <div class="card-body">
            <center><span class="dashboardcardbodystyle">{{ $numberofbookings }}</span></center>
          </div>
        </div>
      </div>
    </div>


    <div class="row">
      <div class="col-sm-12">
          @include('layouts.recentactivaty')
      </div>
      <div class="col-sm-2">

      </div>
    </div>


    {{-- second row of dashboard --}}
    <div class="row paddingTop20">
      <div class="col-sm-4">
        @if (Auth::user()->role== "admin")
          <div class="card">
            <div class="card-header bg-primary">
              <span class="dashboardcardstyle">Total Earnings</span>
            </div>
            <div class="card-body">

            <table style="width:100%" align="center" class="table-hover">
              <tr>
                <td><strong>From Entrance: </strong></td>
                <td>{{ $earningEntrance }} <i class="fa fa-eur" aria-hidden="true"></i></td>
              </tr>
              <tr>
                <td><strong>From {{ __('Agreements') }}: </strong></td>
                <td>{{ $earningAgr }} <i class="fa fa-eur" aria-hidden="true"></i></td>
              </tr>
              <tr>
                <td><strong>From Paypal: </strong></td>
                <td>{{ $earningPaypal }} <i class="fa fa-eur" aria-hidden="true"></i></td>
              </tr>
              <tr>
                <td><strong>From Stripe: </strong></td>
                <td> {{ $earningStripe }} <i class="fa fa-eur" aria-hidden="true"></i></td>
              </tr>
              <tr>
                <td><strong>From Credit Card: </strong></td>
                <td>{{ $earningcard }} <i class="fa fa-eur" aria-hidden="true"></i></td>
              </tr>
            </table>
              {{-- <center><span class="dashboardcardbodystyle">{{ $numberofbookings }}</span></center> --}}
            </div>
          </div>
        @else
          <div class="card">
            <div class="card-header bg-primary">
              <span class="dashboardcardstyle">Server Time</span>
            </div>
            <div class="card-body">
              <center><span>{{ date("d M, Y") }}</span></center>
              <center><span class="dashboardcardbodystyle">{{ date("h:i:s A") }}</span></center>
            </div>
          </div>
        @endif
      </div>
      <div class="col-sm-4">
        <div class="card">
          <div class="card-header bg-primary">
            <span class="dashboardcardstyle">{{ __('Total') }} {{ __('Agreements') }}</span>
          </div>
          <div class="card-body">
            <center><span class="dashboardcardbodystyle">{{ $numberofAggr }}</span></center>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card">
          <div class="card-header bg-primary">
            <span class="dashboardcardstyle">Total Entrance</span>
          </div>
          <div class="card-body">
            <center><span class="dashboardcardbodystyle">{{ $numberofEntrance }}</span></center>
          </div>
        </div>
      </div>
    </div>
    @endif

    {{-- second row of dashboard --}}
  </div>
@endsection
