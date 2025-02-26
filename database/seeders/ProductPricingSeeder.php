<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductPricingSeeder extends Seeder
{
    protected $values = [
        ['product_id' => '1', 'region_id' => '1','rental_period_id' => '1','price' => '100'],
        ['product_id' => '1', 'region_id' => '1','rental_period_id' => '2','price' => '200'],
        ['product_id' => '1', 'region_id' => '1','rental_period_id' => '3','price' => '300'],
        ['product_id' => '2', 'region_id' => '2','rental_period_id' => '1','price' => '150'],
        ['product_id' => '2', 'region_id' => '2','rental_period_id' => '2','price' => '250'],
        ['product_id' => '2', 'region_id' => '2','rental_period_id' => '3','price' => '350'],
        ['product_id' => '3', 'region_id' => '3','rental_period_id' => '1','price' => '200'],
        ['product_id' => '3', 'region_id' => '3','rental_period_id' => '2','price' => '300'],
        ['product_id' => '3', 'region_id' => '3','rental_period_id' => '3','price' => '400'],
      ];

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\ProductPricing::insert($this->values);
    }
}
