<?php

$server = "localhost";
$username = "root";
$password = "";
$database = "laundryy";

$conn = mysqli_connect($server, $username, $password, $database);

if (!$conn) {
    die("<script>alert('Gagal tersambung dengan database.')</script>");
}