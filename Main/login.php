<?php
 include "dbconnect.php";
session_start(); // Start a session to manage user state





// Get form data

$admin_id = $_POST['admin_id']; // Updated to match the new input name

$password = $_POST['password'];


// Prepare and bind

$stmt = $conn->prepare("SELECT AdminID FROM adminlist WHERE AdminID = ? AND Password = ?");

$stmt->bind_param("ss", $admin_id, $password); // Updated to match the new variable name


// Execute the statement

$stmt->execute();


// Store the result

$stmt->store_result();


// Check if the user exists

if ($stmt->num_rows > 0) {

    // User exists, start a session

    $_SESSION['loggedin'] = true;

    $_SESSION['username'] = $admin_id; // Store username in session

    header("Location: hometest.php"); // Redirect to hometest.php

    exit; // Ensure no further code is executed after the redirect

} else {

    // User does not exist

    echo "Invalid AdminID or password.";

}


// Close the statement and connection

$stmt->close();

$conn->close();

?>