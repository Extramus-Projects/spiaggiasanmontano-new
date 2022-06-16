@extends('users.usermaster')




@section('section')

  <div class="container-fluid">
	  <div class="row-fluid">
		  <div class="col-3">
			  
		  </div>
		  <div class="col-6">
			    <div style="margin-top:30px;"></div>
	  <h1>E' possibile prenotare dal giorno {{ date('d/m/y', strtotime($start['booking_start'])) }} alle ore  {{ date('h:i:s', strtotime($start['booking_start'])) }}</h1>
	   <div style="margin-top:30px;"></div>
		  </div>
		  
		  <div class="col-3">
			  
		  </div>
	
	  </div>
  </div>


@endsection
