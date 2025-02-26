<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AttributeValueSeeder extends Seeder
{

    /**
     * Run the database seeds.
     *
     * @return void
     */
    protected $values = [
        ['attribute_id' => '1', 'value' => 'Red'],
        ['attribute_id' => '1', 'value' => 'Blue'],
        ['attribute_id' => '1', 'value' => 'Green'],
        ['attribute_id' => '2', 'value' => 'Small'],
        ['attribute_id' => '2', 'value' => 'Medium'],
        ['attribute_id' => '2', 'value' => 'Large'],
        ['attribute_id' => '3', 'value' => '1kg'],
        ['attribute_id' => '3', 'value' => '2kg'],
        ['attribute_id' => '3', 'value' => '3kg'],
      ];

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\AttributeValue::insert($this->values);
    }
}
