@extends('layouts.adminmaster')

@section('section')
  <div class="container paddingTop20">
    <h1>Spiaggia Edit Bookings</h1>
    <hr>
    <div class="row justify-content-center">
      <div class="col-md-8">
          <div class="card">
            <div class="card-body">
              @if($errors->any())
                  <li class="text-danger">{{$errors->first()}}</li>
              @endif
              <form action="{{ route('admin.booking.updatebookingdelaits') }}" method="POST">
                    {{ csrf_field() }}
                    <input type="hidden" class="form-control" name="booking_id" value="{{ $Booking->id }}">
                    <div class="form-group row">
                        <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Place ID') }}: </label>
                        <div class="col-md-6">
                          <input type="text" class="form-control" name="place_id" value="{{ $Booking->place_id }}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Full Name') }}: </label>
                        <div class="col-md-6">
                          <input type="text" class="form-control" name="user_fullname" value="{{ $Booking->user_fullname }}" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Email') }}: </label>
                        <div class="col-md-6">
                          <input type="email" class="form-control" name="user_email" value="{{ $Booking->user_email }} " required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Phone') }}: </label>
                        <div class="col-md-6">
                          <input type="tel" class="form-control" name="user_phone" value="{{ $Booking->user_phone }} " required>
                        </div>
                    </div>
                    <div class="form-group row">
                      <label for="geust" class="col-md-4 col-form-label text-md-right">{{ __('Number of adults') }}[1-4]: </label>
                      <div class="col-md-6">
                        <select class="form-control booking_inp_textbox_style" id="numberofguest" name="numberofguest" onload="addFieldsadminEdit(this.value)" onchange="addFieldsadminEdit(this.value);">
                          @if ($Booking->user_no_of_guest == 1)
                            <option value="0" selected class="valueOfAdults">1</option>
                            <option value="1">2</option>
                            <option value="2">3</option>
                            <option value="3">4</option>
                          @elseif ($Booking->user_no_of_guest == 2)
                            <option value="0">1</option>
                            <option value="1" selected class="valueOfAdults">2</option>
                            <option value="2">3</option>
                            <option value="3">4</option>
                          @elseif ($Booking->user_no_of_guest == 3)
                          <option value="0">1</option>
                          <option value="1">2</option>
                          <option value="2" selected class="valueOfAdults">3</option>
                          <option value="3">4</option>
                          @else
                          <option value="0">1</option>
                          <option value="1">2</option>
                          <option value="2">3</option>
                          <option value="3" selected class="valueOfAdults">4</option>
                          @endif
                        </select>
                      </div>
                  </div>

                  <div class="form-group row">
                      <label for="babies" class="col-md-4 col-form-label text-md-right">{{ __('Number of babies') }}[1-3]: </label>
                      <div class="col-md-6">
                        <select class="form-control booking_inp_textbox_style" id="numberofbabies" name="numberofbabies" onchange="addFieldsadmin2Edit(this.value);">
                          @if ($Booking->user_no_of_babies == 0)
                          <option value="0" selected class="valueOfBabies">0</option>
                          <option id="hidden_op_style1" value="1">1</option>
                          <option id="hidden_op_style2" value="2">2</option>
                          <option id="hidden_op_style3" value="3">3</option>
                          <option id="hidden_op_style4" value="4">4</option>
                          @elseif ($Booking->user_no_of_babies == 1)
                          <option value="0">0</option>
                          <option id="hidden_op_style1" value="1" selected class="valueOfBabies">1</option>
                          <option id="hidden_op_style2" value="2">2</option>
                          <option id="hidden_op_style3" value="3">3</option>
                          <option id="hidden_op_style4" value="4">4</option>
                          @elseif ($Booking->user_no_of_babies == 2)
                          <option value="0" >0</option>
                          <option id="hidden_op_style1" value="1">1</option>
                          <option id="hidden_op_style2" value="2" selected class="valueOfBabies">2</option>
                          <option id="hidden_op_style3" value="3">3</option>
                          <option id="hidden_op_style4" value="4">4</option>
                          @elseif ($Booking->user_no_of_babies == 3)
                          <option value="0">0</option>
                          <option id="hidden_op_style1" value="1">1</option>
                          <option id="hidden_op_style2" value="2">2</option>
                          <option id="hidden_op_style3" value="3" selected class="valueOfBabies">3</option>
                          <option id="hidden_op_style4" value="4">4</option>
                          @else
                          <option value="0" active>0</option>
                          <option id="hidden_op_style1" value="1">1</option>
                          <option id="hidden_op_style2" value="2">2</option>
                          <option id="hidden_op_style3" value="3">3</option>
                          <option id="hidden_op_style4" value="4" selected class="valueOfBabies">4</option>
                          @endif
                        </select>
                      </div>
                  </div>

                  <div class="containerinputedit">
                    {{-- dynamic input surname using javascript --}}
                  </div>
                  <div class="containerinput2edit">
                    {{-- dynamic input surname using javascript --}}
                  </div>

                  <div class="form-group row">
                        <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Booking Date') }}:  </label>
                        <div class="col-md-6">
                          <div class="t-datepicker" id="booking_day_start"><span class="t-check-in" name="booking_day_start"></span>
                          <input class="t-check-out" id="searchdate_numberofdays" type="number" min="1" name="booking_day_end" value={{ $Booking->user_days }} required></div>
                        </div>
                  </div>
                    @isset($Booking->user_promo)
                      <div class="form-group row">
                          <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Promo Code') }} : </label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="guest_surname1" value="{{ $Booking->user_promo }} " disabled>
                          </div>
                      </div>
                    @endisset
                    <div class="form-group row">
                        <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Payment Type') }}: </label>
                        <div class="col-md-6">
                          <input type="text" class="form-control" name="user_no_of_guest" value="{{ $Booking->user_payment_type }} " disabled>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-4 col-form-label text-md-right">
                          <a class="btn btn-danger" href="{{ route('admin.booking.deletebookingdelaits', $Booking->id) }}" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">Delete</a>
                        </div>
                        <div class="col-md-6 col-form-label text-md-right">
                          <button class="btn btn-primary" type="submit">Update</button>
                        </div>
                    </div>

              </form>
            </div>
        </div>

        </div>
    </div>
