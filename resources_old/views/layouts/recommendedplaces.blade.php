@php
  $imgpath = array();
  array_push($imgpath, 'images/places/spiaggia.jpg');
  array_push($imgpath, 'images/places/balzeAlte.jpg');
  array_push($imgpath, 'images/places/balzebasse.jpg');
  array_push($imgpath, 'images/places/zonatermale.jpg');
  array_push($imgpath, 'images/places/zonamare.jpg');
  $icc=1;
@endphp

<style>
  .wrapper .container .top {
    height: 72%;
    width: 100%;
    -webkit-background-size: 100%;
    -moz-background-size: 100%;
    -o-background-size: 100%;
    background-size: 100%;
  }
</style>



<div class="row">
  @foreach ($maparray['maps'] as $map)
    @if ($map->map_name == "Spiaggia")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[0]) }}) no-repeat center center;
          }
      </style>
    @endif
    @if ($map->map_name == "Balze Alte")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[1]) }}) no-repeat center center;
          }
      </style>
    @endif
    @if ($map->map_name == "Balze basse")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[2]) }}) no-repeat center center;
          }
      </style>
    @endif
    @if ($map->map_name == "Zona Termale")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[3]) }}) no-repeat center center;
          }
      </style>
    @endif
    @if ($map->map_name == "Zona Mare")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[4]) }}) no-repeat center center;
          }
      </style>
    @endif

      <div class="col-sm-4 place_card_style">

        <div class="wrapper">
          <div class="container">
            <div class="top top{{ $icc }}"></div>
            <div class="bottom">
              <div class="left">
                <div class="details">
                  <h6>{{ $map->map_name }}</h6>
                  <p>1 {{ __('Adult') }}: {{ $maparray['set_admin']->adult1_price }} <i class="fa fa-eur" aria-hidden="true"></i></p>
                </div>
                <a class="buy" href="/viewplaces/{{ $map->map_name }}"><i class="material-icons" aria-hidden="true">book</i></a>
              </div>
            </div>
          </div>
          <div class="inside">
            <div class="icon"><i class="material-icons">info_outline</i></div>
            <div class="contents">

              <span><strong>{{ __('Place Name') }}: {{ $map->map_name }}</strong></span><br>
              <span>1 {{ __('Adult') }}: {{ $maparray['set_admin']->adult1_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
              <span>2 {{ __('Adult') }}: {{ $maparray['set_admin']->adult2_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
              <span>3 {{ __('Adult') }}: {{ $maparray['set_admin']->adult3_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
              <span>4 {{ __('Adult') }}: {{ $maparray['set_admin']->adult4_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br><br>
              <span>1 {{ __('Adult')." & 1 ".__('Baby') }}: {{ $maparray['set_admin']->adult1_1baby_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
              <span>2 {{ __('Adult')." & 2 ".__('Baby') }}: {{ $maparray['set_admin']->adult2_2baby_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
              <span>{{ __('Map place is available') }}.</span><br>
            </div>
          </div>
        </div>
      </div>
      @php
        $icc = $icc+1;
      @endphp
  @endforeach
</div>
