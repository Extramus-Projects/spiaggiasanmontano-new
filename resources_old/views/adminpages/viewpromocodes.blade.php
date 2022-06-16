@extends('layouts.adminmaster')

@section('section')
  <div class="container paddingTop20">
    <h1>{{ __('Spiaggia Promo Codes') }}</h1>
    <hr>
    <div class="row">
        <div class="col-sm-12">
          <a href="{{ route('admin.promocodes.create') }}" class="btn btn-primary">{{ __('Create Promo') }}</a><br><br>
            <table id="example_booking" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>{{ __('ID') }}</th>
                        <th>{{ __('Map Name') }}</th>
                        <th>{{ __('Promo Code') }}</th>
                        <th>{{ __('Agreement Type') }}</th>
                        <th>{{ __('Validity') }}</th>
                        <th> Number of Adults </th>
                        <th> Number of Babies </th>
                        <th>{{ __('discount') }}</th>
                        <th>{{ __('Status') }}</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <div id="preloader"></div>
                <tbody id="hidden_table_processing">
                  {{-- process bar --}}
                  @isset($promocodes)
                    @foreach ($promocodes as $promocode)
                      <tr>
                        <td>{{ $promocode->id }}</td>
                        <td>{{ $promocode->map_name }}</td>
                        <td>{{ $promocode->promocode }}</td>
                        <td>{{ $promocode->promo_type }}</td>
                        @if ($promocode->numberofuse == "-1")
                          <td>{{ __('Unlimited') }}</td>
                        @else
                          <td>{{ $promocode->numberofuse }}</td>
                        @endif
                        <td>{{ $promocode->numberofadults }}</td>
                        <td>{{ $promocode->numberofbabies }}</td>
                        <td>{{ $promocode->discount }} %</td>
                        <td>
                          @if ($promocode->status==0)
                              {{ __('Inactive') }}
                          @else
                              {{ __('Active') }}
                          @endif
                        </td>
                        <td>
                          @if ($promocode->status==0)
                              <a href="{{ route('admin.promocodes.change', $promocode->id) }}">{{ _('Activate') }}</a>
                          @else
                            <a href="{{ route('admin.promocodes.change', $promocode->id) }}">{{ _('Disable') }}</a>
                          @endif
                          /
                          <a href="{{ route('admin.promocodes.edit', $promocode->id) }}">{{ _('Edit') }}</a>
                        </td>
                      </tr>
                    @endforeach

                  @endisset
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
