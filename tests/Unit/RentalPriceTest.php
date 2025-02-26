<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;

class ExampleTest extends TestCase
{
    /**
     *  test for rental pricing retrieval:.
     */
    public function test_rental_prices_by_region()
    {
        $region = Region::factory()->create();
        $product = Product::factory()->create();
        $rentalPeriod = RentalPeriod::factory()->create(['duration_months' => 6]);
    
        RegionalPrice::factory()->create([
            'product_id' => $product->id,
            'region_id' => $region->id,
            'rental_period_id' => $rentalPeriod->id,
            'price' => 50.00,
        ]);
    
        $response = $this->postJson('/api/rental-prices', ['region_id' => $region->id]);
    
        $response->assertStatus(200);
    }}
