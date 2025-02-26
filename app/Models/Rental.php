<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rental extends Model
{
    //
    use HasFactory;
    // protected $fillable = ['user_id', 'product_id', 'region_id', 'rental_start', 'rental_end', 'total_price'];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function region()
    {
        return $this->belongsTo(Region::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
