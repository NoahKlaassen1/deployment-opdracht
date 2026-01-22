<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class TaakTest extends TestCase
{
    use RefreshDatabase;

    public function test_taak_can_be_created()
    {
        // Zorg dat DB sqlite file klaar is tijdens test-run (CI doet dit ook)
        $response = $this->postJson('/taken', ['titel' => 'Eerste taak']);
        $response->assertStatus(201)
                 ->assertJsonPath('titel', 'Eerste taak');

        // Check dat het in DB staat
        $this->assertDatabaseHas('taken', ['titel' => 'Eerste taak']);
    }
}
