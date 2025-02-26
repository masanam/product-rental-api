<?php

namespace Database\Factories;

use App\Models\ProductAttribute;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductAttributeFactory extends Factory
{
    protected $model = ProductAttribute::class;

    public function definition()
    {
        return [
            'product_id' => Product::factory(),
            'attribute_id' => Attribute::factory(),
            'attribute_value_id' => AttributeValue::factory(),
        ];
    }
}