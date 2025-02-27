<?php

namespace Tests\Feature;

use App\Models\Product;
use App\Models\ProductAttribute;
use App\Models\Region;
use App\Models\RentalPeriod;
use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Models\ProductPricing;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ProductTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_list_products()
    {
        Product::factory()->count(3)->create();
        $this->withoutExceptionHandling();
        $response = $this->getJson('/api/products');

        $response->assertStatus(200)
                 ->assertJsonCount(3);
    }

    public function test_can_get_single_product()
    {
        $product = Product::factory()->create();

        $response = $this->getJson("/api/products/{$product->id}");

        $response->assertStatus(200)
                 ->assertJsonFragment(['name' => $product->name]);
    }

    public function test_can_create_product()
    {
        $data = [
            'name' => 'Test Product',
            'sku' => 'SKU1213',
            'category' => 'TestCategory',
            'stock' => 10,
            'description' => 'This is a test product'
        ];

        $response = $this->postJson('/api/products', $data);

        $response->assertStatus(200)
                 ->assertJsonFragment(['name' => 'Test Product']);
    }

    public function test_get_products()
    {
        $product = Product::factory()->create();
        $attribute = Attribute::factory()->create(['name' => 'Color']);
        $value = AttributeValue::factory()->create(['attribute_id' => $attribute->id, 'value' => 'Red']);
        ProductAttribute::factory()->create([
            'product_id' => $product->id,
            'attribute_id' => $attribute->id,
            'attribute_value_id' => $value->id
        ]);

        $response = $this->getJson('/api/products');
        $response->assertStatus(200)->assertJsonFragment(['name' => $product->name]);
    }

    public function test_rental_prices_by_region()
    {
        $region = Region::factory()->create();
        $rentalPeriod = RentalPeriod::factory()->create(['period' => 6]);
        $product = Product::factory()->create();

        ProductPricing::factory()->create([
            'product_id' => $product->id,
            'region_id' => $region->id,
            'rental_period_id' => $rentalPeriod->id,
            'price' => 100.00,
        ]);

        $response = $this->postJson('/api/rental-prices', [
            'region_id' => $region->id,
            'rental_period_id' => $rentalPeriod->id,
        ]);

        $response->assertStatus(200);
    }
}