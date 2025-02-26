<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RegionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    protected $regions = [
        ['name' => 'Indonesia'],
        ['name' => 'Malaysia'],
        ['name' => 'Singapore'],
        ['name' => 'Thailand'],
      ];

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Region::insert($this->regions);
    }
}
