<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaakController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/

Route::get('/', function () {
    return view('welcome');
});

// API-achtige routes voor simpele demo
Route::get('/taken', [TaakController::class, 'index']);
Route::post('/taken', [TaakController::class, 'store']);
