<?php
// Je kunt hier helper functies plaatsen die je app gebruikt.
// Bijvoorbeeld: een kleine formatter
if (! function_exists('huidige_jaren')) {
    function huidige_jaren(): string {
        return date('Y');
    }
}
