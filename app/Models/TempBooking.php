<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Http\Request;

class TempBooking extends Model
{
    use HasFactory;
    public function makeEngaged($place_id, $user_checkin){
      $this->client_ip = \Request::getClientIp(true);
      $this->place_id = $place_id;
      $this->user_checkin = $user_checkin;
      $value = uniqid('negombo_', true);
      Cookie::queue('cookBooking', $value, 20);
      $this->cookie =$value;
      $this->created = date("Y-m-d H:i:s");
      $this->save();
    }

    public function makeFree($place_id, $user_checkin){
      if(Cookie::get('cookBooking') != "null"){
        $value = Cookie::get('cookBooking');
        $tmpbook = TempBooking::where('cookie', $value)->first();
        if($tmpbook)
          $tmpbook->delete();
      }
    }

    public function isBusy($place_id, $user_checkin){

        $value = Cookie::get('cookBooking');
        $tmpbook = TempBooking::where('place_id', $place_id)
                                ->where('user_checkin', $user_checkin)
                                ->count();
        $tmpbook2 = TempBooking::where('cookie', $value)
                                ->where('place_id', $place_id)
                                ->where('user_checkin', $user_checkin)
                                ->count();

        if($tmpbook2>0) return false;
        if($tmpbook>0) return true;
        return false;
    }
}
