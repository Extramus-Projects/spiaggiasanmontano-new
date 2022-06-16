@extends('layouts.adminmaster')

@section('section')

<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>

  <div class="paddingTop50">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">{{ __('Email Settings') }}</div>

                  <div class="card-body">
                      <form method="POST" action="{{ route('admin.settings.email.update') }}">
                        @csrf
                        <input type="hidden" name="id" value={{ $set_admin->id }}>
                        <textarea id="booking_email_content" name="booking_email_content">{{ $set_admin->booking_email_content }}</textarea><br><br>
                        <button type="submit" class="btn btn-primary" style="float:right;">
                            {{ __('Save') }}
                        </button>
                      </form>
                  </div>
              </div>
          </div>
    </div>
  </div>

  <script>
     CKEDITOR.replace( 'booking_email_content', {
       height: 400
     } );
 </script>
@endsection
