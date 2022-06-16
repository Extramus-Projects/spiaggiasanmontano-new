$('#body-row .collapse').collapse('hide');

// Collapse/Expand icon
$('#collapse-icon').addClass('fa-angle-double-left');

// Collapse click
$('[data-toggle=sidebar-colapse]').click(function() {
    SidebarCollapse();
});

function SidebarCollapse () {
    $('.menu-collapsed').toggleClass('d-none');
    $('.sidebar-submenu').toggleClass('d-none');
    $('.submenu-icon').toggleClass('d-none');
    $('#sidebar-container').toggleClass('sidebar-expanded sidebar-collapsed');

    // Treating d-flex/d-none on separators with title
    var SeparatorTitle = $('.sidebar-separator-title');
    if ( SeparatorTitle.hasClass('d-flex') ) {
        SeparatorTitle.removeClass('d-flex');
    } else {
        SeparatorTitle.addClass('d-flex');
    }

    // Collapse/Expand icon
    $('#collapse-icon').toggleClass('fa-angle-double-left fa-angle-double-right');
}


// get coordinates from images
function cnvs_getCoordinates(e){
        x=e.offsetX;
        y=e.offsetY;
        if(x<0) x=0;
        if(y<0) y=0;
        document.getElementById("xycoordinates").innerHTML="Coordinates: (" + x + "," + y + ")";
        document.getElementById("iptcor1").value= x;
        document.getElementById("iptcor2").value= y;
        $('#marker').css('left', e.offsetX).css('top', e.offsetY).show();

    }

    // get coordinates from small images
function cnvs_getCoordinates_small(e){
        x=e.offsetX;
        y=e.offsetY;
        if(x<0) x=0;
        if(y<0) y=0;
        document.getElementById("xycoordinates").innerHTML="Coordinates: (" + x + "," + y + ")";
        document.getElementById("iptcor1S").value= x;
        document.getElementById("iptcor2S").value= y;
        // $('#markerS').css('left', e.offsetX).css('top', e.offsetY).show();

    }


    // data tables

    $(document).ready(function() {
      $('#example_booking').DataTable({
        "order": [[ 0, "desc" ]],
        dom: 'lBfrtip',
        buttons: [
          'copy', 'csv', 'excel', 'pdf', 'print'
      ]
      });
  } );

  $(document).ready(function() {
      $('#example').DataTable({

      });
  } );




    function addFieldsadmin(numoffld){
      var wrapper = $(".containerinput");
      $('.dyinpfld').remove();
      var val=0;
      for (var i = 0; i < numoffld; i++) {
          val = i+1;
          $(wrapper).append('<div class="form-group row dyinpfld"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo '+val+' Nome Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnames[]"/></div></div>');
      }
      var numOfbbyoption = 4-numoffld;
      // preprocessing
      document.getElementById('hidden_op_style1').style.display ="none";
      document.getElementById('hidden_op_style2').style.display ="none";
      document.getElementById('hidden_op_style3').style.display ="none";
      document.getElementById('hidden_op_style4').style.display ="none";
      document.getElementById("numberofbabies").value='0';
      addFieldsadmin2(0);

      for (var i = 1; i <= numOfbbyoption; i++) {
        document.getElementById("hidden_op_style"+i).style.display = 'block';
      }

      if(numoffld==3){
        document.getElementById('hidden_op_style1').style.display ="block";
      }
    }

    function addFieldsadmin2(numoffld){
      var wrapper = $(".containerinput2");
      $('.dyinpfld2').remove();
      var val=0;
      for (var i = 0; i < numoffld; i++) {
          val = i+1;
          $(wrapper).append('<div class="form-group row dyinpfld2"> <label for="surename" class="col-md-4 col-form-label text-md-right">Nominativo Bambino '+val+' Cognome:</label> <div class="col-md-6"> <input class="form-control booking_inp_textbox_style" type="text" name="guestnamesbabies[]"/></div></div>');
      }
    }



    function numberofusepeeker(numoffld){
      if(numoffld=="-1"){
        document.getElementById('numberofuse').value =-1;
        document.getElementById('numberofuse').disabled =true;
      }else{
        $('#numberofuse').removeAttr('value');
        document.getElementById('numberofuse').disabled =false;
        document.getElementById('numberofuse').min ="1";
      }

    }


    function inputpromovalidity(numm){
      if(numm==-1){
        document.getElementById('numberofuse').disabled =true;
        document.getElementById('numberofuse').value =-1;
      }else{
        $('#numberofuse').removeAttr('value');
        document.getElementById('numberofuse').disabled =false;
        document.getElementById('numberofuse').min ="1";
      }
    }
