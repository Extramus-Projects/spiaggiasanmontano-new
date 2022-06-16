@extends('layouts.adminmaster')

@section('section')
  <div class="paddingTop50">

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Edit Information') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('admin.profile.update') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $user->name }}" required autocomplete="name" autofocus>
                                <input  type="hidden" name="u_id" value="{{ $user->id }}">

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $user->email }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>





                        <div class="form-group row">
                            <label for="phone" class="col-md-4 col-form-label text-md-right">{{ __('Telefono') }}</label>

                            <div class="col-md-6">
                                <input id="phone" type="number" class="form-control @error('email') is-invalid @enderror" name="phone" value="{{ $user->phone }}" required autocomplete="phone">

                                @error('phone')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="blacklist" class="col-md-4 col-form-label text-md-right">{{ __('Black List') }}</label>

                            <div class="col-md-6">
                                {{--  <input id="phone" type="number" class="form-control @error('email') is-invalid @enderror" name="phone" value="{{ $user->phone }}" required autocomplete="phone">

                                @error('phone')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror  --}}
                                <div>
                                <input type="radio" id="si" name="blacklist" value="1" @if($user->black_list == '1') checked @endif />
                                <label for="si">Si</label>
                                </div>

                                <div>
                                <input type="radio" id="no" name="blacklist" value="0" @if($user->black_list == '0') checked @endif />
                                <label for="no">No</label>
                                </div>



                            </div>
                        </div>


                        @if (Auth::user()->role=="admin")
                          <div class="form-group row">
                            <label for="sel1" class="col-md-4 col-form-label text-md-right">{{ __('Role:') }}</label>
                            <div class="col-md-6">
                              <select class="form-control" name="role">
                                @if ($user->role=="admin")
                                  <option value ="user">{{ __('User') }}</option>
                                 <option value ="staff">{{ __('Staff') }}</option>
                                  <option value="admin" selected>{{ __('Admin') }}</option>
                                @elseif ($user->role=="user")
                                  <option value ="staff">{{ __('Staff') }}</option>
                                   <option value ="user" selected>{{ __('User') }}</option>
                                  <option value="admin" >{{ __('Admin') }}</option>
                                @else
                                  <option value ="staff" selected>{{ __('Staff') }}</option>
                                <option value ="user">{{ __('User') }}</option>
                                  <option value="admin">{{ __('Admin') }}</option>
                                @endif
                              </select>
                            </div>
                          </div>
                        @endif

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button style="float:right;" type="submit" class="btn btn-primary">
                                    {{ __('Update') }}
                                </button>
                                <a href="{{ url('admin/password/reset') }}">Reset Password</a>
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
