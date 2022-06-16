<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PromoCode extends Model
{
    use HasFactory;
    public function discountCalculate($promoCode, $place_price){
      $promo = PromoCode::where('promocode', $promoCode)->first();
      $flag = ($promo->discount)/100;
      return $place_price * $flag;
    }

    public function checkingValidity($promoCode, $map_name, $date){

      $date = $date+1;

        $promo_match_for_all = PromoCode::where('promocode', $promoCode)
                                          ->where('map_name', "For All")
                                          ->where('status', 1)
                                          ->count();
        if($promo_match_for_all){
          $promo_match_for_all = PromoCode::where('promocode', $promoCode)
                                            ->where('map_name', "For All")
                                            ->where('status', 1)
                                            ->first();
          if($promo_match_for_all->numberofuse >= $date || $promo_match_for_all->numberofuse == -1)
            return true;
        }
        $promo_match_for_map = PromoCode::where('promocode', $promoCode)
                                          ->where('map_name', $map_name)
                                          ->where('status', 1)
                                          ->count();
        if($promo_match_for_map){
          $promo_match_for_map = PromoCode::where('promocode', $promoCode)
                                            ->where('map_name', $map_name)
                                            ->where('status', 1)
                                            ->first();
          if($promo_match_for_map->numberofuse >= $date || $promo_match_for_all->numberofuse == -1)
            return true;
        }

        return false;
    }

    public function usedPromoOnce($promoCode, $date){
        $date += 1;
        $promomat = PromoCode::where('promocode', $promoCode)
                                ->where('status', 1)
                                ->first();

        if($promomat->numberofuse == -1) return true;

        if($promomat->numberofuse <= 0){
          $promomat->status=0;
          return false;
        }else{
          if($promomat->numberofuse < $date) return false;

          $promomat->numberofuse = $promomat->numberofuse - $date;
          if($promomat->numberofuse == 0)
            $promomat->status=0;
        }
        $promomat->save();
        return true;
    }
}
