

<?php


include "dbconnect.php"; 


if ($_SERVER['REQUEST_METHOD'] === 'POST') {


    // Form Data Retrieval

    $department = $_POST['department'] ?? null;

    $subject = $_POST['subject_description'] ?? null;

    $teacher = $_POST['teacher'] ?? null;

    $day = $_POST['day'] ?? null;

    $room = $_POST['room'] ?? null;

    $time = $_POST['time'] ?? null;

    $course = $_POST['course'] ?? null;

    $schedule_id = $_POST['schedule_id'] ?? null; // Assuming you pass the id of the record to update


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


    // Check if we are updating an existing record

    if ($schedule_id) {

        // Prepare SQL statement to update the record

        $update_sql = "UPDATE $tableName SET subject = ?, teacher = ?, day = ?, room = ?, time = ?, course = ? WHERE schedule_id = ?";

        $update_stmt = $conn->prepare($update_sql);

        $update_stmt->bind_param("ssssssi", $subject, $teacher, $day, $room, $time, $course, $id);


        if ($update_stmt->execute()) {

            echo "Schedule updated successfully.";

        } else {

            echo "Error: " . $update_stmt->error;

        }


        // Close the update statement

        $update_stmt->close();

    } else {

        // Prepare SQL statement to check for conflicts based on day, room, and time

        $sql = "SELECT * FROM $tableName WHERE day = ? AND room = ? AND time = ? AND course = ?";

        $stmt = $conn->prepare($sql);

        $stmt->bind_param("ssss", $day, $room, $time, $course);

        $stmt->execute();

        $result = $stmt->get_result();


        // Check if a conflict exists

        if ($result->num_rows > 0) {

            // Conflict detected, display conflicting data

            echo "Conflict detected: The following schedule already exists:<br>";

            while ($row = $result->fetch_assoc()) {

                echo "Subject: " . htmlspecialchars($row['Subject']) . "<br>";

                echo "Teacher: " . htmlspecialchars($row['Teacher']) . "<br>";

                echo "Day: " . htmlspecialchars($row['Day']) . "<br>";

                echo "Room: " . htmlspecialchars($row['Room']) . "<br>";

                echo "Time: " . htmlspecialchars($row['Time']) . "<br><br>";

                echo "Course: " . htmlspecialchars($row['Course']) . "<br><br>";

            }

        } else {

            // No conflict, proceed to insert

            $insert_sql = "INSERT INTO $tableName (subject, teacher, day, room, time, course) VALUES (?, ?, ?, ?, ?, ?)";

            $insert_stmt = $conn->prepare($insert_sql);

            $insert_stmt->bind_param("ssssss", $subject, $teacher, $day, $room, $time, $course);


            if ($insert_stmt->execute()) {

                echo "Schedule added successfully.";

            } else {

                echo "Error: " . $insert_stmt->error;

            }


            // Close the insert statement

            $insert_stmt->close();

        }


        // Close the select statement

        $stmt->close();

    }


    // Close the connection

    $conn->close();

}


?>