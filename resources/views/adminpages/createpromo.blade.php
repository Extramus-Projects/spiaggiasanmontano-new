@extends('layouts.adminmaster')

@section('section')
  <div class="paddingTop50">

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Create Promo') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('admin.promocodes.add') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Map Name') }}</label>
                            <div class="col-md-6">
                              <select class="form-control"  name="map_name">
                                <option value="{{ __('For All') }}">{{ __('For All') }}</option>
                                @foreach ($maps as $map)
                                  <option value="{{ $map->map_name }}">{{ $map->map_name }}</option>
                                @endforeach
                              </select>
                            </div>

                        </div>

                        <div class="form-group row">
                            <label for="promocode" class="col-md-4 col-form-label text-md-right">{{ __('Promo User Name') }}</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="promo_user" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="promocode" class="col-md-4 col-form-label text-md-right">{{ __('Promo Code') }}</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="promocode" required>
                                @include('layouts.errormessages')
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Agreement Type') }}</label>
                            <div class="col-md-6">
                              <select class="form-control" name="promo_type">
                                  <option value="F2" selected>{{ __('F2') }}</option>
                                  <option value="F3">{{ __('F3') }}</option>
                                  <option value="F8">{{ __('F8') }}</option>
                              </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Promo Validity') }}</label>
                            <div class="col-md-6">
                              <select class="form-control" onchange="inputpromovalidity(this.value)" >
                                  <option value="-1">{{ __('Unlimited') }}</option>
                                  <option value="1" selected>{{ __('Limited') }}</option>
                              </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="numberofadults" class="col-md-4 col-form-label text-md-right">Number of Adults</label>
                            <div class="col-md-6">
                                <input id="numberofadults" type="number" class="form-control" name="numberofadults" min="1" required>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="numberofbabies" class="col-md-4 col-form-label text-md-right">Number of Babies</label>
                            <div class="col-md-6">
                                <input id="numberofbabies" type="number" class="form-control" name="numberofbabies" min="0" required>
                            </div>

                        </div>

                        <div class="form-group row">
                            <label for="discount" class="col-md-4 col-form-label text-md-right">{{ __('Number of Use') }}</label>
                            <div class="col-md-6">
                                <input id="numberofuse" type="number" class="form-control" name="numberofuse" required>

                            </div>

                        </div>

                        <div class="form-group row">
                            <label for="discount" class="col-md-4 col-form-label text-md-right">{{ __('Discount Percentage') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="discount" placeholder="10.00" required>

                            </div>

                        </div>


                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary" style="float:right;">
                                    {{ __('Add Promo') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
  </div>
  <div style="padding-top: 150px;"></div>
  @endsection
