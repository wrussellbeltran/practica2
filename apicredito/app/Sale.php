<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    protected $table = 'sales';

    public function customers() {
        return $this->belongsTo('App\Customer', 'customer_id');
    }
}
