@extends('layouts.adminmaster')
@section('section')
  <div class="container paddingTop20">
    <h1>Spiaggia Add Place</h1>
    <hr>
      @include('layouts.errormessages')
      <div class="row">
          <div class="col-sm-2">
              <label>Select Map:</label>
              <select id="picDD">
                @php
                  $idnd = 0;
                @endphp
                @foreach ($map_coods as $map)
                  @if (!$idnd)
                    <option value="{{ $idnd }}" selected>{{ $map->map_name }}</option>
                  @else
                    <option value="{{ $idnd }}">{{ $map->map_name }}</option>
                  @endif
                  @php
                    $idnd += 1;
                  @endphp
                @endforeach
                  {{-- <option value="1">Spiaggia</option>
                  <option value="2">Zona Termale</option>
                  <option value="3">Balze basse</option>
                  <option value="4">Zona Mare</option> --}}
              </select>
              <p id="xycoordinates"></p>
          </div>
          <div class="col-sm-10">
              <i class="fa fa-umbrella" id="marker"></i>
              <img onclick="cnvs_getCoordinates(event)" id="mapimgcntrl" src="{{ asset('images/maps/Sectors.png') }}" height="600px" width="900px" />
          </div>
      </div>
  </div>
  <hr>
  <div class="container">
      <form action="{{ route('admin.place.store') }}" method="POST">
          {{ csrf_field() }}
          <div class="row">
              <div class="col-sm-5">
                  <label>Coordinates Large(H:600 x W:800)(X,Y):</label><br>
                  <input id="iptcor1" step="0.0000001" type="number" name="co_xl" required>
                  <input id="iptcor2" step="0.0000001" type="number" name="co_yl" required><br>

                  <label>For small screen select from map:</label><br>
                  {{-- <i class="fa fa-umbrella" id="markerS"></i> --}}
                  <img onclick="cnvs_getCoordinates_small(event)" id="mapimgcntrlS" src="{{ asset('images/maps/Sectors.png') }}" height="350px" width="340px" />
                  <br>
                  <br>
                  <label>Coordinates Small(H:350 x W:340)(X,Y):</label><br>
                  <input id="iptcor1S" step="0.0000001" type="number" name="co_xs" required>
                  <input id="iptcor2S" step="0.0000001" type="number" name="co_ys" required><br>
              </div>
              <div class="col-sm-5">
                  <label>Map Name:</label>
                  <select name="map_name" class="form-control" id="map_names">
                      @foreach ($map_coods as $map)
                          <option value="{{ $map->map_name }}">{{ $map->map_name }}</option>
                      @endforeach
                  </select>
                  <br>
                  <label>Place ID:</label>
                  <input class="form-control" type="text" name="place_id" required><br>
                  <label>Place Name:</label>
                  <input class="form-control" type="text" name="place_name" required><br>
                  {{-- <label>Place Description:</label> --}}
                  {{-- <textarea class="form-control" name="place_description"></textarea> --}}
                  <br>
                  <label>Price 1 Person(monthly):</label>
                  <input class="form-control" type="number" name="place_price1" required><br>
                  <label>Price 2 Person(monthly):</label>
                  <input class="form-control" type="number" name="place_price2" required><br>
                  <label>Price 3 Person(monthly):</label>
                  <input class="form-control" type="number" name="place_price3" required><br>
                  <label>Price 4 Person(monthly):</label>
                  <input class="form-control" type="number" name="place_price4" required><br>
                  <label>Currency:</label>
                  <select class="form-control" name="currency_type" id="currency_type">
                    <option value="EUR" selected>EUR</option>
                    <option value="USD">USD</option>
                  </select><br>
                  <input type="submit" class="btn btn-primary" id="btn_addplcsub">
              </div>
          </div>
      </form>
  </div>



<script>
// admin add place select image from  dropdown
var pictureList = [
        "{{ asset('images/maps/Sectors.png') }}",
        "#", ];

    $('#picDD').change(function () {
        var val = parseInt($('#picDD').val());
        $('#mapimgcntrl').attr("src",pictureList[val]);
        $('#mapimgcntrlS').attr("src",pictureList[val]);
        if(val==0) document.getElementById("map_names").value= "Sector Q&R";
        if(val==1) document.getElementById("map_names").value= "Sector S&T";
        if(val==2) document.getElementById("map_names").value= "Sector V&X";
        // if(val==3) document.getElementById("map_names").value= "Balze basse";
        // if(val==4) document.getElementById("map_names").value= "Zona Mare";
    });

</script>

@endsection
