<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\ProductAttributeController;
use App\Http\Controllers\Api\ProductPricingController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::apiResource('/users',UserController::class);
Route::apiResource('/products',ProductController::class);
Route::post('/product-attributes', [ProductAttributeController::class, 'store']);
Route::post('/rental-prices', [ProductPricingController::class, 'getPricesByRegion']);