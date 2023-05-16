<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Điểm sinh viên</title>
    <link rel="stylesheet" href="DiemSV.css">
</head>

<body>
    <div id="wrapper" class="wrapper-content">
        <div class="body">
            <div class="content">
                <form action="#" method="post">
                    <div class="form-group">
                        <label>Nhập Mã sinh viên để in danh sách:</label>
                        <input type="text" name="masv" id="masv">
                    </div>
                    <div class=" form-group">
                        <input type="submit" name="submit" id="submit" value="In danh sách">
                    </div>
                </form>
                <div class="form-group">
                    <p>
                        <?php
                        include("connect.php");
                        if (isset($_POST['submit'])) {
                            $masv = $_POST['masv'];
                            $sql = "SELECT * FROM tbdiemsv WHERE Masv = '$masv' AND Xloai = 'F'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) {
                                echo "
                    <table border='1' cellspacing='0' cellpadding='10'>";
                                echo "<tr>";
                                echo "<th>Mã sinh viên</th>";
                                echo "<th>Họ tên</th>";
                                echo "<th>Giới tính</th>";
                                echo "<th>Học kỳ</th>";
                                echo "<th>Môn học</th>";
                                echo "<th>Điểm quá trình</th>";
                                echo "<th>Điểm thi</th>";
                                echo "<th>Điểm học phần</th>";
                                echo "<th>Xếp loại</th>";
                                echo "</tr>";
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo "<tr>";
                                    echo "<td>" . $row['Masv'] . "</td>";
                                    echo "<td>" . $row['Hoten'] . "</td>";
                                    if ($row['Gioitinh'] == 1) {
                                        echo "<td>Nam</td>";
                                    } else {
                                        echo "<td>Nữ</td>";
                                    }
                                    echo "<td>" . $row['Monhoc'] . "</td>";
                                    echo "<td>" . $row['Hocky'] . "</td>";
                                    echo "<td>" . $row['Diemqt'] . "</td>";
                                    echo "<td>" . $row['Diemthi'] . "</td>";
                                    echo "<td>" . $row['Diemhp'] . "</td>";
                                    echo "<td>" . $row['Xloai'] . "</td>";
                                    echo "</tr>";
                                }
                                echo "</table>";
                            } else {
                                echo "Không tìm thấy sinh viên có mã sinh viên là: " . $masv;
                            }
                        }
                        ?>
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>

</html>