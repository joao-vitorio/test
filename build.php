<?php
// Exemplo simples de "build"
$src = __DIR__ . '/src';
$dist = __DIR__ . '/dist';

if (!is_dir($dist)) {
    mkdir($dist);
}

$files = scandir($src);
foreach ($files as $file) {
    if ($file !== '.' && $file !== '..') {
        copy("$src/$file", "$dist/$file");
    }
}

echo "Build finalizado.\n";
