<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GeneralSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        
        'site_name',
        'layout',
        'contact_email',
        'contact_phone',
        'contact_address',
        'currency_name',
        'map',
        'currency_icon',
        'time_zone'
    ];
}
