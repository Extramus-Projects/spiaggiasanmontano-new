@extends('layouts.adminmaster')
@section('section')

  <div class="container paddingTop20">
    <h1>Spiaggia Edit Place</h1>
    <hr>
      <form action="{{ route('admin.place.update', $place->place_id) }}" method="POST">
          {{ csrf_field() }}
          <div class="row">
              @include('layouts.errormessages')
              <div class="col-sm-4">
                  <label>Coordinates Large(H:600 x W:800)(X,Y):</label><br>
                  <input id="iptcor1" type="number" name="co_xl" value="{{ $place->co_xl }}" required>
                  <input id="iptcor2" type="number" name="co_yl" value="{{ $place->co_yl }}" required>
                  <br>
                  <label>Coordinates Small(H:350 x W:340)(X,Y):</label><br>
                  <input id="iptcor1S" type="number" name="co_xs" value="{{ $place->co_xs }}" required>
                  <input id="iptcor2S" type="number" name="co_ys" value="{{ $place->co_ys }}" required><br>
              </div>
              <div class="col-sm-6">
                  <label>Map Name:</label>
                  <select name="map_name" class="form-control" id="map_names" required>
                    @foreach ($map_coods as $map)
                      <option value="{{ $map->map_name }}">{{ $map->map_name }}</option>
                    @endforeach
                  </select>
                  <br>
                  <label>Place ID:</label>
                  <input class="form-control" type="text" name="place_id" value="{{ $place->place_id }}"  disabled><br>
                  <label>Place Name:</label>
                  <input class="form-control" type="text" name="place_name" value="{{ $place->place_name }}" required><br>
                  <label>Place Description:</label>
                  <textarea class="form-control" name="place_description">{{ $place->place_description }}</textarea>
                  <br>
                  <label>Price:</label>
                  <label>Price 1 Person(monthly):</label>
                  <input class="form-control" type="number" name="place_price1" value="{{ $place->price1 }}" required><br>
                  <label>Price 2 Person(monthly):</label>
                  <input class="form-control" type="number" name="place_price2" value="{{ $place->price2 }}" required><br>
                  <label>Price 3 Person(monthly):</label>
                  <input class="form-control" type="number" name="place_price3" value="{{ $place->price3 }}" required><br>
                  <label>Price 4 Person(monthly):</label>
                  <input class="form-control" type="number" name="place_price4" value="{{ $place->price4 }}" required><br>
                  <a href="{{ route('admin.place.delete', $place->place_id) }}" class="btn btn-danger" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">Delete</a>
                  <input type="submit" class="btn btn-primary" id="btn_addplcsub" value="Update">
              </div>
          </div>
      </form>
  </div>

<script>
  document.getElementById("map_names").value = "{{ $place->map_name }}";
</script>

@endsection
