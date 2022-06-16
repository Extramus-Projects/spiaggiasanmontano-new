@extends('users.usermaster')

@section('section')

  <div class="container-fluid">
      <h2 id ="heading_qt1">{{ __('Book your favorite place on the map') }}</h2>
  </div>
  <!-- base map	 -->
  <div class="container-fluid">
      <div class="row">
          <div class="col-sm-12">
              <center>
              <img id="baseMapimgStyle" src="{{ asset('images/maps/mappazone.jpg') }}" alt="Workplace" usemap="#workmap" height="550px" width="900px;">
              <map name="workmap" >
                @php
                  $ind=1;
                @endphp
                @foreach ($maparray['map_coods'] as $map_cood)
                  <area id="{{ 'select_map_style'.$ind }}" onmouseout="this.blur();" onmouseover="this.focus();" target="" alt="{{ $map_cood->map_name }}" coords = "{{ $map_cood->coordsLS }}" title="" href="{{ route('user.viewsmallplace', $map_cood->map_name) }}" shape="poly">
                  {{-- dynamic coordinate selection using javascript --}}
                  <script>
                    if(window.screen.width<768)
                      document.getElementById("{{ 'select_map_style'.$ind }}").coords = "{{ $map_cood->coordsSS }}";
                  </script>
                  @php
                    $ind=$ind+1;
                  @endphp
                @endforeach
              </map>

              <center>
          </div>
      </div>
  </div>
  <!-- base map end	 -->
  {{-- <div class="container padding20 center">
      <h2><u>{{ __('Recommended Places') }}</u></h2>
      @include('layouts/recommendedplaces')
  </div> --}}
@endsection
