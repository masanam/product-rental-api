<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductPricing extends Model
{
    //
    protected $hidden = ['id','product_id', 'region_id','rental_period_id','created_at', 'updated_at'];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function region()
    {
        return $this->belongsTo(Region::class);
    }

    public function rentalPeriod()
    {
        return $this->belongsTo(RentalPeriod::class);
    }

}
