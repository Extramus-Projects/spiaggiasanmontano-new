@extends('users.usermaster')




@section('section')

  @guest

  <div class="container-fluid">
	</div>
  <div class="container-fluid" style="padding-top:30px;">
    <div class="row">
      <div class="col-sm-3">
        <div class="card">
          {{-- <div class="card-header bg-info" id="price_style">
          </div> --}}
          <div class="card-body" style="font-size:12px;">
            <strong class="text-primary">{{ __('Instructions') }}</strong>
            <li>{{ __('Choose the day you wish to book') }}</li>
            <li>{{ __('Update the map to see availability') }}</li>
            <li>{{ __('Select your favorite seat') }}</li>
            <p style="text-align:justify; margin:0px;">{{ __('The white umbrellas are not bookable because they are intentionally left free for access to guests arriving at Negombo without having booked') }}.</p>
          </div>
        </div>
      </div>
      <div class="col-sm-8 offset-sm-1">
        <h2 id ="heading_qt">{{ __('Book your favorite place on the map') }}</h2>
              <form action="" method="HEAD" id="datepickerform">
                {{ csrf_field() }}
                <br>
                <noscript>
                  <li class="text-warning"><span>{{ __('Javascript is not enabled, it is necessary to enable JavaScript') }}.</span></li>
                  <li ><span><a target="_blank" href="https://www.enable-javascript.com/it/">{{ __('Instructions how to enable JavaScript in your web browser') }}.</a></span></li><br><br>
                </noscript>
                {{-- <span><strong>{{ __('Arrival day') }}:</strong><span> --}}
                @isset($maparray['err_msg2'])
                  <span id="errormsg_txt1" style="color:red;"> {{ __('You have to book for minimum') }} 60 {{ __('days') }}.</span><br>
                @else
                  <span id="errormsg_txt1" class="text-primary"> {{ __('You have to book for minimum') }} 60 {{ __('days') }}.</span><br>
                @endisset

                <span><strong>{{ __('Check-In') }} & {{ __('Check-Out') }}:</strong><span>
                      <div class="row">
                        <div class="col-sm-8 col-12">
                          @php
                          // for logged in restictioons are removed
                          if(Auth::user()){
                            $makestr = '+1000 day';
                            $startday = date("Y-m-d");
                            $endday = date("Y-m-d", strtotime($makestr));
                          }else{
                            // for non-logged in user
                            $makestr = '+'.($maparray["set_admin"]->max_no_days + 30)." day";
                            $close_h = date('H', strtotime($maparray["set_admin"]->closing_time));
                            $close_hBig = date('H', strtotime($maparray["set_admin"]->closing_time)+60*60);
                            $close_m = date('i', strtotime($maparray["set_admin"]->closing_time));
                            if((date('H')>=$close_h && date('i')>=$close_m) || (date('H')>=$close_hBig)){
                              $today = date("Y-m-d H:i");
                              // extra booking day
                              $startday = date("Y-m-d", strtotime("+2 day"));
                              $makestr = '+'.($maparray["set_admin"]->max_no_days+1)." day";
                            }else{
                              $today = date("Y-m-d H:i");
                              $startday = date("Y-m-d", strtotime("+1 day"));
                            }
                            //
                            $endday = date("Y-m-d", strtotime($makestr));
                          }
                            $place_hold = '<i class="fa fa-arrow-right" aria-hidden="true"></i>'." Check-in";
                          @endphp
                          {{-- <div class="t-datepicker">
                              <span id="t_start" class="t-check-in"></span>
                              <span id="t_end" class="t-check-out" onchange="updateMapsubmit()"></span>
                          </div> --}}
                          <input placeholder="⇉ Check-in" class="cal_style" type="text" onfocus="(this.type='date')" id="t_start" name="t_start" min='{{ $startday }}' max='{{ $endday }}' required>
                          <input placeholder="⇉ Check-Out" class="cal_style" type="text" onfocus="(this.type='date')" id="searchdate_numberofdays" name="t_end" min='{{ $startday }}'  max="60" required>
                          {{-- <input class="cal_style" placeholder="DD/MM/YYYY" type="date" id="t_start" name="t_start" min='{{ $startday }}' max='{{ $endday }}'> --}}
                          {{-- <input id="searchdate_numberofdays" min="0" max="60" type="number" name="no_of_day" placeholder="{{ __('Number of days') }}: 1"> --}}
                          @isset($maparray['err_msg'])
                            <span id="errormsg_txt" style="color:red;">{{ __('You have to book for minimum') }} 60 {{ __('days') }}.</span><br>
                          @endisset


                          <br><span id="errormsg_txt" style="color:red;display:none;"> {{ __('Arrival day is not selected') }}. </span><br>
                        </div>
                        {{-- <div class="col-sm-4">

                        </div> --}}

                        <div class="col-sm-4">
                          @isset($maparray['err_msg3'])
                            <button id="src_sm_btn" type="submit" class="btn btn-info" disabled>{{ __('Update Map') }}</button>
                          @else
                            <button id="src_sm_btn" type="submit" class="btn btn-info">{{ __('Update Map') }}</button>
                          @endisset
                        </div>

                      </div>
              </form>
          </div>
    </div>
  </div>

  <script>

  // yy-mm-dd
  function formatDate(date) {
      var d = new Date(date),
          month = '' + (d.getMonth() + 1),
          day = '' + d.getDate(),
          year = d.getFullYear();

      if (month.length < 2)
          month = '0' + month;
      if (day.length < 2)
          day = '0' + day;

      return [year, month, day].join('-');
  }



