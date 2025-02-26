<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RentalPeriodSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    protected $period = [
        ['period' => 3],
        ['period' => 6],
        ['period' => 12],
      ];

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\RentalPeriod::insert($this->period);
    }
}
