<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Booking;
use App\Models\TempBooking;
use Auth;

use DateTime;

class SettingAdmin extends Model
{
  use HasFactory;

    public function calculatePrice($place, $checkin, $checkout, $numOfadults){

    $numOfdays = date_diff(date_create($checkin), date_create($checkout));
    $numOfdays->d = $numOfdays->d+1;
    $price_tm = 0;
    $AllPrices = SettingAdmin::orderBy('id')->get();
	  
	// we use this to get all the days in between 2 dates!

    $dates_between = self::getDatesFromRange($checkin, $checkout);
	  
	// we are setting counters here to track how many times a day is seen!

    $counter_1 = 0;
    $counter_1_w = 0;

    $counter_2 = 0;
    $counter_2_w = 0;

    $counter_3 = 0;
    $counter_3_w = 0;

    $counter_4 = 0;
    $counter_4_w = 0;

    $counter_5 = 0;
    $counter_5_w = 0;


    $price_tm_1 = 0;
    $price_tm_2 = 0;
    $price_tm_3 = 0;
    $price_tm_4 = 0;
    $price_tm_5 = 0;


    
    $price_tm_1_w = 0;
    $price_tm_2_w = 0;
    $price_tm_3_w = 0;
    $price_tm_4_w = 0;
    $price_tm_5_w = 0;


    // var_dump($dates_between);


    for($i = 0;$i < count($dates_between);$i++){

      if (strtotime($dates_between[$i]) >= strtotime("2022-06-01") && strtotime($dates_between[$i]) <= strtotime("2022-06-11")){


        if(self::isWeekend($dates_between[$i])){
          $counter_1_w ++;
          if($numOfadults == 1){
            $price_tm_1_w = $AllPrices[0]->adult1_price_weekend * $counter_1_w;  
          }else if($numOfadults == 2){
            $price_tm_1_w = $AllPrices[0]->adult2_price_weekend * $counter_1_w;
          }else if($numOfadults == 3){
            $price_tm_1_w = $AllPrices[0]->adult3_price_weekend * $counter_1_w;
          }else if($numOfadults == 4){
            $price_tm_1_w = $AllPrices[0]->adult4_price_weekend * $counter_1_w;
        }

        }

        else{
          $counter_1 ++;
          if($numOfadults == 1){
            $price_tm_1 = $AllPrices[0]->adult1_price * $counter_1;  
          }else if($numOfadults == 2){
            $price_tm_1 = $AllPrices[0]->adult2_price * $counter_1;
          }else if($numOfadults == 3){
            $price_tm_1 = $AllPrices[0]->adult3_price * $counter_1;
          }else if($numOfadults == 4){
            $price_tm_1 = $AllPrices[0]->adult4_price * $counter_1;
        }

        }

  
      }

      
      if (strtotime($dates_between[$i]) >= strtotime("2022-06-12") && strtotime($dates_between[$i]) <= strtotime("2022-06-30")){


        if(self::isWeekend($dates_between[$i])){
          $counter_2_w ++ ;
          if($numOfadults == 1){
            $price_tm_2_w = $AllPrices[1]->adult1_price_weekend * $counter_2_w;
          }else if($numOfadults == 2){
            $price_tm_2_w = $AllPrices[1]->adult2_price_weekend * $counter_2_w;
          }else if($numOfadults == 3){
            $price_tm_2_w = $AllPrices[1]->adult3_price_weekend * $counter_2_w;
          }else if($numOfadults == 4){
            $price_tm_2_w = $AllPrices[1]->adult4_price_weekend * $counter_2_w;
          }

        }


        else{
			$counter_2 ++ ;
          if($numOfadults == 1){
            $price_tm_2 = $AllPrices[1]->adult1_price * $counter_2;  
          }else if($numOfadults == 2){
            $price_tm_2 = $AllPrices[1]->adult2_price * $counter_2;
          }else if($numOfadults == 3){
            $price_tm_2 = $AllPrices[1]->adult3_price * $counter_2;
          }else if($numOfadults == 4){
            $price_tm_2 = $AllPrices[1]->adult4_price * $counter_2;
          }

        }



      }

      
      if (strtotime($dates_between[$i]) >= strtotime("2022-07-01") && strtotime($dates_between[$i]) <= strtotime("2022-08-31")){

        if(self::isWeekend($dates_between[$i])){
          $counter_3_w ++ ;
          
        if($numOfadults == 1){
          $price_tm_3_w = $AllPrices[2]->adult1_price_weekend * $counter_3_w;  
        }else if($numOfadults == 2){
          $price_tm_3_w = $AllPrices[2]->adult2_price_weekend *$counter_3_w;
        }else if($numOfadults == 3){
          $price_tm_3_w = $AllPrices[2]->adult3_price_weekend *$counter_3_w;
        }else if($numOfadults == 4){
          $price_tm_3_w = $AllPrices[2]->adult4_price_weekend *$counter_3_w;
      }

        }

        else{

          $counter_3 ++ ;
          if($numOfadults == 1){
            $price_tm_3 = $AllPrices[2]->adult1_price * $counter_3;  
          }else if($numOfadults == 2){
            $price_tm_3 = $AllPrices[2]->adult2_price *$counter_3;
          }else if($numOfadults == 3){
            $price_tm_3 = $AllPrices[2]->adult3_price *$counter_3;
          }else if($numOfadults == 4){
            $price_tm_3 = $AllPrices[2]->adult4_price *$counter_3;
        }

        }

      }

      
      if (strtotime($dates_between[$i]) >= strtotime("2022-09-01") && strtotime($dates_between[$i]) <= strtotime("2022-09-11")){

        if(self::isWeekend($dates_between[$i])){

          $counter_4_w ++ ;
          if($numOfadults == 1){
            $price_tm_4_w = $AllPrices[3]->adult1_price_weekend * $counter_4_w;  
        }else if($numOfadults == 2){
            $price_tm_4_w = $AllPrices[3]->adult2_price_weekend * $counter_4_w;
        }else if($numOfadults == 3){
            $price_tm_4_w = $AllPrices[3]->adult3_price_weekend * $counter_4_w;
        }else if($numOfadults == 4){
            $price_tm_4_w = $AllPrices[3]->adult4_price_weekend * $counter_4_w;
        }

        }

        else{
          
          $counter_4 ++ ;
          if($numOfadults == 1){
            $price_tm_4 = $AllPrices[3]->adult1_price * $counter_4;  
        }else if($numOfadults == 2){
            $price_tm_4 = $AllPrices[3]->adult2_price * $counter_4;
        }else if($numOfadults == 3){
            $price_tm_4 = $AllPrices[3]->adult3_price * $counter_4;
        }else if($numOfadults == 4){
            $price_tm_4 = $AllPrices[3]->adult4_price * $counter_4;
        }

        }

         
      }

            
      if (strtotime($dates_between[$i]) >= strtotime("2022-09-12") && strtotime($dates_between[$i]) <= strtotime("2022-09-30")){

        if(self::isWeekend($dates_between[$i])){
          $counter_5_w ++;
          if($numOfadults == 1){
            $price_tm_5_w = $AllPrices[4]->adult1_price_weekend * $counter_5_w;   
        }else if($numOfadults == 2){
            $price_tm_5_w += $AllPrices[4]->adult2_price_weekend * $counter_5_w;
        }else if($numOfadults == 3){
            $price_tm_5_w += $AllPrices[4]->adult3_price_weekend * $counter_5_w;
        }else if($numOfadults == 4){
            $price_tm_5_w += $AllPrices[4]->adult4_price_weekend * $counter_5_w;
        }

        }

        else{
          $counter_5 ++;
          if($numOfadults == 1){
            $price_tm_5 = $AllPrices[4]->adult1_price * $counter_5;   
        }else if($numOfadults == 2){
            $price_tm_5 += $AllPrices[4]->adult2_price * $counter_5;
        }else if($numOfadults == 3){
            $price_tm_5 += $AllPrices[4]->adult3_price * $counter_5;
        }else if($numOfadults == 4){
            $price_tm_5 += $AllPrices[4]->adult4_price * $counter_5;
        }

        }

         
      }

    }

    return ($price_tm_1 + $price_tm_2 +  $price_tm_1_w + $price_tm_2_w +  $price_tm_3_w +  $price_tm_4_w+ $price_tm_5_w + $price_tm_3 +  + $price_tm_4 +  + $price_tm_5);

}

function isWeekend($date) {
  $weekDay = date('w', strtotime($date));
  return ($weekDay == 0 || $weekDay == 6);
}


public function getDatesFromRange($strDateFrom,$strDateTo)
{
    // takes two dates formatted as YYYY-MM-DD and creates an
    // inclusive array of the dates between the from and to dates.

    // could test validity of dates here but I'm already doing
    // that in the main script

    $aryRange = [];

    $iDateFrom = mktime(1, 0, 0, substr($strDateFrom, 5, 2), substr($strDateFrom, 8, 2), substr($strDateFrom, 0, 4));
    $iDateTo = mktime(1, 0, 0, substr($strDateTo, 5, 2), substr($strDateTo, 8, 2), substr($strDateTo, 0, 4));

    if ($iDateTo >= $iDateFrom) {
        array_push($aryRange, date('Y-m-d', $iDateFrom)); // first entry
        while ($iDateFrom<$iDateTo) {
            $iDateFrom += 86400; // add 24 hours
            array_push($aryRange, date('Y-m-d', $iDateFrom));
        }
    }
    return $aryRange;
}

