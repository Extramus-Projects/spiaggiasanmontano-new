


function addFields(numoffld){
  var wrapper = $(".containeraddinput");
  $('.dyinpfld').remove();
  var val=0;
  for (var i = 1; i <= numoffld; i++) {
      val = i+1;
      $(wrapper).append('<div class="form-group dyinpfld"> <label for="surename">Nominativo '+val+' Nome Cognome:</label> <input class="form-control booking_inp_textbox_style" type="text" name="guestnames[]" required/></div>');
  }
  var numOfbbyoption = 4-numoffld;
  // preprocessing
  document.getElementById('hidden_op_style1').style.display ="none";
  document.getElementById('hidden_op_style2').style.display ="none";
  document.getElementById('hidden_op_style3').style.display ="none";
  document.getElementById('hidden_op_style4').style.display ="none";
  document.getElementById("numberofbabies").value='0';
  addFields2(0);

  for (var i = 1; i <= numOfbbyoption; i++) {
    document.getElementById("hidden_op_style"+i).style.display = 'block';
  }

  // if(numoffld==3){
  //   document.getElementById('hidden_op_style1').style.display ="block";
  // }
}

function addFields2(numoffld){
  var wrapper = $(".containeraddinput2");
  $('.dyinpfld2').remove();
  var val=0;
  for (var i = 0; i < numoffld; i++) {
      val = i+1;
      $(wrapper).append('<div class="form-group dyinpfld2"> <label for="surename">Nominativo Bambino '+val+' Nome Cognome:</label> <input class="form-control booking_inp_textbox_style" type="text" name="guestnamesbabies[]"/></div>');
  }
}


  /*$('.mapmarkblucls').click({
    $('#bookingStopedModal').modal({
        backdrop: 'static',
        keyboard: false
    })
  });
  $('.mapmarkorangecls').click({
    $('#bookingStopedModal').modal({
        backdrop: 'static',
        keyboard: false
    })
  });*/


  $(".mapmarkblucls").click(function(){
    $('#bookingHotels').modal({
        backdrop: 'static',
        keyboard: false
    });
  });

  $(".reserved").click(function(){
    $('#bookingReserved').modal({
        backdrop: 'static',
        keyboard: false
    });
  });

