@extends('users.usermaster')

@section('section')
  <div class="container-fluid padding20">
      <div class="row">
        <div class="col-sm-6 offset-sm-3">
          <div class="card">
            <div class="card-header">
              <h3><strong>Contattaci</strong></h3>
            </div>
            <div class="card-body">
              <h4><strong>Spiaggia San Montano</strong></h4>
              {{-- <span>San Montano Bay</span><br> --}}
              <span>80076 Lacco Ameno - Ischia Island (Naples).</span><br>
              <span><strong>{{ __('Telephone') }}:</strong> +39 081 986152</span><br>
              <span><strong>{{ __('Fax') }}:</strong> +39 081 986342</span><br>
              <span><strong>{{ __('Email') }}:</strong><a href = "mailto: negombo@negombo.it"> negombo@negombo.it</a></span><br><br>

              <h4><strong>{{ (__('Map Location')) }}</strong></h4>
              <hr>
              <iframe class="map_frame_style" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d755.557886115627!2d13.877500062501998!3d40.75693180885746!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133b4079baeb016b%3A0xcf44820999cdb589!2sSpiaggia%20di%20San%20Montano!5e0!3m2!1sen!2sbd!4v1618478515874!5m2!1sen!2sbd" width=100% frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
          </div>
        </div>
      </div>
  </div>
@endsection
