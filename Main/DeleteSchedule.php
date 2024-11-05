<?php

include "dbconnect.php"; // Include your database connection


if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Retrieve the ID and department from the POST request

    $id = $_POST['schedule_id'] ?? null;

    $department = $_POST['department'] ?? null;


    // Determine the table name based on the selected department

    $tableName = '';


    switch ($department) {

        case 'CET':

            $tableName = 'cetsched';

            break;

        case 'CASE':

            $tableName = 'casesched';

            break;

        case 'CHTM':

            $tableName = 'chtmsched';

            break;

        case 'CBMA':

            $tableName = 'cbmasched';

            break;

        case 'Law':

            $tableName = 'lawsched';

            break;

        case 'Marine':

            $tableName = 'marinesched';

            break;

        case 'Crim':

            $tableName = 'crimsched';

            break;

        default:

            echo "Invalid department selected.";

            exit; // Stop execution if invalid department

    }


    // Validate the ID

    if ($id) {

        // Prepare the delete statement

        $delete_sql = "DELETE FROM $tableName WHERE schedule_id = ?";

        $stmt = $conn->prepare($delete_sql);

        $stmt->bind_param("i", $id); // Assuming id is an integer


        // Execute the statement

        if ($stmt->execute()) {

            echo "Record deleted successfully.";

        } else {

            echo "Error deleting record: " . $stmt->error;

        }


        // Close the statement

        $stmt->close();

    } else {

        echo "Invalid ID.";

    }

}


// Close the database connection

$conn->close();

?>