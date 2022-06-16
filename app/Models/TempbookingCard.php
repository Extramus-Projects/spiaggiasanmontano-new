<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Booking;

class TempbookingCard extends Model
{
    use HasFactory;
    public function loadAndSavedata(Booking $booking, $paymentID){
      $this->place_id = $booking->place_id;
      $this->user_fullname = $booking->user_fullname;
      $this->payer_name = $booking->payer_name;
      $this->user_surname = $booking->user_fullname;
      $this->user_email = $booking->user_email;
      $this->user_phone = $booking->user_phone;
      $this->user_no_of_guest = $booking->user_no_of_guest;
      $this->user_no_of_babies = $booking->user_no_of_babies;
      $this->guest_surname1 = $booking->guest_surname1;
      $this->guest_surname2 = $booking->guest_surname2;
      $this->guest_surname3 = $booking->guest_surname3;
      $this->baby_surname1 = $booking->baby_surname1;
      $this->baby_surname2 = $booking->baby_surname2;
      $this->baby_surname3 = $booking->baby_surname3;
      $this->baby_surname4 = $booking->baby_surname4;
      $this->user_checkin = $booking->user_checkin;
      $this->user_checkout = $booking->user_checkout;
      $this->user_promo = $booking->user_promo;
      $this->user_payment_type = $booking->user_payment_type;
      $this->user_booking_tracking_id = $booking->user_booking_tracking_id;
      $this->paid_ammount = $booking->paid_ammount;
      $this->user_card_paymentid = $paymentID;
      $this->save();
    }
}
