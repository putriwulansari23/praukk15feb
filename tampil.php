<?php
include("koneksi.php");
?>
<html>
    <head>
</head>
<body>
    <h1>DATA PENYEWA</h1>
    <h4><a href="tambah.php">tambah sewa</a></h4>
    <table border="1">
    <tr>
        <th>No</th>
        <th>Nama Penyewa</th>
        <th>Alamat</th>
        <th>Genre Film</th>
        <th>Judul Film</th>
        <th>Tahun Film</th>
        <th>Tanggal Sewa</th>
        <th>Tanggal Kembali</th>
        <th>Harga</th>
        <th>Aksi</th>
</tr>

<?php
include("koneksi.php");
$sql="SELECT * FROM tb_penyewa INNER JOIN tb_dvd ON tb_penyewa.id_dvd= tb_dvd.id_dvd";
$query= mysqli_query($koneksi, $sql);

while($row=mysqli_fetch_array($query)){
    echo"<tr>";
    echo"<td>".$row['id_penyewa']."</td>";
    echo"<td>".$row['nama_penyewa']."</td>";
    echo"<td>".$row['alamat']."</td>";
    echo"<td>".$row['genre_film']."</td>";
    echo"<td>".$row['judul_film']."</td>";
    echo"<td>".$row['tahun_film']."</td>";
    echo"<td>".$row['tanggal_sewa']."</td>";
    echo"<td>".$row['tanggal_kembali']."</td>";
    echo"<td>".$row['harga']."</td>";
    echo"<td>";
    echo "<a href='edit.php?id_penyewa=".$row['id_penyewa']."'>Edit</a> ||";
    echo "<a href='hapus.php?id_penyewa=".$row['id_penyewa']."'>Hapus</a> ";
    echo"</td>";
    echo"</tr>";
}

?>

    

</html>
</table>
</body>
