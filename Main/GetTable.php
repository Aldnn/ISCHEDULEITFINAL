<?php


include "dbconnect.php";


$result = null; // Initialize as null


// Check if the form is submitted

if (isset($_POST['department']) && !empty($_POST['department'])) {

    $department = $_POST['department'];


    // Determine the table name based on the selected department

    $tableName = '';


    switch ($department) {

        case 'CET':

            $tableName = 'cetsched'; // Table for CET

            break;

        case 'CASE':

            $tableName = 'casesched'; // Table for CASE

            break;

        case 'CHTM':

            $tableName = 'chtmsched'; // Table for CHTM

            break;

        case 'CBMA':

            $tableName = 'cbmasched'; // Table for CBMA

            break;

        case 'Law':

            $tableName = 'lawsched'; // Table for Law

            break;

        case 'Marine':

            $tableName = 'marinesched'; // Table for Marine

            break;

        case 'Crim':

            $tableName = 'crimsched'; // Table for Criminology

            break;

        default:

            $tableName = '';

            break;

    }


    // Prepare the SQL query to fetch data from the determined table

    if ($tableName) {

        $query = "SELECT * FROM $tableName";

        $result = $conn->query($query);


        // Check if the query was successful

        if (!$result) {

            echo "Error executing query: " . $conn->error; // Output error message

            exit; // Stop further execution

        }

    }

}


// Check if $result is a valid object and has rows

if ($result && $result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) {

        echo "<tr>

                <td>{$row['Teacher']}</td>

                <td>{$row['Subject']}</td>

                <td>{$row['Day']}</td>

                <td>{$row['Time']}</td>

                <td>{$row['Room']}</td>

                <td>{$row['Course']}</td>

                <td>

                    <button class='edit-btn' onclick=\"window.location.href='UpdateSchedule.php?id={$row['schedule_id']}'\">Edit</button>

                    <button class='delete-btn' data-id='{$row['schedule_id']}' onclick='deleteRecord({$row['schedule_id']})'>Delete</button>

                </td>

              </tr>";

    }

} else {

    echo "<tr><td colspan='7'>NO RECORDS FOUND</td></tr>";

}


$conn->close();

?>

<script>src="script.js"</script>