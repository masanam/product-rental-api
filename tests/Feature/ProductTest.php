<?php

namespace Tests\Feature;

use App\Models\Product;
use App\Models\ProductAttribute;
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
}