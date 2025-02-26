<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Illuminate\Http\JsonResponse;

class ProductController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request): JsonResponse
    {
        $query = Product::with(['attributes.attribute', 'attributes.value','pricing.region', 'pricing.rentalPeriod']);

        if ($s = $request->query('search')) {
            $query->whereRaw("name LIKE '%" . $s . "%'")
            ->orWhereRaw("category LIKE '%" . $s . "%'");
        }

        if ($sort = $request->query('sortBy')) {
            $query->orderBy($sort,'desc');
        }

        $perPage = 5;
        $page = $request->query('page', 1);
        $total = $query->count();

        $data = $query->offset(($page - 1) * $perPage)->limit($perPage)->get();

        // $data = new ProductResource($data);

        $result =[];
        $result['data'] = $data;
        $result['total'] = $total;
        $result['page'] = $page;
        $result['total_page'] = ceil($total / $perPage);

        return $this->sendResponse($result, 'Products retrieved successfully.');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:155',
            'sku' => 'required',
            'category' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'data' => [],
                'message' => $validator->errors(),
                'success' => false
            ]);
        }

        $product = Product::create([
            'name' => $request->get('name'),
            'sku' => $request->get('sku'),
            'category' => $request->get('category'),
            'slug' => Str::slug($request->get('name'))
        ]);

        return response()->json([
            'data' => new ProductResource($product),
            'message' => 'Product created successfully.',
            'success' => true
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Product $product)
    {
        return response()->json([
            'data' => new ProductResource($product),
            'message' => 'Data product found',
            'success' => true
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request, Product $product)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:155',
            'sku' => 'required',
            'category' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'data' => [],
                'message' => $validator->errors(),
                'success' => false
            ]);
        }

        $product->update([
            'name' => $request->get('name'),
            'sku' => $request->get('sku'),
            'category' => $request->get('category'),
            'slug' => Str::slug($request->get('name'))
        ]);

        return response()->json([
            'data' => new ProductResource($product),
            'message' => 'Product updated successfully',
            'success' => true
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Product $product)
    {
        $product->delete();

        return response()->json([
            'data' => [],
            'message' => 'Product deleted successfully',
            'success' => true
        ]);
    }
}
