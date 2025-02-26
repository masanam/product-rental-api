<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductAttributeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    protected $values = [
        ['product_id' => '1', 'attribute_id' => '1','attribute_value_id' => '1'],
        ['product_id' => '1', 'attribute_id' => '2','attribute_value_id' => '4'],
        ['product_id' => '1', 'attribute_id' => '3','attribute_value_id' => '7'],
        ['product_id' => '2', 'attribute_id' => '1','attribute_value_id' => '2'],
        ['product_id' => '2', 'attribute_id' => '2','attribute_value_id' => '5'],
        ['product_id' => '2', 'attribute_id' => '3','attribute_value_id' => '8'],
        ['product_id' => '3', 'attribute_id' => '1','attribute_value_id' => '3'],
        ['product_id' => '3', 'attribute_id' => '2','attribute_value_id' => '6'],
        ['product_id' => '3', 'attribute_id' => '3','attribute_value_id' => '9'],
      ];

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\ProductAttribute::insert($this->values);
    }
}
