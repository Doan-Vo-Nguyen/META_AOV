<?php
include 'connect.php';
if (isset($_POST['submit'])) {
    $masv = $_POST['masv'];
    $tensv = $_POST['tensv'];
    $gioitinh = $_POST['gioitinh'];
    $hocki = $_POST['hocki'];
    $monhoc = $_POST['monhoc'];
    $diem_qt = $_POST['diem_qt'];
    $diem_thi = $_POST['diem_thi'];

    // check gender nam or nữ
    if ($gioitinh == 1) {
        $gioitinh = "Nam";
    } else {
        $gioitinh = "Nữ";
    }

    // check môn học
    if ($monhoc == 1) {
        $monhoc = "Tiếng anh nâng cao";
    } else if ($monhoc == 2) {
        $monhoc = "Lập trình cơ bản";
    } else if ($monhoc == 3) {
        $monhoc = "Hệ quản trị cơ sở dữ liệu";
    } else {
        $monhoc = "Lập trình hướng đối tượng";
    }

    $diem_hp = $diem_qt * 0.4 + $diem_thi * 0.6;
    if ($diem_hp >= 8.5) {
        $xeploai = "A+";
    } else if ($diem_hp >= 8) {
        $xeploai = "A";
    } else if ($diem_hp >= 7) {
        $xeploai = "B+";
    } else if ($diem_hp >= 6.5) {
        $xeploai = "B";
    } else if ($diem_hp >= 5) {
        $xeploai = "C";
    } else if ($diem_hp >= 4) {
        $xeploai = "D";
    } else {
        $xeploai = "F";
    }

    $sql = "INSERT INTO tbdiemsv (Masv, Hoten, Gioitinh, Hocky, Monhoc, Diemqt, Diemthi, Diemhp, Xloai) VALUES ('$masv', '$tensv', '$gioitinh', '$hocki', '$monhoc', '$diem_qt', '$diem_thi', '$diem_hp', '$xeploai')";
    $result = mysqli_query($conn, $sql);
}
