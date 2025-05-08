<?php
// ini_set('display_errors', 1);
// error_reporting(E_ALL);

include 'config.php';

try {
    $stmt = $pdo->query("SELECT * FROM tbl_users_master");
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($users);
} catch (PDOException $e) {
    echo json_encode(['error' => $e->getMessage()]);
}
?>
