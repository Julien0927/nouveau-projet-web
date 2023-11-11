<?php 

namespace App\Lib;

class Tools
{
    public static function linesToArray(string $string): array
    {
        return explode(PHP_EOL, $string);
    }
}
