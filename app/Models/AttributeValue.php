<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class AttributeValue extends Model
{
    //
    use HasFactory;
    protected $table = 'attribute_values';
    protected $hidden = ['id','attribute_id','created_at', 'updated_at'];

    public function attribute()
    {
        return $this->belongsTo(Attribute::class);
    }

}
