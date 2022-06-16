<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use emanueledona\unicreditApi\UnicreditApi;
use DateTime;
use App\Models\TempBooking;
use App\Models\TempbookingCard;

class Booking extends Model
{
  use HasFactory;
  public function check_availability(){
      // check the place id matching first
      $temp_book = new TempBooking;
      if($temp_book->isBusy($this->place_id, $this->checkin)) return false;
      $status = 0;
      $booking = new Booking;
      $book_id=$this->id;
      if($book_id == null){
        $status = $booking->place_is_available($this->place_id, $this->user_checkin, $this->user_checkout);
        $status = $booking->place_is_available_subs($this->place_id, $this->user_checkin, $this->user_checkout, $status);
      }else{
        $compareBooking = Booking::where('id', $book_id)->get();
        foreach ($compareBooking as $booking) {
        if($booking->place_id == $this->place_id){
          $status = $booking->edit_place_is_available($book_id,$this->place_id, $this->user_checkin, $this->user_checkout);
          $status = $booking->edit_place_is_available_subs($book_id,$this->place_id, $this->user_checkin, $this->user_checkout, $status);
        }else{
          $status = $booking->place_is_available($this->place_id, $this->user_checkin, $this->user_checkout);
          $status = $booking->place_is_available_subs($this->place_id, $this->user_checkin, $this->user_checkout, $status);
        }
      }
      }
      // to avoid gray and green
      if($status==0) return true;
      else return false;

    }
	
	
	    public function max_reservation(){
      $num_of_bookings = Booking::where("user_checkin", ">=", date("2022-06-01"))
      ->get()->count();

      // echo(Booking::where("user_checkin", ">=", date("2022-06-01"))
      // ->get()->count());

      return  $num_of_bookings;
    }






  public function isFreeforFullmonth($place_id, $checkin, $checkout, $prev_val)
  {
    $firstdayofMonth =  date("Y-m-01", strtotime($checkin));
    $lastdayofMonth =  date("Y-m-31", strtotime($checkin));
    $numOfBook = Booking::where('place_id', $place_id)
      ->where('user_checkin', '>=', $firstdayofMonth)
      ->where('user_checkin', '<=', $lastdayofMonth)->count();

    if (!$numOfBook) {
      return 2;
    }
    return $prev_val;
  }

  public function place_is_available($place_id, $userCheckin, $usercheckout)
  {

    $got1dayeirlier = date('Y-m-d', strtotime("-1 day", strtotime($userCheckin)));
    $got1daylater = date('Y-m-d', strtotime("+15 day", strtotime($userCheckin)));

    $temp_book = new TempBooking;
    if ($temp_book->isBusy($place_id, $userCheckin)) return 2;
    // ToDo try to make lower complexity
    $bookings_exits = Booking::where('place_id', $place_id)
      // ->where('user_checkin', '>', $got1dayeirlier)
      // ->orWhere('user_checkin', '<', $got1daylater)
      // ->where('user_checkout', '>=', $usercheckout)
      ->where('is_approved', 1)->get();

    foreach ($bookings_exits as $booking) {
      if ($userCheckin >= $booking->user_checkin && $userCheckin <= $booking->user_checkout)
        return 2;
      if ($usercheckout >= $booking->user_checkin && $usercheckout <= $booking->user_checkout)
        return 2;
      if ($userCheckin <= $booking->user_checkin && $usercheckout >= $booking->user_checkout)
        return 2;
    }
    return 0;
  }

  public function place_is_available_subs($place_id, $userCheckin, $usercheckout, $status)
  {
    // make all returns 2 replace with 1 for gray
    $temp_book = new TempBooking;
    if ($temp_book->isBusy($place_id, $userCheckin)) return $status;

    $bookings_exits = Booking::where('place_id', $place_id)
      ->where('is_approved', 1)
      ->where('user_payment_type', 'Agreements')->get();
    foreach ($bookings_exits as $booking) {
      if ($userCheckin >= $booking->user_checkin && $userCheckin <= $booking->user_checkout)
        return 2;
      if ($usercheckout >= $booking->user_checkin && $usercheckout <= $booking->user_checkout)
        return 2;
      if ($userCheckin <= $booking->user_checkin && $usercheckout >= $booking->user_checkout)
        return 2;
    }
    return $status;
  }

