<h2>{{ __('Place Details') }}</h2>
<hr>

<div class="card">
  <div class="card-body">
      <span>{{ __('Place ID') }}: </span><span>#{{ $maparray['place']->place_id }}</span><br>
      <span>{{ __('Place Name') }}: </span><span>{{ $maparray['place']->place_name }}</span><br>
      <span>{{ __('Area') }}: </span><span>{{ $maparray['place']->map_name }}</span><br>
  </div>
</div><br>

{{-- <div class="card">
  <div class="card-header">
      <span><strong>{{ __('Place Description') }}</strong></span>
  </div>
  <div class="card-body">
      <span>{{ $maparray['place']->place_description }}</span>
  </div>
</div><br> --}}
{{-- price card --}}
<center>
  <div class="card">
    {{-- <div class="card-header bg-info" id="price_style">
      <h3><strong>{{ __('Price') }} / {{ __('Month') }}</strong></h3>
      @isset($maparray['place']->price1)
        <span>1 {{ __('Adult') }}: {{ $maparray['place']->price1 }} {{ $maparray['place']->currency_type }}</span><br>
        <span>2 {{ __('Adult') }}: {{ $maparray['place']->price2 }} {{ $maparray['place']->currency_type }}</span><br>
        <span>3 {{ __('Adult') }}: {{ $maparray['place']->price3 }} {{ $maparray['place']->currency_type }}</span><br>
        <span>4 {{ __('Adult') }}: {{ $maparray['place']->price4 }} {{ $maparray['place']->currency_type }}</span><br><br>
        {{-- <span>1 {{ __('Adult')." & 1 ".__('Baby') }}: {{ $maparray['set_admin']->adult1_1baby_price }} {{ $maparray['place']->currency_type }}</span><br> --}}
        {{-- <span>2 {{ __('Adult')." & 2 ".__('Baby') }}: {{ $maparray['set_admin']->adult2_2baby_price }} {{ $maparray['place']->currency_type }}</span><br> --}}
      {{-- @endisset --}}
    {{-- </div> --}}
    <div class="card-body">
      <h6 class="text-justify"><strong>{{ __('IMPORTANT') }}: </strong>{{ __('At the time of payment, enter Paypal or Credit Card details, at the end of the operation you must remain on the prenotazioni.negombo.it website until the booking confirmation is printed') }}.</h6>
      <h6 class="text-justify">{{ __('Receipt of payment without booking confirmation from the prenotazioni.negombo.it site does not entail the actual assignment of the seat') }}.</h6>
      <h6 class="text-justify text-primary">Si informa che avendo acquistato il titolo/i di ingresso al Parco con prenotazione, come caparra confirmatoria, non sarà possibile accogliere richieste di rimborso, modifica o cancellazione.</h6>
    </div>
  </div><br>
</center>