var today = new Date();
tomorrow = new Date(today);
tomorrow.setDate(tomorrow.getDate() + 60);
var date = tomorrow.getFullYear()+'-'+(tomorrow.getMonth()+1)+'-'+tomorrow.getDate();
   $(document).ready(function(){
      // Call global the function
      $('.t-datepicker').tDatePicker({
        // options here
        titleDateRange :'{{ __('day') }}',
        titleDateRanges:'{{ __('days') }}',
        titleToday     :'{{ __('Today') }}',
        limitDateRanges    :'365',
        titleCheckIn   :'{{ __('Check In') }}',
        titleCheckOut  :'{{ __('Check Out') }}',
        numCalendar : 2,
        startDate: '{{ $maparray["set_admin"]->season_start }}',
        endDate: '{{ $maparray["set_admin"]->season_end }}',
        nextDayHighlighted   :false,
        toDayHighlighted     :false,
        toDayShowTitle       :true,
        autoClose: true,
        showFullDateRanges :true,
        dateRangesHover: true,
      }).on('afterCheckOut',function(e, dataDate) {
          // document.getElementById("datepickerform").submit();
          var chkindate = formatDate(new Date(dataDate[0]));
          var chkoutdate = formatDate(new Date(dataDate[1]));
          var urlRd = "?_token="+"{{ csrf_token() }}&t_start="+chkindate+"&t_end="+chkoutdate;
          location.replace(urlRd);
      });
    });