  //editing reservation
  public function edit_place_is_available($book_ID, $place_id, $userCheckin, $usercheckout)
  {

    $got1dayeirlier = date('Y-m-d', strtotime("-1 day", strtotime($userCheckin)));
    $got1daylater = date('Y-m-d', strtotime("+15 day", strtotime($userCheckin)));

    $temp_book = new TempBooking;
    if ($temp_book->isBusy($place_id, $userCheckin)) return 2;
    // ToDo try to make lower complexity
    $bookings_exits = Booking::where('place_id', $place_id)
      // ->where('user_checkin', '>', $got1dayeirlier)
      // ->orWhere('user_checkin', '<', $got1daylater)
      // ->where('user_checkout', '>=', $usercheckout)
      ->where('is_approved', 1)
      ->whereNotIn('id', [$book_ID])
      ->get();
    foreach ($bookings_exits as $booking) {
      if ($userCheckin >= $booking->user_checkin && $userCheckin <= $booking->user_checkout)
        return 2;
      if ($usercheckout >= $booking->user_checkin && $usercheckout <= $booking->user_checkout)
        return 2;
      if ($userCheckin <= $booking->user_checkin && $usercheckout >= $booking->user_checkout)
        return 2;
    }
    return 0;
  }

  //editing reservation
  public function edit_place_is_available_subs($book_ID, $place_id, $userCheckin, $usercheckout, $status)
  {
    // make all returns 2 replace with 1 for gray
    $temp_book = new TempBooking;
    if ($temp_book->isBusy($place_id, $userCheckin)) return $status;

    $bookings_exits = Booking::where('place_id', $place_id)
      ->where('is_approved', 1)
      ->where('user_payment_type', 'Agreements')
      ->whereNotIn('id', [$book_ID])
      ->get();
    foreach ($bookings_exits as $booking) {
      if ($userCheckin >= $booking->user_checkin && $userCheckin <= $booking->user_checkout)
        return 2;
      if ($usercheckout >= $booking->user_checkin && $usercheckout <= $booking->user_checkout)
        return 2;
      if ($userCheckin <= $booking->user_checkin && $usercheckout >= $booking->user_checkout)
        return 2;
    }
    return $status;
  }




