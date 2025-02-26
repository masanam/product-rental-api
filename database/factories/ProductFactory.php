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
            'name' => $this->faker->word(10),
            'sku' => $this->faker->unique()->word(5),
            'description' => $this->faker->sentence(),
            'stock' => $this->faker->numberBetween(1, 100),
            'category' => $this->faker->randomElement(['Electronics', 'Clothing', 'Books']),
        ];
    }
}