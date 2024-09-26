<?php
use App\Http\Controllers\Backend\VendorController;
use App\Http\Controllers\Backend\VendorOrderController;
use App\Http\Controllers\Backend\VendorProductController;
use App\Http\Controllers\Backend\VendorProductImageGalleryController;
use App\Http\Controllers\Backend\VendorProductReviewController;
use App\Http\Controllers\Backend\VendorProductVariantController;
use App\Http\Controllers\Backend\VendorProductVariantItemController;
use App\Http\Controllers\Backend\VendorProfileController;
use App\Http\Controllers\Backend\VendorShopProfileController;
use Illuminate\Support\Facades\Route;


// Vendor routes
Route::get('dashboard', [VendorController::class, 'dashboard'])->name('dashboard');
Route::get('profile', [VendorProfileController::class, 'index'])->name('profile');
Route::put('profile', [VendorProfileController::class, 'updateProfile'])->name('profile.update');
Route::post('profile', [VendorProfileController::class, 'updatePassword'])->name('profile.update.password');

// Vendor shop profile routes
Route::resource('shop-profile', VendorShopProfileController::class);

// Vendor product routes
Route::get('product/get-subcategories', [VendorProductController::class, 'getSubCategories'])
    ->name('product.get-subcategories');
Route::get('product/get-child-categories', [VendorProductController::class, 'getChildCategories'])
    ->name('product.get-child-categories');
Route::put('product/change-status', [VendorProductController::class, 'changeStatus'])->name('product.change-status');
Route::resource('products', VendorProductController::class);

// Vendor product image gallery routes
Route::resource('products-image-gallery', VendorProductImageGalleryController::class);

// Vendor product variant routes
Route::put('products-variant/change-status', [VendorProductVariantController::class, 'changeStatus'])->name('products-variant.change-status');
Route::resource('products-variant', VendorProductVariantController::class);

// Vendor product variant item routes
Route::get('products-variant-item/{productId}/{variantId}', [VendorProductVariantItemController::class, 'index'])->name('products-variant-item.index');
Route::get('products-variant-item/create/{productId}/{variantId}', [VendorProductVariantItemController::class, 'create'])->name('products-variant-item.create');
Route::post('products-variant-item', [VendorProductVariantItemController::class, 'store'])->name('products-variant-item.store');

// Vendor product variant item edit route
Route::get('products-variant-item-edit/{variantItemId}', [VendorProductVariantItemController::class, 'edit'])->name('products-variant-item.edit');

// Vendor product variant item update route
Route::put('products-variant-item-update/{variantItemId}', [VendorProductVariantItemController::class, 'update'])->name('products-variant-item.update');

// Vendor product variant item delete route
Route::delete('products-variant-item/{variantItemId}', [VendorProductVariantItemController::class, 'destroy'])->name('products-variant-item.destroy');

// Vendor product variant item change status route
Route::put('products-variant-item-status', [VendorProductVariantItemController::class, 'changeStatus'])->name('products-variant-item.change-status');

/** Orders route */
Route::get('orders', [VendorOrderController::class, 'index'])->name('orders.index');
Route::get('orders/show/{id}', [VendorOrderController::class, 'show'])->name('orders.show');
Route::get('orders/status/{id}', [VendorOrderController::class, 'orderStatus'])->name('orders.status');

/** Reviews route */
Route::get('reviews', [VendorProductReviewController::class, 'index'])->name('reviews.index');
