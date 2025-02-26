<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AttributeResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'options' => $this->when($this->options->isNotEmpty(), AttributeValueResource::collection($this->options), []),
        ];
    }
}
