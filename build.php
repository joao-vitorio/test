<?php
header('Content-Type: application/json');

// Simula dados de um build
$response = [
    'status' => 'success',
    'timestamp' => date('Y-m-d H:i:s'),
    'message' => 'Build executado com sucesso!'
];

echo json_encode($response);
