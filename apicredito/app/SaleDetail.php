<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SaleDetail extends Model
{
    protected $table = 'sales_details';

    public function customers() {
        return $this->belongsTo('App\Customer', 'customer_id');
    }

    public function sales() {
        return $this->belongsTo('App\Sale', 'sale_id');
    }
}
