<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\TempBooking;

class EngagedClear extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'clear:engaged-bookings';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This command will clear the temp booking tables after 15 minutes';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $tm = date("Y-m-d H:i:s", strtotime("-15 minutes"));
        $tempOldBookings = TempBooking::where('created', '<', $tm)->get();

        foreach ($tempOldBookings as $tempBook) {
          $tempBook->delete();
        }
    }
}
