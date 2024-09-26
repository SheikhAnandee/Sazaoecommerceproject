<?php

namespace App\Http\Controllers\Frontend;
use App\Models\FlashSale;
use App\Models\FlashSaleItem;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class FlashSaleController extends Controller
{
    public function index()
    {
        $flashSaleDate = FlashSale::first();
        $flashSaleItems = FlashSaleItem::where('status', 1)->orderBy('id', 'DESC')->paginate(20);
        return view('frontend.pages.flash-sale', compact('flashSaleDate','flashSaleItems'));

    }
}