  // https://pagamenti.unicredit.it/UNI_CG_BO_WEB/
  // public function paywithCard($place_price)
  // {
  //   // implementation of api
  //   $unicredit = new UnicreditApi();
  //   // $args = array('serverURL' => 'https://testeps.netswgroup.it/UNI_CG_SERVICES/services',
  //   $args = array(
  //     'serverURL' => 'https://pagamenti.unicredit.it/UNI_CG_SERVICES/services',
  //     'timeout' => 15000,
  //     /*'tid' => 'UNI_DEDICATED',
  //      'kSig' => 'UNI_TESTKEY',*/
  //     'tid' => '30748199',
  //     'kSig' => '3a0j4g6c0g4h1i9j0j1c3a0j4g6j0j1c',
  //     'trType' => 'PURCHASE',
  //     'currencyCode' => 'EUR',
  //     'langID' => 'IT',
  //     'shopUserRef' => $this->user_email,
  //     'shopID' => $this->user_booking_tracking_id,
  //     'amount' => $place_price * 100,
  //     'addInfo1' => "Place id: " . $this->place_id,
  //     'addInfo2' => "Check-in: " . $this->user_checkin,
  //     'addInfo3' => "Check-out: " . $this->user_checkout,
  //     'addInfo4' => "NumOfAdults: " . $this->user_no_of_guest,
  //     'addInfo5' => "Phone: " . $this->user_phone,
  //     'notifyURL' => 'http://temp.spiaggiasanmontano.it/booking/confirm/card/' . $this->user_booking_tracking_id,
  //     'errorURL' => 'http://temp.spiaggiasanmontano.it/404',
  //     // 'notifyURL' => 'http://127.0.0.1:8000/booking/confirm/card/'.$this->user_booking_tracking_id,
  //     // 'errorURL' => 'http://127.0.0.1:8000/404',
  //   );
  //   $redirect = $unicredit->init($args);
  //   // echo $unicredit->getPaymentID();
  //   return  $arrayName = array('redirect' => $redirect, 'paymentID' => $unicredit->getPaymentID());;
  // }

	
  public function paywithCard($place_price)
  {
    // implementation of api
    $unicredit = new UnicreditApi();
    // $args = array('serverURL' => 'https://testeps.netswgroup.it/UNI_CG_SERVICES/services',
    $args = array(
      'serverURL' => 'https://pagamenti.unicredit.it/UNI_CG_SERVICES/services',
      'timeout' => 15000,
      // 'tid' => 'UNI_DEDICATED',
      // 'kSig' => 'UNI_TESTKEY',
      'tid' => '30687553',
      'kSig' => '3a0j4g6c0f8g5e3j0j1a3a0j4g6j0j1a',
      'trType' => 'PURCHASE',
      'currencyCode' => 'EUR',
      'langID' => 'IT',
      'shopUserRef' => $this->user_email,
      'shopID' => $this->user_booking_tracking_id,
      'amount' => $place_price * 100,
      'addInfo1' => "Place id: " . $this->place_id,
      'addInfo2' => "Check-in: " . $this->user_checkin,
      'addInfo3' => "Check-out: " . $this->user_checkout,
      'addInfo4' => "NumOfAdults: " . $this->user_no_of_guest,
      'addInfo5' => "Phone: " . $this->user_phone,
      'notifyURL' => 'http://spiaggiasanmontano.it/booking/confirm/card/' . $this->user_booking_tracking_id,
      'errorURL' => 'http://spiaggiasanmontano.it/404',
      // 'notifyURL' => 'http://127.0.0.1:8000/booking/confirm/card/'.$this->user_booking_tracking_id,
      // 'errorURL' => 'http://127.0.0.1:8000/404',
    );
    $redirect = $unicredit->init($args);
    // echo $unicredit->getPaymentID();
    return  $arrayName = array('redirect' => $redirect, 'paymentID' => $unicredit->getPaymentID());;
  }




  public function verifyPayment($paymentID)
  {
    $unicredit = new UnicreditApi();
    // $args = array('serverURL' => 'https://testeps.netswgroup.it/UNI_CG_SERVICES/services',
    $args = array(
      'serverURL' => 'https://pagamenti.unicredit.it/UNI_CG_SERVICES/services',
      'timeout' => 15000,
      // 'tid' => 'UNI_DEDICATED',
      // 'kSig' => 'UNI_TESTKEY',
      'tid' => '30687553',
      'kSig' => '3a0j4g6c0f8g5e3j0j1a3a0j4g6j0j1a',
      'shopID' => $this->user_booking_tracking_id,
    );
    $response = $unicredit->verify($paymentID, $args);
    return $response;
  }

  function time_elapsed_string($datetime, $full = false)
  {
    $now = new DateTime;
    $ago = new DateTime($datetime);
    $diff = $now->diff($ago);

    $diff->w = floor($diff->d / 7);
    $diff->d -= $diff->w * 7;

    $string = array(
      'y' => 'year',
      'm' => 'month',
      'w' => 'week',
      'd' => 'day',
      'h' => 'hour',
      'i' => 'minute',
      's' => 'second',
    );
    foreach ($string as $k => &$v) {
      if ($diff->$k) {
        $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? 's' : '');
      } else {
        unset($string[$k]);
      }
    }

    if (!$full) $string = array_slice($string, 0, 1);
    return $string ? implode(', ', $string) . ' ago' : 'just now';
  }

  public function datediffcount($checkin, $checkout)
  {
    $checkin = strtotime($checkin);
    $checkout = strtotime($checkout);
    $datediff = $checkout - $checkin;
    if (round($datediff / (60 * 60 * 24)) < 0) {
      return 0;
    }
    return round($datediff / (60 * 60 * 24) + 1);
  }
}
