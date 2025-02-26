<?php

namespace Database\Factories;

use App\Models\Pricing;
use Illuminate\Database\Eloquent\Factories\Factory;

class PricingFactory extends Factory
{
    protected $model = Pricing::class;

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