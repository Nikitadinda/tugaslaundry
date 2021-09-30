<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="verivikasi.php" method="post">

<table>
    <tr>
        <td>Id_cucian keluar </td>
        <td> : </td>
        <td><input type="text" name="id_cm"></td>
    </tr>
    <tr>
        <td>Id_konsumen</td>
        <td> : </td>
        <td><input type="text" name="nik"></td>
    </tr>
    <tr>
        <td>Tanggal Cucian masuk</td>
        <td> : </td>
        <td><input  type="date" name="tanggalpeminjaman"></td>
    </tr>
    <tr>
        <td>Jenis pakaian</td>
        <td> : </td>
        <td><select  name="pakaian">
        <option value="Jeans">Jeans</option>
        <option value="Baju tidur">Baju tidur</option>
        <option value="Daleman">Daleman</option>
        <option value="Baju">Baju</option>
        <option value="Celana">Celana</option>
        </select></td>
    </tr>
</body>
</html>