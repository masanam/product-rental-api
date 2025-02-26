<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AttributeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    protected $attribute = [
        ['name' => 'Color'],
        ['name' => 'Size'],
        ['name' => 'Weight'],
      ];

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Attribute::insert($this->attribute);
    }
}