  public function calculatePriceJuneOnly($place, $checkin, $checkout, $numOfadults)
  {
    $numOfdays = date_diff(date_create($checkin), date_create($checkout));
    $numOfdays->d = $numOfdays->d + 1;
    $price_tm = 0;
    if ($numOfadults == 1) {
      $price_tm = $this->adult1_price * $numOfdays->d;
    } else if ($numOfadults == 2) {
      $price_tm = $this->adult2_price * $numOfdays->d;
    } else if ($numOfadults == 3) {
      $price_tm = $this->adult3_price * $numOfdays->d;
    } else if ($numOfadults == 4) {
      $price_tm = $this->adult4_price * $numOfdays->d;
    }

    return $price_tm;
  }

  // for Monthly price calculation
  public function calculatePriceMonthly($place, $checkin, $checkout, $numOfadults)
  {

    $numOfdays = date_diff(date_create($checkin), date_create($checkout));
    $numOfdays->d = $this->datediffcount($checkin, $checkout);
    $price_tm = 0;

    $julyFullOccupied = false;
    // check if full month covered in july
    if (strtotime($checkin) <= strtotime("2022-05-01") && strtotime($checkout) >= strtotime('2022-05-31')) {
      // full month of july is occupied
      $julyFullOccupied = true;
      $numOfdays->d -= 1;
    }


    if ($this->datediffcount("2022-05-31", $checkout) >= 1 && strtotime($checkout) > strtotime("2022-05-31")) {

      $numofDaysoct = $this->datediffcount($checkin, "2022-05-31");
      $numofDaysoct2 = $this->datediffcount("2022-09-01", $checkout);
      $numofDaysoct6 = $this->datediffcount($checkin, $checkout);



      $numofDaysoutOct =  $numofDaysoct + $numofDaysoct6;
      if ($julyFullOccupied)
        $numofDaysoutOct -= 1;
      $monthCode = date("m", strtotime($checkout));
      $monthCode2 = date("m", strtotime($checkin));
      // price without oct
      if ($numOfadults == 1) {
        $price_tm = (($place->price1 / 30) * $numofDaysoutOct);
        if (($monthCode == "08" || $monthCode2 == "08") || (intval($monthCode) > 8 && intval($monthCode2) < 8)) {
          $price_tm += $place->price1;
        }
      } else if ($numOfadults == 2) {
        $price_tm = (($place->price2 / 30) * $numofDaysoutOct);

        if (($monthCode == "08" || $monthCode2 == "08") || (intval($monthCode) > 8 && intval($monthCode2) < 8)) {
          $price_tm += $place->price2;
        }
      } else if ($numOfadults == 3) {
        $price_tm = (($place->price3 / 30) * $numofDaysoutOct);
        if (($monthCode == "08" || $monthCode2 == "08") || (intval($monthCode) > 8 && intval($monthCode2) < 8)) {
          $price_tm += $place->price3;
        }
      } else {
        $price_tm = (($place->price4 / 30) * $numofDaysoutOct);
        if (($monthCode == "08" || $monthCode2 == "08") || (intval($monthCode) > 8 && intval($monthCode2) < 8)) {
          $price_tm += $place->price4;
        }
      }
      if ($numOfdays->d < 30) {
        // $price_tm += ($this->daily_fee * $numofDaysoutOct);
        $price_tm += $place->price1;
      }
    } else {
      //no oct month
      if ($numOfadults == 1) {
        $price_tm = (($place->price1 / 30) * $numOfdays->d);
      } else if ($numOfadults == 2) {
        $price_tm = (($place->price2 / 30) * $numOfdays->d);
      } else if ($numOfadults == 3) {
        $price_tm = (($place->price3 / 30) * $numOfdays->d);
      } else {
        $price_tm = (($place->price4 / 30) * $numOfdays->d);
      }

      if ($numOfdays->d < 30) {
        // $price_tm += ($this->daily_fee * $numOfdays->d);
        $price_tm += $place->price1;
      }
    }

    return round($price_tm);
  }

