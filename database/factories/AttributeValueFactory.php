<?php

namespace Database\Factories;

use App\Models\AttributeValue;
use Illuminate\Database\Eloquent\Factories\Factory;

class AttributeValueFactory extends Factory
{
    protected $model = AttributeValue::class;

    public function definition()
    {
        return [
            'attribute_id' => Attribute::factory(),
            'value' => $this->faker->randomElement(['Red', 'Blue', 'Small', 'Large']),
        ];
    }
}