<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Taak extends Model
{
    use HasFactory;

    protected $table = 'taken';

    protected $fillable = [
        'titel',
    ];
}
