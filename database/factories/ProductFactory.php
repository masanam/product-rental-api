<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    protected $model = Product::class;

    public function definition()
    {
        return [
            'name' => $this->faker->word(),
            'sku' => $this->faker->unique()->uuid(),
            'description' => $this->faker->sentence(),
            'category' => $this->faker->randomElement(['Electronics', 'Clothing', 'Books']),
        ];
    }
}