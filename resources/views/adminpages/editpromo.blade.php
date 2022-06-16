@extends('layouts.adminmaster')

@section('section')
  <div class="paddingTop50">

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Create Promo') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('admin.promocodes.update') }}">
                        @csrf
                        <input type="hidden" name="id" value="{{ $promo->id }}">
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Map Name') }}</label>
                            <div class="col-md-6">
                              <select class="form-control"  name="map_name">
                                @if ($promo->map_name == "For All")
                                  <option value="For All" selected>{{ __('For All') }}</option>
                                @else
                                  <option value="For All">{{ __('For All') }}</option>
                                @endif
                                @foreach ($maps as $map)
                                  @if ($promo->map_name == $map->map_name)
                                    <option value="{{ $map->map_name }}" selected>{{ $map->map_name }}</option>
                                  @else
                                    <option value="{{ $map->map_name }}">{{ $map->map_name }}</option>
                                  @endif
                                @endforeach
                              </select>
                            </div>

                        </div>

                        <div class="form-group row">
                          <label for="promocode" class="col-md-4 col-form-label text-md-right">{{ __('Promo User Name') }}</label>
                          <div class="col-md-6">
                              <input type="text" class="form-control" name="promo_user" value="{{ $promo->promo_user }}" required>
                          </div>
                        </div>

                        <div class="form-group row">
                            <label for="promocode" class="col-md-4 col-form-label text-md-right">{{ __('Promo Code') }}</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="promocode" value="{{ $promo->promocode }}" disabled>
                            </div>
                        </div>

                        <div class="form-group row">
                          <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Agreement Type') }}</label>
                          <div class="col-md-6">
                            <select class="form-control" name="promo_type">
                              @if ($promo->promo_type == "F2")
                                <option value="F2" selected>{{ __('F2') }}</option>
                                <option value="F3">{{ __('F3') }}</option>
                                <option value="F8">{{ __('F8') }}</option>
                              @elseif ($promo->promo_type == "F3")
                                <option value="F2">{{ __('F2') }}</option>
                                <option value="F3" selected>{{ __('F3') }}</option>
                                <option value="F8">{{ __('F8') }}</option>
                              @else
                                <option value="F2">{{ __('F2') }}</option>
                                <option value="F3">{{ __('F3') }}</option>
                                <option value="F8" selected>{{ __('F8') }}</option>
                              @endif
                            </select>
                          </div>
                      </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Promo Validity') }}</label>
                            <div class="col-md-6">
                              <select class="form-control" onchange="numberofusepeeker(this.value)" >
                                @if ($promo->numberofuse == "-1")
                                  <option value="-1" selected>{{ __('Unlimited') }}</option>
                                  <option value="limited">{{ __('Limited') }}</option>
                                @else
                                  <option value="-1">{{ __('Unlimited') }}</option>
                                  <option value="{{ $promo->numberofuse }}" selected>{{ __('Limited') }}</option>
                                @endif
                              </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="numberofadults" class="col-md-4 col-form-label text-md-right">Number of Adults</label>
                            <div class="col-md-6">
                                <input id="numberofadults" type="number" class="form-control" name="numberofadults" value="{{ $promo->numberofadults }}" min="1" required>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="numberofbabies" class="col-md-4 col-form-label text-md-right">Number of Babies</label>
                            <div class="col-md-6">
                                <input id="numberofbabies" type="number" class="form-control" name="numberofbabies" value="{{ $promo->numberofbabies }}" min="0" required>
                            </div>

                        </div>

                        <div class="form-group row">
                            <label for="discount" class="col-md-4 col-form-label text-md-right">{{ __('Number of Use') }}</label>
                            <div class="col-md-6">
                              @if ($promo->numberofuse == "-1")
                                <input id="numberofuse" type="number" class="form-control" name="numberofuse" value="{{ $promo->numberofuse }}" required disabled>
                              @else
                                <input id="numberofuse" min="1" type="number" class="form-control" name="numberofuse" value="{{ $promo->numberofuse }}" required>
                              @endif
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="discount" class="col-md-4 col-form-label text-md-right">{{ __('Discount Percentage') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="discount" value="{{ $promo->discount }}" required>

                            </div>

                        </div>


                        <div class="form-group row mb-0">
                          <div class="col-md-4 col-form-label text-md-right">
                            <a class="btn btn-danger" href="{{ route('admin.promocodes.delete', $promo->id) }}">Delete</a>
                          </div>
                          <div class="col-md-6 col-form-label text-md-right">
                            <button class="btn btn-primary" type="submit">{{ __('Update Promo') }}</button>
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
