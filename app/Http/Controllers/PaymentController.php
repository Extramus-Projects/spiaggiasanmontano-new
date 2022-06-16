<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\Payment;
use PayPal\Api\PaymentExecution;
use PayPal\Api\Transaction;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Payer;
use PayPal\Api\RedirectUrls;
use PayPal\Api\InputFields;
use PayPal\Api\WebProfile;


use App\Models\SettingAdmin;
use App\Models\Booking;
use App\Models\Trans;
use App\Models\Place;
use App\Models\PromoCode;
use App\Models\TempBooking;
use App\Mail\SendMail;

use DateTime;

class PaymentController extends Controller
{
    //
    public function execute_payment(Request $request){

      $booking = new Booking;
      $booking->place_id = $request->place_id;
      $booking->user_fullname = $request->user_fullname;
      $booking->user_surname = $request->user_fullname;
      $booking->user_email = $request->user_email;
      $booking->user_phone = $request->user_phone;
      $booking->user_no_of_guest = $request->user_no_of_guest;
      $booking->user_no_of_babies = 0;
      if(isset($request->guest_surname1))
        $booking->guest_surname1 = $request->guest_surname1;
      if(isset($request->guest_surname2))
        $booking->guest_surname2 = $request->guest_surname2;
      if(isset($request->guest_surname3))
        $booking->guest_surname3 = $request->guest_surname3;

      if(isset($request->baby_surname1))
        $booking->baby_surname1 = $request->baby_surname1;
      if(isset($request->baby_surname2))
        $booking->baby_surname2 = $request->baby_surname2;
      if(isset($request->baby_surname3))
        $booking->baby_surname3 = $request->baby_surname3;
      if(isset($request->baby_surname4))
        $booking->baby_surname4 = $request->baby_surname4;

      $booking->user_checkin = $request->user_checkin;
      $booking->user_checkout = $request->user_checkout;
      $booking->user_payment_type = $request->user_payment_type;
      $booking->user_booking_tracking_id = $request->user_booking_tracking_id;

      $place = Place::where('place_id',$booking->place_id)->first();

      if(isset($request->user_promo)){
        $booking->user_promo = $request->user_promo;
      }
      $set_admin = SettingAdmin::orderBy('id')->first();



      // payment api execution

      $apiContext = new \PayPal\Rest\ApiContext(
              new \PayPal\Auth\OAuthTokenCredential(
                  'AXcrLX8Z1UF8hyT2wJxwbZtvl7huc9pNFK4lG8qKjCfRhkqNbi7O88eThumXIDMZsuhgtI4DEwtga7E0',     // ClientID
                  'EALmt6XBceDBAsWoMZkbZKuxlJtwL2JWWWCiTkenbo8KATHSUGPtMeBv6Pgnl2N_kztHgQ-WdYBJhOT8'      // ClientSecret
              )
      );
      // production
      // $apiContext = new \PayPal\Rest\ApiContext(
      //         new \PayPal\Auth\OAuthTokenCredential(
      //             'AcsDvk82yRlbHzHRmASiTUvAzAq72QDA-2btY6ikngfKAstt6S-EDjvt13tS1FmjDDdPmm6rf59llEo7',     // ClientID
      //             'EFnZnRPRO572OwRDF7LF2mIXJB2J-19P7LbNxS8OTT5HpAJ8P8dhHiw_kxRHQfJFeARDE8dWOddttpiy'      // ClientSecret
      //         )
      // );

      $apiContext->setConfig([
            'mode' => 'sandbox'
      ]);

      $paymentId = $request->paymentID;
      $payment = Payment::get($paymentId, $apiContext);

      $execution = new PaymentExecution();
      $execution->setPayerId($request->payerID);

      try {
        $result = $payment->execute($execution, $apiContext);
        $booking->paid_ammount = $result->transactions[0]->amount->total;
        $booking->is_approved = 1;


        if(Auth::user()){
          $booking->creator_name = Auth::user()->name;
        }

        $booking->save();
        $maparray = array('place'=> $place, 'booking'=> $booking, 'set_admin' => $set_admin);
        // \Mail::to($booking->user_email)->send(new SendMail($maparray));

        $temp_book = new TempBooking;
        $temp_book->makeFree($booking->place_id, $booking->checkin);

        $trns = new Trans;
        $trns->payid = $result->id;
        $trns->payer_email = $result->payer->payer_info->email;
        $trns->payer_name = $result->payer->payer_info->first_name." ".$result->payer->payer_info->last_name;
        $trns->amount = $result->transactions[0]->amount->total;
        $trns->booking_id = $booking->id;
        $trns->save();
      }catch (Exception $ex) {
          echo $ex;
          exit(1);
      }

      return $booking;
    }

