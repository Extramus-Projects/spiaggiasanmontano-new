
  <!-- The Modal -->
  <div class="modal fade" id="exportExcelmodal">
    <div class="modal-dialog modal-dialog-centered modal-md">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Export Booking Delatis to Excel</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
          <span> {{ __('Export category wise or date wise booking details in spreadsheet') }}.</span>

          {{-- <a style="float:right;" href="{{ route('admin.booking.export') }}" class="btn btn-primary">{{ __('Export to Excel') }}</a><br><br><br> --}}

          <table class="table">
            <thead>
              <tr>
                <th>Export all booking</th>
                <th><a href="{{ route('admin.booking.export') }}" class="btn btn-success">{{ __('Export to Excel') }}</a></th>
              </tr>
              <tr>
                <th>Check-In Today({{ date("d M, Y") }}) Bookings</th>
                <th><a href="{{ route('admin.booking.export.date', date("Y-m-d")) }}" class="btn btn-success">{{ __('Export to Excel') }}</a></th>
              </tr>
              <tr>
                <th>Check-In Tomorrow({{ date("d M, Y", strtotime('+1 day')) }}) Bookings</th>
                <th><a href="{{ route('admin.booking.export.date', date("Y-m-d", strtotime('+1 day'))) }}" class="btn btn-success">{{ __('Export to Excel') }}</a></th>
              </tr>
              <tr>
                <th>Export All Entrance</th>
                <th><a href="{{ route('admin.booking.export.category', 'Entrance') }}" class="btn btn-success">{{ __('Export to Excel') }}</a></th>
              </tr>
              <tr>
                <th>Export All Agreements</th>
                <th><a href="{{ route('admin.booking.export.category', 'Agreements') }}" class="btn btn-success">{{ __('Export to Excel') }}</a></th>
              </tr>
              <tr>
                <th>Export All Paypal Payments</th>
                <th><a href="{{ route('admin.booking.export.category', 'Paypal') }}" class="btn btn-success">{{ __('Export to Excel') }}</a></th>
              </tr>
            </thead>
          </table>

        </div>

        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>

      </div>
    </div>
  </div>
