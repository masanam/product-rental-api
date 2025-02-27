<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Illuminate\Http\JsonResponse;
use App\Models\Product;
use App\Models\ProductPricing;

class ProductPricingController extends BaseController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function getPricesByRegion(Request $request)
    {

        $request->validate([
            'region_id' => 'required|exists:regions,id',
            'rental_period_id' => 'required|exists:rental_periods,id',
        ]);

        $prices = ProductPricing::where('region_id', $request->region_id)
            ->where('rental_period_id', $request->rental_period_id)
            ->with('region','product')
            ->get();

        return $this->sendResponse($prices, 'Products retrieved successfully.');

    }

}
