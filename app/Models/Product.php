<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    use HasFactory;

    protected $table = 'products';

    protected $fillable = ['name', 'sku', 'category', 'description','stock'];

    public function attributes()
    {
        return $this->hasMany(ProductAttribute::class);
    }

    public function pricing()
    {
        return $this->hasMany(ProductPricing::class);
    }

}