</div>

<script>
$(document).ready(function(){
   // Call global the function
   $('.t-datepicker').tDatePicker({
     // options here
     titleDateRange :'{{ __('day') }}',
     titleDateRanges:'{{ __('days') }}',
     titleToday     :'{{ __('Today') }}',
     limitDateRanges    : 365,
     dateCheckIn: '{{ $Booking->user_checkin }}',
     dateCheckOut: '{{ $Booking->user_checkout }}',
   });
 });
</script>

<script>
//ferdi
function addFieldsadminEdit(numoffld){
  var wrapper = $(".containerinputedit");
  $('.dyinpfld').remove();
  var val=0;
  for (var i = 0; i < numoffld; i++) {
      val = i+1;
      if(val==1)
      $(wrapper).append('<div class="form-group row dyinpfld"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo '+val+' Nome Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnames'+val+'"  value="{{ $Booking->guest_surname1 }}" /></div></div>');
      else if(val==2)
      $(wrapper).append('<div class="form-group row dyinpfld"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo '+val+' Nome Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnames'+val+'"  value="{{ $Booking->guest_surname2 }}" /></div></div>');
      else if(val=3)
      $(wrapper).append('<div class="form-group row dyinpfld"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo '+val+' Nome Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnames'+val+'"  value="{{ $Booking->guest_surname3 }}" /></div></div>');
    }
}

function addFieldsadmin2Edit(numoffld){
  var wrapper = $(".containerinput2edit");
  $('.dyinpfld2').remove();
  var val=0;
  for (var i = 0; i < numoffld; i++) {
      val = i+1;
     if(val == 1)
     $(wrapper).append('<div class="form-group row dyinpfld2"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo Bambino '+val+' Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnamesbabies'+val+'"  value="{{ $Booking->baby_surname1 }} "  required /></div></div>');
     else if(val == 2)
     $(wrapper).append('<div class="form-group row dyinpfld2"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo Bambino '+val+' Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnamesbabies'+val+'"  value="{{ $Booking->baby_surname2 }} "  required /></div></div>');
     else if(val == 3)
     $(wrapper).append('<div class="form-group row dyinpfld2"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo Bambino '+val+' Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnamesbabies'+val+'"  value="{{ $Booking->baby_surname3 }} "  required /></div></div>');
     else if(val == 4)
     $(wrapper).append('<div class="form-group row dyinpfld2"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo Bambino '+val+' Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnamesbabies'+val+'"  value="{{ $Booking->baby_surname4 }} "  required /></div></div>');

    }
}

window.onload = function addFieldsadmin2Edit(){
  $(".valueOfBabies").each(function () {
  var numoffld = $(this).html();
  var wrapper = $(".containerinput2edit");
  var val=0;
  for (var i = 0; i < numoffld; i++) {
      val = i+1;
     if(val == 1)
     $(wrapper).append('<div class="form-group row dyinpfld2"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo Bambino '+val+' Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnamesbabies'+val+'"  value="{{ $Booking->baby_surname1 }} "  required /></div></div>');
     else if(val == 2)
     $(wrapper).append('<div class="form-group row dyinpfld2"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo Bambino '+val+' Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnamesbabies'+val+'"  value="{{ $Booking->baby_surname2 }} "  required /></div></div>');
     else if(val == 3)
     $(wrapper).append('<div class="form-group row dyinpfld2"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo Bambino '+val+' Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnamesbabies'+val+'"  value="{{ $Booking->baby_surname3 }} "  required /></div></div>');
     else if(val == 4)
     $(wrapper).append('<div class="form-group row dyinpfld2"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo Bambino '+val+' Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnamesbabies'+val+'"  value="{{ $Booking->baby_surname4 }} "  required /></div></div>');

    }
    });


  $(".valueOfAdults").each(function () {
      var numoffld = $(this).html() - 1;
      var wrapper = $(".containerinputedit");
      var val=0;
      for (var i = 0; i < numoffld; i++) {
          val = i+1;
        if(val == 1)
        $(wrapper).append('<div class="form-group row dyinpfld"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo '+val+' Nome Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnames'+val+'"  value="{{ $Booking->guest_surname1 }} "  required /></div></div>');
        else if(val == 2)
        $(wrapper).append('<div class="form-group row dyinpfld"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo '+val+' Nome Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnames'+val+'"  value="{{ $Booking->guest_surname2 }} "  required /></div></div>');
        else if(val == 3)
        $(wrapper).append('<div class="form-group row dyinpfld"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo '+val+' Nome Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnames'+val+'"  value="{{ $Booking->guest_surname3 }} "  required /></div></div>');
        else if(val == 4)
        $(wrapper).append('<div class="form-group row dyinpfld"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo '+val+' Nome Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnames'+val+'"  value="{{ $Booking->guest_surname4 }} "  required /></div></div>');

        }
    });
}
  </script>
@endsection
