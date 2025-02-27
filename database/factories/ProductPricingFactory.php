<?php

namespace Database\Factories;

use App\Models\ProductPricing;
use App\Models\Product;
use App\Models\Region;
use App\Models\RentalPeriod;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductPricingFactory extends Factory
{
    protected $model = ProductPricing::class;

    public function definition()
    {
        return [
            'product_id' => Product::factory(),
            'region_id' => Region::factory(),
            'rental_period_id' => RentalPeriod::factory(),
            'price' => $this->faker->randomFloat(2, 50, 500),
        ];
    }
}