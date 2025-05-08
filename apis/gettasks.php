<?php 

include "config.php";

try{
    $stmt = $pdo->query("SELECT * FROM tbl_tasks_master");
    $taskslist = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($taskslist);
} catch (PDOException $e){
    echo json_encode(['error' => $e->getMessage()]);
}

?>