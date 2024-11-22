<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "moz_fashion_hub";

// Cria a conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Consulta SQL para buscar produtos
$sql = "SELECT * FROM products";
$result = $conn->query($sql);

$products = [];

if ($result->num_rows > 0) {
    // Converte os resultados da consulta em um array
    while($row = $result->fetch_assoc()) {
        $products[] = $row;
    }
}

// Converte o array em JSON e envia para o navegador
header('Content-Type: application/json');
echo json_encode($products);

$conn->close();
?>