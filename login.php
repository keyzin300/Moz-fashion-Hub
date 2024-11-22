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

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT id, password FROM users WHERE username=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($id, $hashed_password);
    $stmt->fetch();

    if ($stmt->num_rows == 1 && password_verify($password, $hashed_password)) {
        $_SESSION['username'] = $username;
        header("Location: index.html");
        exit;
    } else {
        $message = "Invalid username or password.";
        header("Location: login.html?error=" . urlencode($message));
        exit;
    }

    $stmt->close();
}

$conn->close();
?>