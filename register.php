<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "moz_fashion_hub";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    if ($password !== $confirm_password) {
        $message = "Passwords do not match.";
        header("Location: register.html?error=" . urlencode($message));
        exit;
    }

    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    $sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $username, $email, $hashed_password);

    if ($stmt->execute()) {
        $message = "Registration successful.";
        header("Location: login.html?success=" . urlencode($message));
        exit;
    } else {
        $message = "Error: " . $stmt->error;
        header("Location: register.html?error=" . urlencode($message));
        exit;
    }

    $stmt->close();
}

$conn->close();
?>