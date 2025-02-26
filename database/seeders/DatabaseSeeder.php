<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();
        $this->call([
            UserSeeder::class,
            AttributeSeeder::class,
            AttributeValueSeeder::class,
            RegionSeeder::class,
            RentalPeriodSeeder::class,
            ProductSeeder::class,
            ProductAttributeSeeder::class,
            ProductPricingSeeder::class,]);
    

    }
}
