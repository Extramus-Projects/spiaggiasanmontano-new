@extends('layouts.adminmaster')

@section('section')
  <div class="container paddingTop20">
    <h1>{{ __('Spiaggia Paypal Transactions') }}</h1>
    <hr>
    <div class="row">
        <div class="col-sm-12">
            <table id="example_booking" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>{{ __('ID') }}</th>
                        <th>{{ __('Booking ID') }}</th>
                        <th>{{ __('Payid') }}</th>
                        <th>{{ __('Payer Name') }}</th>
                        <th>{{ __('Payer Email') }}</th>
                        <th>{{ __('Amount') }}</th>
                        <th>{{ __('Created At') }}</th>
                    </tr>
                </thead>
                <div id="preloader"></div>
                <tbody id="hidden_table_processing">
                  @foreach ($transactions as $transaction)
                    <tr>
                        <td>{{ $transaction->id }}</td>
                        <td>{{ $transaction->booking_id }}</td>
                        <td>{{ $transaction->payid }}</td>
                        <td>{{ $transaction->payer_name }}</td>
                        <td>{{ $transaction->payer_email }}</td>
                        <td>{{ $transaction->amount }}</td>
                        <td>@php
                          echo date('h:i A,<\b\r> Y-m-d', strtotime($transaction->created_at));
                        @endphp</td>
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