    public function create_payment(Request $request){



      $booking = new Booking;
      $booking->place_id = $request->place_id;
      $booking->user_fullname = $request->user_fullname;
      $booking->user_surname = $request->user_fullname;
      $booking->user_email = $request->user_email;
      $booking->user_phone = $request->user_phone;
      $booking->user_no_of_guest = $request->user_no_of_guest;
      $booking->user_no_of_babies = 0;
      if(isset($request->guest_surname1))
        $booking->guest_surname1 = $request->guest_surname1;
      if(isset($request->guest_surname2))
        $booking->guest_surname2 = $request->guest_surname2;
      if(isset($request->guest_surname3))
        $booking->guest_surname3 = $request->guest_surname3;

      if(isset($request->baby_surname1))
        $booking->baby_surname1 = $request->baby_surname1;
      if(isset($request->baby_surname2))
        $booking->baby_surname2 = $request->baby_surname2;
      if(isset($request->baby_surname3))
        $booking->baby_surname3 = $request->baby_surname3;

      $booking->user_checkin = $request->user_checkin;
      $booking->user_checkout = $request->user_checkout;
      $booking->user_booking_tracking_id = $request->user_booking_tracking_id;
      $datetime1 = new DateTime($booking->user_checkin);
      $datetime2 = new DateTime($booking->user_checkout);
      $interval = $datetime1->diff($datetime2);
      $numberofdays = $interval->format('%a');

      $booking->user_payment_type = $request->user_payment_type;

      $place = Place::where('place_id',$booking->place_id)->first();

      // ToDo calculate place price
      $set_admin = SettingAdmin::orderBy('id')->first();
      $price_temp = $set_admin->calculatePrice($place, $booking->user_checkin, $booking->user_checkout, $booking->user_no_of_guest);
      $place->price =  $price_temp;
      // promo use
      $promo = $request->user_promo;
      $promoCode = new PromoCode;
      $discount = 0;

      if($promoCode->checkingValidity($promo, $place->map_name, $numberofdays) && $promoCode->usedPromoOnce($promo, $numberofdays)){
        $booking->user_promo = $promo;
        $discount = $promoCode->discountCalculate($booking->user_promo, $place->price);
        $place->price = $place->price - $discount;
      }



// payment api


      $apiContext = new \PayPal\Rest\ApiContext(
              new \PayPal\Auth\OAuthTokenCredential(
                  'AXcrLX8Z1UF8hyT2wJxwbZtvl7huc9pNFK4lG8qKjCfRhkqNbi7O88eThumXIDMZsuhgtI4DEwtga7E0',     // ClientID
                  'EALmt6XBceDBAsWoMZkbZKuxlJtwL2JWWWCiTkenbo8KATHSUGPtMeBv6Pgnl2N_kztHgQ-WdYBJhOT8'      // ClientSecret
              )
      );

      // production
      // $apiContext = new \PayPal\Rest\ApiContext(
      //         new \PayPal\Auth\OAuthTokenCredential(
      //             'AcsDvk82yRlbHzHRmASiTUvAzAq72QDA-2btY6ikngfKAstt6S-EDjvt13tS1FmjDDdPmm6rf59llEo7',     // ClientID
      //             'EFnZnRPRO572OwRDF7LF2mIXJB2J-19P7LbNxS8OTT5HpAJ8P8dhHiw_kxRHQfJFeARDE8dWOddttpiy'      // ClientSecret
      //         )
      // );
      $apiContext->setConfig([
            'mode' => 'sandbox'
      ]);

      $payer = new Payer();
      $payer->setPaymentMethod("paypal");

      $item1 = new Item();
      $item1->setName('Negombo Place ID #'.$booking->place_id)
          ->setCurrency($place->currency_type)
          ->setQuantity(1)
          ->setSku($booking->place_id) // Similar to `item_number` in Classic API
          ->setPrice($place->price);


      $itemList = new ItemList();
      $itemList->setItems(array($item1));

      $details = new Details();
      $details->setShipping(0)
          ->setTax(0)
          ->setSubtotal($place->price);

      $amount = new Amount();
      $amount->setCurrency($place->currency_type)
          ->setTotal($place->price)
          ->setDetails($details);

      $transaction = new Transaction();
      $transaction->setAmount($amount)
          ->setItemList($itemList)
          ->setDescription("Payment description")
          ->setInvoiceNumber(uniqid());


      $redirectUrls = new RedirectUrls();
      $redirectUrls->setReturnUrl("https://prenotazioni.negombo.it/booking/ExecutePayment.php?success=true")
          ->setCancelUrl("https://prenotazioni.negombo.it/booking/ExecutePayment.php?success=false");

          // Add NO SHIPPING OPTION
      $inputFields = new InputFields();
      $inputFields->setNoShipping(1);

      $webProfile = new WebProfile();
      $webProfile->setName('test' . uniqid())->setInputFields($inputFields);

      $webProfileId = $webProfile->create($apiContext)->getId();

      $payment = new Payment();
      $payment->setExperienceProfileId($webProfileId); // no shipping
      $payment->setIntent("sale")
          ->setPayer($payer)
          ->setRedirectUrls($redirectUrls)
          ->setTransactions(array($transaction));
      $request = clone $payment;
      try {
          $payment->create($apiContext);
      }catch (Exception $ex) {
        echo $ex;
        exit(1);
      }
      return $payment;
    }
}