</script>
  {{-- checkin checkout box js --}}

	<!-- base map	 -->
	<div class="container-fluid  mt-3" id="map_stype_whole">
		<div class="row">
			<div class="col-sm-10 offset-sm-1 col-12">
        <center>
          @isset($maparray['checkin_date'])
            <span><strong>{{ __('Choose Your Place Here') }}</strong></span>

          @endisset

          <div class="containersmallmap" >
              <img id="baseMapimgStyle" src="{{ asset('images/maps/'.$maparray["map_name"].'.png') }}" alt="Workplace" usemap="#workmap" height="600px" width="900px">
              @if (isset($maparray['checkin_date']))
                @isset($maparray['places'])
                  @php
                    $ind=1;
                  @endphp
                  @foreach ($maparray['places'] as $place)

                    @if ($place->status==0)
                      {{-- menually control colors for links for green --}}
                      <a href="{{ route('user.createbooking',  ['place_id' => $place->place_id, 'checkin' => $maparray['checkin_date'], 'checkout' => $maparray['checkout_date'], 'error_msg' => 0]) }}" class="mapmarkgrcls" id="{{ 'mapmarkgr'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                      <script>
                      if(window.screen.width<768){
                        document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                        document.getElementById("{{ 'mapmarkgr'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                      }
                      </script>
                    @endif
                    @if ($place->status== -1)
                      {{-- menually control colors for links --}}
                      <a onclick="checkinValidation()" href="#" class="mapmarkgycls" id="{{ 'mapmarkgy'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                      <script>
                        if(window.screen.width<768){
                        document.getElementById("{{ 'mapmarkgy'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                        document.getElementById("{{ 'mapmarkgy'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                      }
                      function checkinValidation(){
                          document.getElementById("t_start").style.borderColor = "red";
                          document.getElementById("errormsg_txt").style.display = "block";

                      }
                      </script>
                    @endif
                    @if ($place->status == 1)
                    <a onclick="checkinValidation()" href="#" class="mapmarkgrcls reserved" id="{{ 'mapmarkgr'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                    <script>
                      if(window.screen.width<768){
                        document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                        document.getElementById("{{ 'mapmarkgr'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                      }
                      function checkinValidation(){
                          document.getElementById("t_start").style.borderColor = "red";
                          document.getElementById("errormsg_txt").style.display = "block";

                      }
                    </script>
                    @endif
                    @if ($place->status == 2)
                    <a onclick="checkinValidation()" href="#" class="mapmarkredcls" id="{{ 'mapmarkred'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                    <script>
                      if(window.screen.width<768){
                        document.getElementById("{{ 'mapmarkred'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                        document.getElementById("{{ 'mapmarkred'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                      }
                      function checkinValidation(){
                          document.getElementById("t_start").style.borderColor = "red";
                          document.getElementById("errormsg_txt").style.display = "block";

                      }
                    </script>
                    @endif
                    @if ($place->status == 3)
                    <a onclick="checkinValidation()" href="#" class="mapmarkblucls" id="{{ 'mapmarkblu'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                    <script>
                      if(window.screen.width<768){
                        document.getElementById("{{ 'mapmarkblu'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                        document.getElementById("{{ 'mapmarkblu'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                      }
                      function checkinValidation(){
                          document.getElementById("t_start").style.borderColor = "red";
                          document.getElementById("errormsg_txt").style.display = "block";

                      }
                    </script>
                    @endif
                    {{-- add some dynamic javascipt codes for mobile device --}}
                    @php
                      $ind=$ind+1;
                    @endphp
                  @endforeach
                @endisset
              @else
                @php
                  $ind=1;
                @endphp
                @foreach ($maparray['places'] as $place)
                    @if ($place->status == -1)
                    <a onclick="checkinValidation()" href="#" class="mapmarkgycls" id="{{ 'mapmarkgy'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                    <script>
                      if(window.screen.width<768){
                        document.getElementById("{{ 'mapmarkgy'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                        document.getElementById("{{ 'mapmarkgy'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                      }
                      function checkinValidation(){
                          document.getElementById("t_start").style.borderColor = "red";
                          document.getElementById("errormsg_txt").style.display = "block";

                      }
                    </script>
                   @elseif ($place->status == 1)
                    <a onclick="checkinValidation()" href="#" class="mapmarkgrcls reserved" id="{{ 'mapmarkgr'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                    <script>
                      if(window.screen.width<768){
                        document.getElementById("{{ 'mapmarkgrcls'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                        document.getElementById("{{ 'mapmarkgrcls'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                      }
                      function checkinValidation(){
                          document.getElementById("t_start").style.borderColor = "red";
                          document.getElementById("errormsg_txt").style.display = "block";

                      }
                    </script>
                    @elseif ($place->status == 2)
                    <a onclick="checkinValidation()" href="#" class="mapmarkredcls" id="{{ 'mapmarkred'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                    <script>
                      if(window.screen.width<768){
                        document.getElementById("{{ 'mapmarkred'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                        document.getElementById("{{ 'mapmarkred'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                      }
                      function checkinValidation(){
                          document.getElementById("t_start").style.borderColor = "red";
                          document.getElementById("errormsg_txt").style.display = "block";

                      }
                    </script>
                    @elseif ($place->status == 3)
                    <a onclick="checkinValidation()" href="#" class="mapmarkblucls" id="{{ 'mapmarkblu'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                    <script>
                      if(window.screen.width<768){
                        document.getElementById("{{ 'mapmarkblu'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                        document.getElementById("{{ 'mapmarkblu'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                      }
                      function checkinValidation(){
                          document.getElementById("t_start").style.borderColor = "red";
                          document.getElementById("errormsg_txt").style.display = "block";

                      }
                    </script>
                  @else
                    <a onclick="checkinValidation()" href="#" class="mapmarkgrcls" id="{{ 'mapmarkgr'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                    <script>
                      if(window.screen.width<768){
                        document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                        document.getElementById("{{ 'mapmarkgr'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                      }

                      function checkinValidation(){
                          document.getElementById("t_start").style.borderColor = "red";
                          document.getElementById("errormsg_txt").style.display = "block";

                      }
                    </script>
                  @endif

                  @php
                    $ind=$ind+1;
                  @endphp
                @endforeach
              @endif

            </div>
				<center>
			</div>
		</div>
	</div>

  @include('users._reservedmodel')
  @include('users._closedbooking')

  <script>
      // $(".mapmarkgycls").click(function () {
      //     $('#myModal').modal('show');
      // });

      @isset($maparray['err_msg3'])
          $('#bookingStopedModal').modal({
            backdrop: 'static',
            keyboard: false
          });
      @endisset

  </script>


  @endguest


  @auth
      @if(Auth::user()->role == 'user' && Auth::user()->black_list == '1'  )
         <div class="container-fluid">
            <h3 id ="heading_qt1" style="text-transform:capitalize;">Spiacente , al momento non &egrave; possibile effettuare l'acquisto. Riprova pi&ugrave; tardi </h3>
        </div>
      @else
          <div class="container-fluid">
	</div>
  <div class="container-fluid" style="padding-top:30px;">
    <div class="row">
      <div class="col-sm-3">
        <div class="card">
          {{-- <div class="card-header bg-info" id="price_style">
          </div> --}}
          <div class="card-body" style="font-size:12px;">
            <strong class="text-primary">{{ __('Instructions') }}</strong>
            <li>{{ __('Choose the day you wish to book') }}</li>
            <li>{{ __('Update the map to see availability') }}</li>
            <li>{{ __('Select your favorite seat') }}</li>
            <p style="text-align:justify; margin:0px;">{{ __('The white umbrellas are not bookable because they are intentionally left free for access to guests arriving at Negombo without having booked') }}.</p>
          </div>
        </div>
      </div>
      <div class="col-sm-8 offset-sm-1">
        <h2 id ="heading_qt">{{ __('Book your favorite place on the map') }}</h2>
              <form action="" method="HEAD" id="datepickerform">
                {{ csrf_field() }}
                <br>
                <noscript>
                  <li class="text-warning"><span>{{ __('Javascript is not enabled, it is necessary to enable JavaScript') }}.</span></li>
                  <li ><span><a target="_blank" href="https://www.enable-javascript.com/it/">{{ __('Instructions how to enable JavaScript in your web browser') }}.</a></span></li><br><br>
                </noscript>
                {{-- <span><strong>{{ __('Arrival day') }}:</strong><span> --}}
                @isset($maparray['err_msg2'])
                  <span id="errormsg_txt1" style="color:red;"> {{ __('You have to book for minimum') }} 60 {{ __('days') }}.</span><br>
                @else
                  <span id="errormsg_txt1" class="text-primary"> {{ __('You have to book for minimum') }} 60 {{ __('days') }}.</span><br>
                @endisset

                <span><strong>{{ __('Check-In') }} & {{ __('Check-Out') }}:</strong><span>
                      <div class="row">
                        <div class="col-sm-8 col-12">
                          @php
                          // for logged in restictioons are removed
                          if(Auth::user()){
                            $makestr = '+1000 day';
                            $startday = date("Y-m-d");
                            $endday = date("Y-m-d", strtotime($makestr));
                          }else{
                            // for non-logged in user
                            $makestr = '+'.($maparray["set_admin"]->max_no_days + 30)." day";
                            $close_h = date('H', strtotime($maparray["set_admin"]->closing_time));
                            $close_hBig = date('H', strtotime($maparray["set_admin"]->closing_time)+60*60);
                            $close_m = date('i', strtotime($maparray["set_admin"]->closing_time));
                            if((date('H')>=$close_h && date('i')>=$close_m) || (date('H')>=$close_hBig)){
                              $today = date("Y-m-d H:i");
                              // extra booking day
                              $startday = date("Y-m-d", strtotime("+2 day"));
                              $makestr = '+'.($maparray["set_admin"]->max_no_days+1)." day";
                            }else{
                              $today = date("Y-m-d H:i");
                              $startday = date("Y-m-d", strtotime("+1 day"));
                            }
                            //
                            $endday = date("Y-m-d", strtotime($makestr));
                          }
                            $place_hold = '<i class="fa fa-arrow-right" aria-hidden="true"></i>'." Check-in";
                          @endphp
                          {{-- <div class="t-datepicker">
                              <span id="t_start" class="t-check-in"></span>
                              <span id="t_end" class="t-check-out" onchange="updateMapsubmit()"></span>
                          </div> --}}
                          <input placeholder="⇉ Check-in" class="cal_style" type="text" onfocus="(this.type='date')" id="t_start" name="t_start" min='{{ $startday }}' max='{{ $endday }}' required>
                          <input placeholder="⇉ Check-Out" class="cal_style" type="text" onfocus="(this.type='date')" id="searchdate_numberofdays" name="t_end" min='{{ $startday }}'  max="60" required>
                          {{-- <input class="cal_style" placeholder="DD/MM/YYYY" type="date" id="t_start" name="t_start" min='{{ $startday }}' max='{{ $endday }}'> --}}
                          {{-- <input id="searchdate_numberofdays" min="0" max="60" type="number" name="no_of_day" placeholder="{{ __('Number of days') }}: 1"> --}}
                          @isset($maparray['err_msg'])
                            <span id="errormsg_txt" style="color:red;">{{ __('You have to book for minimum') }} 60 {{ __('days') }}.</span><br>
                          @endisset


                          <br><span id="errormsg_txt" style="color:red;display:none;"> {{ __('Arrival day is not selected') }}. </span><br>
                        </div>
                        {{-- <div class="col-sm-4">

                        </div> --}}

                        <div class="col-sm-4">
                          @isset($maparray['err_msg3'])
                            <button id="src_sm_btn" type="submit" class="btn btn-info" disabled>{{ __('Update Map') }}</button>
                          @else
                            <button id="src_sm_btn" type="submit" class="btn btn-info">{{ __('Update Map') }}</button>
                          @endisset
                        </div>

                      </div>
              </form>
          </div>
    </div>
  </div>

  <script>

  // yy-mm-dd
  function formatDate(date) {
      var d = new Date(date),
          month = '' + (d.getMonth() + 1),
          day = '' + d.getDate(),
          year = d.getFullYear();

      if (month.length < 2)
          month = '0' + month;
      if (day.length < 2)
          day = '0' + day;

      return [year, month, day].join('-');
  }



var today = new Date();
tomorrow = new Date(today);
tomorrow.setDate(tomorrow.getDate() + 60);
var date = tomorrow.getFullYear()+'-'+(tomorrow.getMonth()+1)+'-'+tomorrow.getDate();
   $(document).ready(function(){
      // Call global the function
      $('.t-datepicker').tDatePicker({
        // options here
        titleDateRange :'{{ __('day') }}',
        titleDateRanges:'{{ __('days') }}',
        titleToday     :'{{ __('Today') }}',
        limitDateRanges    :'365',
        titleCheckIn   :'{{ __('Check In') }}',
        titleCheckOut  :'{{ __('Check Out') }}',
        numCalendar : 2,
        startDate: '{{ $maparray["set_admin"]->season_start }}',
        endDate: '{{ $maparray["set_admin"]->season_end }}',
        nextDayHighlighted   :false,
        toDayHighlighted     :false,
        toDayShowTitle       :true,
        autoClose: true,
        showFullDateRanges :true,
        dateRangesHover: true,
      }).on('afterCheckOut',function(e, dataDate) {
          // document.getElementById("datepickerform").submit();
          var chkindate = formatDate(new Date(dataDate[0]));
          var chkoutdate = formatDate(new Date(dataDate[1]));
          var urlRd = "?_token="+"{{ csrf_token() }}&t_start="+chkindate+"&t_end="+chkoutdate;
          location.replace(urlRd);
      });
    });
</script>
  {{-- checkin checkout box js --}}

	<!-- base map	 -->
	<div class="container-fluid  mt-3" id="map_stype_whole">
		<div class="row">
			<div class="col-sm-10 offset-sm-1 col-12">
        <center>
          @isset($maparray['checkin_date'])
            <span><strong>{{ __('Choose Your Place Here') }}</strong></span>

          @endisset

          <div class="containersmallmap" >
              <img id="baseMapimgStyle" src="{{ asset('images/maps/'.$maparray["map_name"].'.png') }}" alt="Workplace" usemap="#workmap" height="600px" width="900px">
              @if (isset($maparray['checkin_date']))
                @isset($maparray['places'])
                  @php
                    $ind=1;
                  @endphp
                  @foreach ($maparray['places'] as $place)

                  @if ($place->status==0)
                  {{-- menually control colors for links for green --}}
                  <a href="{{ route('user.createbooking',  ['place_id' => $place->place_id, 'checkin' => $maparray['checkin_date'], 'checkout' => $maparray['checkout_date'], 'error_msg' => 0]) }}" class="mapmarkgrcls" id="{{ 'mapmarkgr'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                  <script>
                  if(window.screen.width<768){
                    document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                    document.getElementById("{{ 'mapmarkgr'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                  }
                  </script>
                @endif
                @if ($place->status== -1)
                  {{-- menually control colors for links --}}
                  <a onclick="checkinValidation()" href="#" class="mapmarkgycls" id="{{ 'mapmarkgy'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                  <script>
                    if(window.screen.width<768){
                    document.getElementById("{{ 'mapmarkgy'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                    document.getElementById("{{ 'mapmarkgy'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                  }
                  function checkinValidation(){
                      document.getElementById("t_start").style.borderColor = "red";
                      document.getElementById("errormsg_txt").style.display = "block";

                  }
                  </script>
                @endif
                @if ($place->status == 1)
                <a onclick="checkinValidation()" href="#" class="mapmarkgrcls reserved" id="{{ 'mapmarkgr'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                <script>
                  if(window.screen.width<768){
                    document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                    document.getElementById("{{ 'mapmarkg'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                  }
                  function checkinValidation(){
                      document.getElementById("t_start").style.borderColor = "red";
                      document.getElementById("errormsg_txt").style.display = "block";

                  }
                </script>
                @endif
                @if ($place->status == 2)
                <a onclick="checkinValidation()" href="#" class="mapmarkredcls" id="{{ 'mapmarkred'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                <script>
                  if(window.screen.width<768){
                    document.getElementById("{{ 'mapmarkred'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                    document.getElementById("{{ 'mapmarkred'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                  }
                  function checkinValidation(){
                      document.getElementById("t_start").style.borderColor = "red";
                      document.getElementById("errormsg_txt").style.display = "block";

                  }
                </script>
                @endif
                @if ($place->status == 3)
                <a onclick="checkinValidation()" href="#" class="mapmarkblucls" id="{{ 'mapmarkblu'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                <script>
                  if(window.screen.width<768){
                    document.getElementById("{{ 'mapmarkblu'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                    document.getElementById("{{ 'mapmarkblu'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                  }
                  function checkinValidation(){
                      document.getElementById("t_start").style.borderColor = "red";
                      document.getElementById("errormsg_txt").style.display = "block";

                  }
                </script>
                @endif
                    {{-- add some dynamic javascipt codes for mobile device --}}
                    @php
                      $ind=$ind+1;
                    @endphp
                  @endforeach
                @endisset
              @else
                @php
                  $ind=1;
                @endphp
                @foreach ($maparray['places'] as $place)
                @if ($place->status == -1)
                <a onclick="checkinValidation()" href="#" class="mapmarkgycls" id="{{ 'mapmarkgy'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                <script>
                  if(window.screen.width<768){
                    document.getElementById("{{ 'mapmarkgy'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                    document.getElementById("{{ 'mapmarkgy'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                  }
                  function checkinValidation(){
                      document.getElementById("t_start").style.borderColor = "red";
                      document.getElementById("errormsg_txt").style.display = "block";

                  }
                </script>
               @elseif ($place->status == 1)
                <a onclick="checkinValidation()" href="#" class="mapmarkgrcls reserved" id="{{ 'mapmarkgr'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                <script>
                  if(window.screen.width<768){
                    document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                    document.getElementById("{{ 'mapmarkgr'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                  }
                  function checkinValidation(){
                      document.getElementById("t_start").style.borderColor = "red";
                      document.getElementById("errormsg_txt").style.display = "block";

                  }
                </script>
                @elseif ($place->status == 2)
                <a onclick="checkinValidation()" href="#" class="mapmarkgrcls" id="{{ 'mapmarkred'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                <script>
                  if(window.screen.width<768){
                    document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                    document.getElementById("{{ 'mapmarkgr'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                  }
                  function checkinValidation(){
                      document.getElementById("t_start").style.borderColor = "red";
                      document.getElementById("errormsg_txt").style.display = "block";

                  }
                </script>
                @elseif ($place->status == 3)
                <a onclick="checkinValidation()" href="#" class="mapmarkblucls" id="{{ 'mapmarkblu'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                <script>
                  if(window.screen.width<768){
                    document.getElementById("{{ 'mapmarkblu'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                    document.getElementById("{{ 'mapmarkblu'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                  }
                  function checkinValidation(){
                      document.getElementById("t_start").style.borderColor = "red";
                      document.getElementById("errormsg_txt").style.display = "block";

                  }
                </script>
              @else
                <a onclick="checkinValidation()" href="#" class="mapmarkgrcls" id="{{ 'mapmarkgr'.$ind }}" style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ substr($place->place_id, 1) }}</a>
                <script>
                  if(window.screen.width<768){
                    document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}"+"px";
                    document.getElementById("{{ 'mapmarkgr'.$ind }}").style.top = "{{ $place->co_ys-5 }}"+"px";
                  }

                  function checkinValidation(){
                      document.getElementById("t_start").style.borderColor = "red";
                      document.getElementById("errormsg_txt").style.display = "block";

                  }
                </script>
              @endif

                  @php
                    $ind=$ind+1;
                  @endphp
                @endforeach
              @endif

            </div>
				<center>
			</div>
		</div>
	</div>

  @include('users._reservedmodel')
  @include('users._closedbooking')

  <script>
      // $(".mapmarkgycls").click(function () {
      //     $('#myModal').modal('show');
      // });

      @isset($maparray['err_msg3'])
          $('#bookingStopedModal').modal({
            backdrop: 'static',
            keyboard: false
          });

      @endisset

  </script>


      @endif
  @endauth


@endsection
