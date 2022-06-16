@extends('layouts.adminmaster')

@section('section')
  <div class="container paddingTop20">
    <h1>Spiaggia View Places</h1>
    <hr>
    <form action="{{ route('admin.place.submit') }}" method="POST">
      <label for="usr">Choose check-in and check-out date:</label>
      <div class="input-group" style="width: 80%;">
        @csrf
        <input type="date" class="form-control" onchange="startDatejsfunc()" id="fDate" name="startDate" style=" margin-right: 5px; width: 30%;" value="{{ $startDate }}"/>
        <input type="date" class="form-control" id="tDate" name="endDate" style="margin-right: 5px; width: 30%;" value="{{ $endDate }}" />
        <a href="{{ route('admin.place.viewplaces') }}" class="btn btn-info" style="margin-right: 5px; width: 8%;" onclick="clearDaterange()">Reset</a>
        <input type="submit" value="Submit" class="btn btn-primary" style="width: 10%;">
      </div>
  </form>
    <div class="row pt-2">
        <div class="col-sm-12">
            <table id="example" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>Place ID</th>
                        <th>Map Name</th>
                        <th>Place Name</th>
                        <th>Price 1</th>
                        <th>Price 2</th>
                        <th>Price 3</th>
                        <th>Price 4</th>

                        @if (Auth::user()->role == "admin")
                          <th>Stato</th>
                          <th>Action</th>
                        @endif
                        <th>Booking</th>
                    </tr>
                </thead>
                <div id="preloader"></div>
                <tbody id="hidden_table_processing">
                  @foreach ($places as $place)
                    <tr>
                        <td>{{ $place->place_id }}</td>
                        <td>{{ $place->map_name }}</td>
                        <td>{{ $place->place_name }}</td>
                        <td>{{ $place->price1 }} €</td>
                        <td>{{ $place->price2 }} €</td>
                        <td>{{ $place->price3 }} €</td>
                        <td>{{ $place->price4 }} €</td>

                        @if (Auth::user()->role == "admin")
                          <td>
                            @if($place->stato == 1)
                                <b>Riservato</b>
                            @elseif($place->stato == 3)
                                <b>Hotels</b>
                            @elseif($place->stato == -1)
                                <b>Disabilitato</b>
                            @elseif($place->stato == 0)
                                <b>Attivo</b>
                            @endif
                          </td>
                          <td> <a href="{{ route('admin.place.edit', $place->place_id) }}">Edit</a> /
                             @if ($place->status == -1)
                              <a href="{{ route('admin.place.changestatus', $place->place_id) }}">Activate</a>
                            @elseif ($place->status == 0 || $place->status == 1 || $place->status == 3)
                              <a href="{{ route('admin.place.changereserved', $place->place_id) }}">Riservato</a> /
                              <a href="{{ route('admin.place.changehotels', $place->place_id) }}">Hotels</a> /
                              <a href="{{ route('admin.place.changestatus', $place->place_id) }}">Deactivate</a>
                            @endif


                          </td>
                        @endif
                        <td>{{-- status print --}}

                          @if ($place->status==0 || $place->status == 1 || $place->status == 2)
                          <!-- Trigger the modal with a button -->
                          <a href="#" data-toggle="modal" data-target="#myModal{{ $place->place_id }}">Quick Book</a>

                          <!-- Modal -->
                          <div id="myModal{{ $place->place_id }}" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                              <!-- Modal content-->
                              <div class="modal-content">
                              <form method=POST action="{{ route('admin.place.quickbooking') }}">
                                <div class="modal-header">
                                  <h4 class="modal-title">Quick Book</h4>
                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                  @csrf
                                  <div class="form-group">
                                    <label for="usr">ID:</label>
                                    <input type="text" class="form-control" value="{{ $place->place_id }}" id="qBookingID" name="qID" readonly>
                                    <label for="usr">Full Name:</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->name }}" id="qBookingFullName" name="qFullName">
                                    <label for="usr">Number of Guests:</label>
                                    <input type="number" class="form-control" id="qBookingNumberOfGuests" name="qNumberOfGuests">
                                    <label for="usr">Number of Babies:</label>
                                    <input type="number" class="form-control" id="qBookingNumberOfBabies" name="qNumberOfBabies">
                                    <label for="usr">Check In: <label style="font-size: 70%; color: red;">Make sure to choose a checkin date if this field is empty!</label></label>
                                    <input type="text" class="form-control" value="{{ session()->get('startingRange') }}" id="qBookingStartDate" name="qStartDate" readonly>
                                    <label for="usr">Check Out: <label style="font-size: 70%; color: red;">Make sure to choose a checkin date if this field is empty!</label></label>
                                    <input type="text" class="form-control" value="{{ session()->get('endingRange') }}" id="qBookingEndDate" name="qEndDate" readonly><br>
                                    <label for="usr">Map Name:</label>
                                    <input type="text" class="form-control" value=" {{  $place->map_name }}" id="qBookingMapName" name="qMapName" readonly><br>
                                    <label for="usr">Booked By: </label>
                                    <input type="text" class="form-control" value=" {{  Auth::user()->name }}" id="qBookingCreatorName" name="qCreatorName" readonly><br>
                                  </div>
                                  {{-- <a href="{{ route('admin.place.quickbooking', $place->place_id,) }}">Book</a> --}}
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-default" data-dismiss="modal" style="color: red; border: 1px solid red;" >Close</button>
                                  <button type="submit" class="btn btn-default" style="color: green; border: 1px solid green;" type="submit">Book</button>
                                </div>
                              </div>
                            </form>

                            </div>
                          </div>

                          @endif

                          @if ($place->status==-1)
                            <p>Disabled</p>
                          @endif
                          @if ($place->status==2)
                            <p style="color:red;">Busy</p>
                          @endif
                        </td>
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

            <script>
                var today = new Date();
                var dd = today.getDate();
                var mm = today.getMonth() + 1; //January is 0!
                var yyyy = today.getFullYear();
                if (dd < 10) {
                  dd = '0' + dd
                }
                if (mm < 10) {
                  mm = '0' + mm
                }
                today = yyyy + '-' + mm + '-' + dd;
                document.getElementById("tDate").setAttribute("min", today);
                document.getElementById("fDate").setAttribute("min", today);
                function startDatejsfunc() {
                  var minToDate = document.getElementById("fDate").value;
                  document.getElementById("tDate").value = minToDate;
                  document.getElementById("tDate").setAttribute("min", minToDate);
                }

                function clearDaterange(){
                    // clear php date range with today dates
                    {{ session()->put('startingRange', date('Y-m-d')) }}
                    {{ session()->put('endingRange', date('Y-m-d')) }}
                }
          </script>

        </div>
    </div>
  </div>
@endsection
