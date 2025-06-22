<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

$data = json_decode(file_get_contents("php://input"), true);
$oldEmail = $data['oldEmail'];
$newEmail = $data['newEmail'];

// Conexión a SQL Server
$server = "auth-db.cny206g4cz8c.us-east-1.rds.amazonaws.com";
$connectionInfo = [
  "Database" => "auth",
  "UID" => "admin",
  "PWD" => "Distribuida123",
  "Encrypt" => true,
  "TrustServerCertificate" => true
];

$conn = sqlsrv_connect($server, $connectionInfo);

if (!$conn) {
  echo json_encode(["error" => "Conexión fallida"]);
  exit;
}

$sql = "UPDATE usuarios SET email = ? WHERE email = ?";
$params = [$newEmail, $oldEmail];
$stmt = sqlsrv_query($conn, $sql, $params);

if ($stmt && sqlsrv_rows_affected($stmt) > 0) {
  echo json_encode(["message" => "Email actualizado"]);
} else {
  echo json_encode(["error" => "No se pudo actualizar"]);
}

sqlsrv_close($conn);
?>
