<?php

namespace Database\Factories;

use App\Models\RentalPeriod;
use Illuminate\Database\Eloquent\Factories\Factory;

class RentalPeriodFactory extends Factory
{
    protected $model = RentalPeriod::class;

    public function definition()
    {
        return [
            'duration_months' => $this->faker->randomElement([3, 6, 12]),
        ];
    }
}