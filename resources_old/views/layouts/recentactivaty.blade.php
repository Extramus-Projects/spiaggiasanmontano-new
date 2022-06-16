<div class="container paddingTop20">
  <h4>{{ __('Recent Booking Log') }}</h4>
  <table class="table table-hover" id="recentactivaty_tableStyle">
    <thead>
      <tr>
        <th>{{ __('Booking ID') }}</th>
        <th>{{ __('Place ID') }}</th>
        <th>{{ __('Name') }}</th>
        <th>{{ __('Email') }}</th>
        <th>{{ __('Check-In') }}</th>
        <th>{{ __('Created By') }}</th>
        <th>{{ __('Payment Type') }}</th>
        <th>{{ __('Created') }}</th>
      </tr>
    </thead>
    <tbody>
      @php
        $cont =0;
      @endphp
      @foreach($rec_act_bookings as $bookings)
        @if (!$cont)
          <tr class="table-success">
            <td>{{ $bookings->id }}</td>
            <td>{{ $bookings->place_id }}</td>
            <td>{{ $bookings->user_fullname }}</td>
            <td>{{ $bookings->user_email }}</td>
            <td>{{ $bookings->user_checkin }}</td>
            <td>{{ $bookings->creator_name }}</td>
            <td>{{ $bookings->user_payment_type }}</td>
            <td>{{ $bookings->time_elapsed_string($bookings->updated_at) }}</td>
          </tr>
        @else
          <tr>
            <td>{{ $bookings->id }}</td>
            <td>{{ $bookings->place_id }}</td>
            <td>{{ $bookings->user_fullname }}</td>
            <td>{{ $bookings->user_email }}</td>
            <td>{{ $bookings->user_checkin }}</td>
            <td>{{ $bookings->creator_name }}</td>
            <td>{{ $bookings->user_payment_type }}</td>
            <td>{{ $bookings->time_elapsed_string($bookings->updated_at) }}</td>
          </tr>
        @endif
        @php
          $cont++;
        @endphp
      @endforeach

    </tbody>
  </table>
</div>
