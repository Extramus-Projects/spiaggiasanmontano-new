@extends('layouts.adminmaster')

@section('section')

  <div class="paddingTop50">

    <div class="row justify-content-center">
        <div class="col-md-9">
            <div class="card">
                <div class="card-header"> <h4>{{ __('Price Setting - From Opening till 11/06') }}</h4> </div>

                <div class="card-body">
                    <form method="POST" action="{{ route('admin.settings.update.prices') }}">
                        @csrf

                        <input type="hidden" name="id" value="{{ $set_admin[0]->id }}">






                        <h5>Week</h5>
                        <hr>
                        <div class="form-group row">
                            <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="week_adult1_price" value={{ $set_admin[0]->adult1_price }} required>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="week_adult2_price" value={{ $set_admin[0]->adult2_price }} required>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="week_adult3_price" value={{ $set_admin[0]->adult3_price }} required>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="week_adult4_price" value={{ $set_admin[0]->adult4_price }} required>
                            </div>
                        </div>

                        <h5>Weekend</h5>
                        <hr>
                        <div class="form-group row">
                            <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="weekend_adult1_price" value={{ $set_admin[0]->adult1_price_weekend }} required>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="weekend_adult2_price" value={{ $set_admin[0]->adult2_price_weekend }} required>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="weekend_adult3_price" value={{ $set_admin[0]->adult3_price_weekend }} required>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="weekend_adult4_price" value={{ $set_admin[0]->adult4_price_weekend }} required>
                            </div>
                        </div>




                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary" style="float:right;">
                                    {{ __('Save') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
  </div>

<div class="paddingTop50">

<div class="row justify-content-center">
    <div class="col-md-9">
        <div class="card">
            <div class="card-header"> <h4>{{ __('Price Setting - 12/06 - 30/06') }}</h4> </div>

            <div class="card-body">
                <form method="POST" action="{{ route('admin.settings.update.prices') }}">
                    @csrf

                    <input type="hidden" name="id" value="{{ $set_admin[1]->id }}">

                    <br>
                    <h5>Week</h5>
                    <hr>
                    <div class="form-group row">
                        <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult1_price" value={{ $set_admin[1]->adult1_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult2_price" value={{ $set_admin[1]->adult2_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult3_price" value={{ $set_admin[1]->adult3_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult4_price" value={{ $set_admin[1]->adult4_price }} required>
                        </div>
                    </div>

                    <h5>Weekend</h5>
                    <hr>
                    <div class="form-group row">
                        <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult1_price" value={{ $set_admin[1]->adult1_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult2_price" value={{ $set_admin[1]->adult2_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult3_price" value={{ $set_admin[1]->adult3_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult4_price" value={{ $set_admin[1]->adult4_price_weekend }} required>
                        </div>
                    </div>




                    <div class="form-group row mb-0">
                        <div class="col-md-6 offset-md-4">
                            <button type="submit" class="btn btn-primary" style="float:right;">
                                {{ __('Save') }}
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>


<div class="paddingTop50">

<div class="row justify-content-center">
    <div class="col-md-9">
        <div class="card">
            <div class="card-header"> <h4>{{ __('Price Setting - 1/07 - 31/08') }}</h4> </div>

            <div class="card-body">
                <form method="POST" action="{{ route('admin.settings.update.prices') }}">
                    @csrf

                    <input type="hidden" name="id" value="{{ $set_admin[2]->id }}">

                    <br>
                    <h5>Week</h5>
                    <hr>
                    <div class="form-group row">
                        <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult1_price" value={{ $set_admin[2]->adult1_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult2_price" value={{ $set_admin[2]->adult2_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult3_price" value={{ $set_admin[2]->adult3_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult4_price" value={{ $set_admin[2]->adult4_price }} required>
                        </div>
                    </div>

                    <h5>Weekend</h5>
                    <hr>
                    <div class="form-group row">
                        <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult1_price" value={{ $set_admin[2]->adult1_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult2_price" value={{ $set_admin[2]->adult2_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult3_price" value={{ $set_admin[2]->adult3_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult4_price" value={{ $set_admin[2]->adult4_price_weekend }} required>
                        </div>
                    </div>




                    <div class="form-group row mb-0">
                        <div class="col-md-6 offset-md-4">
                            <button type="submit" class="btn btn-primary" style="float:right;">
                                {{ __('Save') }}
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>


<div class="paddingTop50">

<div class="row justify-content-center">
    <div class="col-md-9">
        <div class="card">
            <div class="card-header"> <h4>{{ __('Price Setting - 1/09 - 11/09') }}</h4> </div>

            <div class="card-body">
                <form method="POST" action="{{ route('admin.settings.update.prices') }}">
                    @csrf

                    <input type="hidden" name="id" value="{{ $set_admin[3]->id }}">

                    <br>
                    <h5>Week</h5>
                    <hr>
                    <div class="form-group row">
                        <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult1_price" value={{ $set_admin[3]->adult1_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult2_price" value={{ $set_admin[3]->adult2_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult3_price" value={{ $set_admin[3]->adult3_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult4_price" value={{ $set_admin[3]->adult4_price }} required>
                        </div>
                    </div>

                    <h5>Weekend</h5>
                    <hr>
                    <div class="form-group row">
                        <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult1_price" value={{ $set_admin[3]->adult1_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult2_price" value={{ $set_admin[3]->adult2_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult3_price" value={{ $set_admin[3]->adult3_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult4_price" value={{ $set_admin[3]->adult4_price_weekend }} required>
                        </div>
                    </div>




                    <div class="form-group row mb-0">
                        <div class="col-md-6 offset-md-4">
                            <button type="submit" class="btn btn-primary" style="float:right;">
                                {{ __('Save') }}
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



<div class="row justify-content-center">
    <div class="col-md-9">
        <div class="card">
            <div class="card-header"> <h4>{{ __('Price Setting - 12/09 - Till Closing') }}</h4> </div>

            <div class="card-body">
                <form method="POST" action="{{ route('admin.settings.update.prices') }}">
                    @csrf

                    <input type="hidden" name="id" value="{{ $set_admin[4]->id }}">

                    <br>
                    <h5>Week</h5>
                    <hr>
                    <div class="form-group row">
                        <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult1_price" value={{ $set_admin[4]->adult1_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult2_price" value={{ $set_admin[4]->adult2_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult3_price" value={{ $set_admin[4]->adult3_price }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="week_adult4_price" value={{ $set_admin[4]->adult4_price }} required>
                        </div>
                    </div>

                    <h5>Weekend</h5>
                    <hr>
                    <div class="form-group row">
                        <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult1_price" value={{ $set_admin[4]->adult1_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult2_price" value={{ $set_admin[4]->adult2_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult3_price" value={{ $set_admin[4]->adult3_price_weekend }} required>

                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                        <div class="col-md-6">
                            <input type="number" step="0.01" class="form-control" name="weekend_adult4_price" value={{ $set_admin[4]->adult4_price_weekend }} required>
                        </div>
                    </div>




                    <div class="form-group row mb-0">
                        <div class="col-md-6 offset-md-4">
                            <button type="submit" class="btn btn-primary" style="float:right;">
                                {{ __('Save') }}
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


</div>

@endsection