  public function recentActivaty($numOf)
  {
    $bookings = Booking::orderByDesc('id')->limit($numOf)->get();
    return $bookings;
  }

  public function bookingURLvalidation($checkin, $checkout)
  {


    if (isset($checkin) && isset($checkout) && $checkout >= $checkin) {
      $set_admin = SettingAdmin::orderBy('id')->first();


      if (strtotime($checkin) < strtotime($set_admin->season_start) || strtotime($checkout) < strtotime($set_admin->season_start)) {
        return false;
      }
      if (strtotime($checkin) > strtotime($set_admin->season_end) || strtotime($checkout) > strtotime($set_admin->season_end)) {
        return false;
      }

      if(Auth::user()){
        return true;
      }


      // check for booking is according to server time
      $makestr = '+' . ($set_admin->max_no_days) . " day";
      $close_h = date('H', strtotime($set_admin->closing_time));
      $close_hBig = date('H', strtotime($set_admin->closing_time) + 60 * 60);
      $close_m = date('i', strtotime($set_admin->closing_time));
      if ((date('H') >= $close_h && date('i') >= $close_m) || (date('H') >= $close_hBig)) {
        $today = date("Y-m-d H:i");
        $startday = date("Y-m-d", strtotime("+2 day"));
        $makestr = '+' . ($set_admin->max_no_days + 1) . " day";
      } else {
        $today = date("Y-m-d H:i");
        $startday = date("Y-m-d", strtotime("+1 day"));
      }

      $endday = date("Y-m-d", strtotime($checkin . $makestr));
      if ($startday <= $checkin && $endday >= $checkout) {
        // not 404 error
        return true;
      }

      // $numOFdays = $this->datediffcount($checkin, $checkout);
      // if($numOFdays <= $set_admin->max_no_days){
      //   return true;
      // }

    }

    return false;
  }


