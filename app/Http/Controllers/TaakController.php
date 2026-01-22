<?php

namespace App\Http\Controllers;

use App\Models\Taak;
use Illuminate\Http\Request;

class TaakController extends Controller
{
    /**
     * Toon alle taken.
     */
    public function index()
    {
        return response()->json(Taak::all());
    }

    /**
     * Maak een nieuwe taak.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'titel' => 'required|string|max:255',
        ]);

        $taak = Taak::create([
            'titel' => $data['titel'],
        ]);

        return response()->json($taak, 201);
    }
}
