<style>
.centerContainer {
  position: absolute;
  top: 50%;
  left: 50%;
  -moz-transform: translateX(-50%) translateY(-50%);
  -webkit-transform: translateX(-50%) translateY(-50%);
  transform: translateX(-50%) translateY(-50%);
}
body{
  background:#CFD8DC;
}
</style>

<div class="centerContainer">
    <h2>{{ __('If you have successfully paid, we need to complete your booking') }}!</h2>
    <h3>{{ __('Follow these simple instructions') }}:</h3>
    <ol>
      <li>{{ __('Click on the red "Close" button') }}.</li>
      <li>{{ __('Click on the green "Continue" button') }}.</li>
      <li>{{ __('Download the document with the reservation') }}</li>
    </ol>

    <span>{{ __('It is important to carry out these operations otherwise there could be problems in the booking') }}.</span>
</div>