  public function datediffcount($checkin, $checkout)
  {
    $checkin = strtotime($checkin);
    $checkout = strtotime($checkout);
    $datediff = $checkout - $checkin;
    if (round($datediff / (60 * 60 * 24)) < 0) {
      return 0;
    }
    return round($datediff / (60 * 60 * 24)) + 1;
  }

  public function allPlaceReservationClosed($checkin, $checkout, $limitBooking = 72)
  {
    $firstdayofMonth =  date("Y-m-01", strtotime($checkin));
    $lastdayofMonth =  date("Y-m-31", strtotime($checkin));

    $firstdayofMonth2 =  date("Y-m-01", strtotime($checkout));
    $lastdayofMonth2 =  date("Y-m-31", strtotime($checkout));

    $numOfBook = Booking::where('user_checkin', '>=', $firstdayofMonth)
      ->where('user_checkin', '<=', $lastdayofMonth)
      ->orWhere('user_checkout', '>=', $firstdayofMonth)
      ->Where('user_checkout', '<=', $lastdayofMonth)->count();

    $numOfTempBooking = TempBooking::where('user_checkin', '>=', $firstdayofMonth)
      ->where('user_checkin', '<=', $lastdayofMonth)->count();

    $numOfBook = $numOfBook + $numOfTempBooking;
    if ($numOfBook >= $limitBooking) {
      return true;
    }
    return false;
  }

  public function checkWeekOrNot($checkin)
  {
    $day = date('D', strtotime($checkin));
    if ($day == "Mon") {
      return 0;
    } else if ($day == "Tue") {
      return 0;
    } else if ($day == "Wed") {
      return 0;
    } else if ($day == "Thu") {
      return 0;
    } else if ($day == "Fri") {
      return 0;
    } else if ($day == "Sat") {
      return 1;
    } else if ($day == "Sun") {
      return 1;
    }
    return 2;
  }
}
