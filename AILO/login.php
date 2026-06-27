<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
}

// if (!isset($_SESSION['matric_no'])) {
//     header('Location: login.php'); // Redirect to the dashboard or other appropriate page
//     exit;
// }

// Set database connection parameters
$host = '127.0.0.1';
$user = 'root';
$password = 'myownserver';
$dbname = 'ailo';

// Connect to the database using MySQLi
$conn = new mysqli($host, $user, $password, $dbname);
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

// Retrieve username and password from the form
$username = $_POST['username'];
$password = $_POST['password'];

$_SESSION['username'] = $username;

// Prepare the SQL query using a prepared statement
$sql = "SELECT * FROM users WHERE email=? AND password=?";
$stmt = mysqli_prepare($conn, $sql);
if (!$stmt) {
  die('Error in preparing the statement: ' . mysqli_error($conn));
}

// Bind the parameters to the prepared statement
mysqli_stmt_bind_param($stmt, 'ss', $username, $password);

// Execute the prepared statement
mysqli_stmt_execute($stmt);
// var_dump($stmt);

// Get the result from the prepared statement
$result = mysqli_stmt_get_result($stmt);
// var_dump($result);

// Check if there is a row returned
if (mysqli_num_rows($result) == 1) {
  
  $row = mysqli_fetch_assoc($result);

  // Check if BOTH columns are NULL
  if (is_null($row['ja']) && is_null($row['fr'])) {
    header('Location: http://localhost:8502/placement/');
  exit;
  } else {
    header('Location: http://localhost:8501/dashboard/');
  exit;
  }
} else {
  // Invalid username or password
  $error = "Invalid username or password";
  include("index.html");
}

// Close the prepared statement
mysqli_stmt_close($stmt);

// Close the database connection
mysqli_close($conn);
?>
