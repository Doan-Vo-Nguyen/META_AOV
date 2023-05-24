-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th5 16, 2023 lúc 05:07 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mt_lq_1v1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `badge`
--

CREATE TABLE `badge` (
  `id` int(4) NOT NULL,
  `badge_name` varchar(50) NOT NULL,
  `badge_img` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `badge`
--

INSERT INTO `badge` (`id`, `badge_name`, `badge_img`, `description`) VALUES
(1, 'Vực hỗn mang', 'VucHonMang.png', 'Vực hỗn mang là sự lựa chọn tối ưu của các Đấu sĩ và sát thủ. Với các kỹ năng tối ưu hóa khả năng chống chịu, kháng hiệu ứng, tăng sát thương chí mạng và sát thương kéo dài như Hồi phục, Kháng hiệu ứng, Ma chú, Ma tính thì bộ phù hiệu này cực kỳ tốt cho đấu sĩ hay sát thủ team bạn.'),
(2, 'Ma tinh', 'MaTinh.png', 'Sau khi tung chiêu cuối lập tức hoàn lại 30% thời gian hồi các chiêu 1 và 2 và 20% giảm hồi chiêu, đồng thời nhận miễn thương 10% trong 6 giây. Hạ hoặc phụ hạ sẽ kéo dài hiệu ứng thêm 3 giây. Hồi chiêu 30 giây'),
(3, 'Ma chú', 'MaChu.png', 'Tung chiêu hoặc đòn đánh thường trúng tướng địch sẽ cộng dồn dấu ấn trong 1.5 giây, cộng đủ 3 dấu ấn sẽ lập tức gây 50 (+5 / cấp tướng) (+0.25 công vật lý thêm) (+0.2 công phép) sát thương phép xung quanh vị trí kẻ bị đánh dấu trong phạm vi 2.5m . Sau 1 giây tiếp tục gây tiếp 100 (+10 mỗi cấp tướng) (0.5 công vật lý thêm) (+0.4 công phép) sát thương phép. Hồi chiêu 15 giây'),
(4, 'Đấu khí', 'DauKhi.png', 'Tung chiêu hoặc đánh thường trúng tướng địch sẽ được tăng 2 tốc chạy trong 3 giây (tướng đánh xa mỗi đòn đánh thường được cộng dồn 1 tầng, tướng đánh gần mỗi đòn và chiêu được cộng dồn 2 tầng), tối đa cộng dồn 10 tầng. Khi đủ 10 tầng sẽ được hồi ngay lập tức 15% máu đã mất và nhận thêm 15% xuyên giáp & xuyên giáp phép (tướng đánh xa chỉ được thêm 5%) khi Đấu khí còn tồn tại'),
(5, 'Cố thủ', 'CoThu.png', 'Nhận được 10% kháng hiệu ứng'),
(6, 'Cường công', 'CuongCong.png', 'Nhận 12~40 công vật lý và 18~60 công phép (tăng theo cấp tướng)'),
(7, 'Ma hoả', 'MaHoa.png', 'Tung chiêu hoặc đòn đánh thường trúng tướng địch sẽ gây 50 (+5 / cấp tướng）(+0.25 công phép) (+0.35 công vật lý thêm) sát thương phép. Hồi chiêu 8 giây'),
(8, 'Dư ảnh', 'DuAnh.png', 'Mỗi khi dùng lướt sẽ được cộng dồn 1 dư ảnh trong 2 giây, tối đa cộng dồn 3 dư ảnh. Đòn đánh thường sau đấy sẽ tiêu hao hết toàn bộ số dư ảnh. Mỗi dư ảnh gây 30 (+5 / cấp tướng) sát thương vật lý'),
(9, 'Hấp huyết', 'HapHuyet.png', 'Hạ hoặc phụ sẽ được hồi 9% máu đã mất và 15% năng lượng đã mất'),
(10, 'Tháp quang minh', 'ThapQuangMinh.png', 'Tháp quang minh là phù hiệu khả dụng dành cho các tướng xạ thủ cũng như pháp sư đường giữa. Với những kỹ năng tối ưu hóa sức mạnh như Tăng sát thương, Hồi năng lượng, Hồi chiêu, Xuyên và Chí mạng thì bộ phù hiệu này lại vô cùng hữu ích đối với các sát thương chủ lực như xạ thủ hay pháp sư.'),
(11, 'Thánh thuẫn', 'ThanhThuan.png', 'Trong thời gian ngắn 3 giây nhận sát thương vượt quá 30% máu của bản thân sẽ lập tức được tăng 50% tốc chạy trong 1.5 giây, nhận lá chắn miễn 550 (+60 mỗi cấp tướng) và 15% hút máu phép. Trong thời gian này hạ và phụ hạ sẽ kéo dài hút máu phép thêm 3 giây. Hồi chiêu 30 giây.'),
(12, 'Thần quang', 'ThanQuang.png', 'Tung chiêu hoặc đánh thường đầu tiên trúng tướng địch sẽ tạo thành sát thương sấm sét gây 100 (+10 mỗi cấp tướng) (0.4 công vật lý thêm) (0.3 công phép) sát thương. Những chiêu hoặc đòn đánh thường tung sau đó sẽ giảm thời gian hồi chiêu 1 giây (trúng nhiều tướng địch cũng chỉ giảm 1 giây). Hồi chiêu 15 giây'),
(13, 'Tinh linh', 'TinhLinh.png', 'Đòn đánh thường thứ 3 liên tiếp trúng một tướng địch sẽ nhận được một vòng sáng tiểu thiên thần quanh cơ thể trong 5 giây. Tiểu thiên thần sẽ tự động công kích kẻ địch bị chủ nhân tấn công trong phạm vi 8.5m. Tốc đánh bằng tốc đánh của chủ nhân và lực công kích bằng 0.2 công vật lý cộng thêm 15% xuyên giáp. Hồi chiêu 10 giây'),
(14, 'Xuyên tâm', 'XuyenTam.png', 'Nhận 18 (mỗi cấp +3) xuyên giáp/ xuyên giáp phép'),
(15, 'Bí quyết', 'BiQuyet.png', 'Bạn được nhận thêm 12 % chí mạng và thêm 8% công phép từ trang bị'),
(16, 'Thánh châu', 'ThanhChau.png', 'Chiêu cuối được giảm thời gian hồi chiêu thêm 10% (nhưng không được vượt quá 40% tối đa)'),
(17, 'Sung mãn', 'SungMan.png', 'Tung chiêu hoặc đòn đánh thường trúng tướng địch sẽ được hồi 8% năng lượng đã mất. Hồi chiêu 5 giây'),
(18, 'Tương phản', 'TuongPhan.png', 'Sát thương gây ra cho tướng địch tăng 3% nhưng sát thương phải chịu cũng tăng lên 2% (tướng cận chiến chỉ thêm 1%)'),
(19, 'Thành khởi nguyên', 'ThanhKhoiNguyen.png', 'Thành khởi nguyên phù hợp với các tướng có sự đột phá, khả năng gây bất ngờ trong giao tranh, lật kèo và chuyển bại thành thắng. Với các kỹ năng như Quả cầu băng sương, Bảo mệnh, Hạ tăng sát thương, Đầu thai, Cả lợi và hại thì bộ phù hiệu này có thể sử dụng cho đa dạng tướng, phù hợp với lối chơi táo bạo gây đột biến.'),
(20, 'Lợi và hại', 'LoiVaHai.png', 'Khởi đầu trận ở cấp 2. Trước cấp 12, bản thân được nhận thêm kinh nghiệm tự nhiên (nhận theo thời gian) 50% nhưng lượng kinh nghiệm và vàng nhận được do hạ lính, hạ quái rừng sẽ bị giảm đi 50%'),
(21, 'Chuyển sinh', 'ChuyenSinh.png', 'Sau khi tử vong sẽ nhận được phù hiệu: \"Hồi sinh\". Sau khi sử dụng sẽ hồi sinh trong tế đàn. \"Hồi sinh\" càng về sau sẽ càng tăng thêm thời gian hồi chiêu. Thời gian hồi chiêu: 100 / 310 giây. Tối đa dùng 3 lần / trận'),
(22, 'Thợ săn', 'ThoSan.png', 'Khởi đầu trận với một cộng dồn, hạ hoặc phụ hạ tướng địch sẽ nhận thêm một cộng dồn 10 công vật lý và 15 công phép. Mỗi tướng hạ gục chỉ cho tối đa một cộng dồn'),
(23, 'Uy áp', 'UyAp.png', 'Sau khi tung chiêu hoặc đòn đánh thường vào lính, nếu máu lính dưới 200 sẽ bị tiêu diệt ngay lập tức'),
(24, 'Mật ngữ', 'MatNgu.png', 'Phép bổ trợ của bạn được giảm 15% thời gian hồi chiêu'),
(25, 'Tử thần', 'TuThan.png', 'Sau khi trận đấu bắt đầu 3 phút, bạn nhận được khả năng miễn sát thương chí tử đồng thời tăng 20% tốc chạy trong 1 giây. Chỉ được dùng 1 lần'),
(26, 'Quả cầu băng sương', 'QuaCauBS.png', 'Sau khi trận đấu bắt đầu 3 phút, bạn sẽ nhận được Quả cầu băng sương. Sau khi sử dụng sẽ được miễn sát thương nhưng không thể công kích, di chuyển và chỉ có thể dùng 1 lần.'),
(27, 'Rừng nguyên sinh', 'RungNguyenSinh.png', 'Rừng nguyên sinh phù hợp với các tướng hỗ trợ, đấu sĩ đỡ đòn. Với các kỹ năng như Chạy sông, Phòng ngự, Hồi máu, Trói buộc thì bộ phù hiệu này cực kỹ hữu dụng cho các tướng đỡ đòn, làm tăng khả năng chống chịu, di chuyển sông và hồi máu giúp các tướng hỗ trợ, đỡ đòn có khả năng dẻo dai khi đi đường cũng như tham gia giao tranh tổng.'),
(28, 'Du hiệp', 'DuHiep.png', 'Rời khỏi giao tranh mỗi 5 giây nhận thêm hồi 20 máu và 10 năng lượng mỗi 5 giây, đồng thời đòn đánh thường kế tiếp sẽ làm chậm địch 30% trong 1 giây và giảm sát thương của địch 30% trong 2 giây'),
(29, 'Mộc giáp', 'MocGiap.png', 'Gánh chịu sát thương sẽ cộng dồn, đủ 20 lần sẽ hóa giải trạng thái bị khống chế và gây sát thương phép bằng 10% máu tối đa của bản thân với phạm vi 3.5 m và gây choáng 0.75 giây đồng thời tăng 30% hồi máu trong 3 giây'),
(30, 'Trói buộc', 'TroiBuoc.png', 'Khi tung chiêu khống chế trúng tướng địch (khiêu khích, hất tung, đánh lui, làm choáng, hóa đá…) sẽ giúp bản thân nhận hiệu quả thiêu đốt, mỗi 0.5 giây gây sát thương phép bằng 1% lượng máu tối đa trong 5 giây. Tướng địch bị thiêu đốt sẽ giảm 50 (+5 mỗi cấp tướng) kháng phép. Thời gian hồi chiêu 25 giây'),
(31, 'Sinh tồn', 'SinhTon.png', 'Lính và quái rừng bi hạ gục phụ cận khiến bản thân được tăng máu tối đa vĩnh viễn (lính cộng 1 tầng, quái rừng nhỏ cộng 2 tầng, quái rừng to cộng 3 tầng, mỗi tầng được 8 máu, tối đa được cộng 100 tầng)'),
(32, 'Bơm máu', 'BomMau.png', 'Hiệu quả hồi máu và lá chắn của bản thân tăng 10%. Nếu máu của mục tiêu thấp dưới 30%, hiệu quả này sẽ tăng thêm 10% nữa (bao gồm trang bị, kỹ năng phụ trợ)'),
(33, 'Bơm máu', 'BomMau.png', 'Hiệu quả hồi máu và lá chắn của bản thân tăng 10%. Nếu máu của mục tiêu thấp dưới 30%, hiệu quả này sẽ tăng thêm 10% nữa (bao gồm trang bị, kỹ năng phụ trợ)'),
(34, 'Canh gác', 'CanhGac.png', 'Khi đứng gần trụ (phạm vi 4m), bản thân sẽ được nhận 15% kháng hiệu ứng và 10% miễn thương'),
(35, 'Ám kích', 'AmKich.png', 'Ở trong bụi cỏ tung đòn đánh thường sẽ cộng thêm 4% sát thương chuẩn dựa trên lượng máu của kẻ địch khi đó . Rời khỏi bụi cỏ sau 4 giây vẫn nhận được hiệu quả này. Thời gian hồi chiêu 20 giây'),
(36, 'Nhạy bén', 'NhayBen.png', 'Trên đường sông được nhận thêm 10 tốc chạy và hồi thêm 20 máu cùng 10 năng lượng mỗi 5 giây');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `champions`
--

CREATE TABLE `champions` (
  `ID` int(5) NOT NULL,
  `champ_Name` varchar(20) NOT NULL,
  `image` varchar(13) DEFAULT NULL,
  `atk_Damage` int(4) NOT NULL,
  `id_role` int(3) NOT NULL,
  `id_lane` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `champions`
--

INSERT INTO `champions` (`ID`, `champ_Name`, `image`, `atk_Damage`, `id_role`, `id_lane`) VALUES
(1, 'Illumia', 'Illumia.jpg', 173, 1, 1),
(2, 'Krixi', 'Krixi.jpg', 153, 1, 1),
(3, 'Lauriel', 'Lauriel.jpg', 167, 1, 1),
(4, 'Liliana', 'Liliana.jpg', 156, 1, 1),
(5, 'Kahlii', 'Kahlii.jpg', 162, 1, 1),
(6, 'Wisp', 'Wisp.jpg', 161, 2, 3),
(7, 'Laville', 'Laville.jpg', 173, 2, 3),
(8, 'Fennik', 'Fennik.jpg', 161, 2, 3),
(9, 'Elsu', 'Elsu.jpg', 188, 2, 3),
(10, 'Violet', 'Violet.jpg', 172, 2, 3),
(11, 'Wiro', 'Wiro.jpg', 171, 3, 2),
(12, 'Arum', 'Arum.jpg', 163, 4, 5),
(13, 'Baldum', 'Baldum.jpg', 168, 4, 5),
(14, 'Murad', 'Murad.jpg', 169, 6, 4),
(15, 'Nakroth', 'Nakroth.jpg', 172, 6, 4),
(16, 'Enzo', 'Enzo.jpg', 178, 6, 4),
(17, 'Sinestrea', 'Sinestrea.jpg', 170, 6, 4),
(18, 'Astrid', 'Astrid.jpg', 170, 3, 2),
(19, 'Wonder Woman', 'WW.jpg', 173, 3, 2),
(20, 'Max', 'Max.jpg', 159, 3, 2),
(21, 'Xeniel', 'Xeniel.jpg', 158, 5, 5),
(22, 'Krizzix', 'Krizzix.jpg', 162, 5, 5),
(23, 'Annette', 'Annette.jpg', 173, 5, 5),
(24, 'Toro', 'Toro.jpg', 163, 4, 5),
(25, 'Taara', 'Taara.jpg', 173, 4, 5),
(26, 'Airi', 'Airi.jpg', 168, 3, 2),
(27, 'Triệu Vân', 'TrieuVan.jpg', 168, 3, 2),
(28, 'Amily', 'Amily.jpg', 176, 3, 2),
(29, 'Rouie', 'Rouie.jpg', 160, 5, 5),
(30, 'Helen', 'Helen.jpg', 159, 5, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `id` int(4) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_img` varchar(50) NOT NULL,
  `level_item` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`id`, `item_name`, `item_img`, `level_item`) VALUES
(1, 'Kiếm ngắn', 'KiemNgan.png', 1),
(2, 'Dao găm', 'DaoGam.png', 1),
(3, 'Găng tay', 'GangTay.png', 1),
(4, 'Chuỳ máu', 'ChuyMau.png', 1),
(5, 'Chuỳ xích', 'ChuyXich.png', 1),
(6, 'Sách phép', 'SachPhep.png', 1),
(7, 'Nhẫn lapis', 'NhanLapis.png', 1),
(8, 'Dây chuyền ma thuật', 'DayChuyenMT.png', 1),
(9, 'Nhẫn hồng ngọc', 'NhanHongNgoc.png', 1),
(10, 'Sách cổ', 'SachCo.png', 1),
(11, 'Nhẫn ma pháp', 'NhanMP.png', 1),
(12, 'Giáp nhẹ', 'GiapNhe.png', 1),
(13, 'Găng giác đấu', 'GangGD.png', 1),
(14, 'Bùa sức mạnh', 'BuaSM.png', 1),
(15, 'Dây chuyền hồng ngọc', 'DayChuyenHN.png', 1),
(16, 'Rựa thợ săn', 'RuaThoSan.png', 1),
(17, 'Giày thép', 'GiayThep.png', 1),
(18, 'Nguyên tố bảo thạch', 'NguyenToBT.png', 1),
(19, 'Kiếm dài', 'KiemDai.png', 2),
(20, 'Chuỳ cổ', 'ChuyCo.png', 2),
(21, 'Song đao', 'SongDao.png', 2),
(22, 'Thương đấu sĩ', 'ThuongDauSi.png', 2),
(23, 'Phi tiêu', 'PhiTieu.png', 2),
(24, 'Gươnm Uriel', 'GuomUriel.png', 2),
(25, 'Sớ ma thuật', 'SoMT.png', 2),
(26, 'Gươm nguyên tố', 'GuomNT.png', 2),
(27, 'Mặt nạ ma quái', 'MatNaMaQuai.png', 2),
(28, 'Phượng hoàng lệ', 'PhuongHoangLe.png', 2),
(29, 'Vòng đức hạnh', 'VongDucHanh.png', 2),
(30, 'Huyết trượng', 'HuyetTruong.png', 2),
(31, 'Giáp chân', 'GiapChan.png', 2),
(32, 'Trượng hỗn mang', 'TruongHonMang.png', 2),
(33, 'Tim Incubus', 'TimIncubus.png', 2),
(34, 'Đai kháng phép', 'DaiKhangPhep.png', 2),
(35, 'Găng bạch kim', 'GangBachKim.png', 2),
(36, 'Giáp hiệp sĩ', 'GiapHiepSi.png', 2),
(37, 'Thổ hệ bảo thạch', 'ThoHeBaoThach.png', 2),
(38, 'Giáp thống khổ', 'GiapThongKho.png', 2),
(39, 'Hercules thịnh nộ', 'HẻculesThinhNo.png', 2),
(40, 'Giáp cuồng nộ', 'GiapCuongNo.png', 2),
(41, 'Dây chuyền lục bảo', 'DayChuyenLucBao.png', 2),
(42, 'Gươm hiến tế', 'GuomHienTe.png', 2),
(43, 'Rìu Gnoll', 'RiuGnoll.png', 2),
(44, 'Đao truy kích', 'DaoTruyKich.png', 2),
(45, 'Giày hộ vệ', 'GiayHoVe.png', 2),
(46, 'Giày kiên cường', 'GiayKienCuong.png', 2),
(47, 'Giày thuật sĩ', 'GiayThuatSi.png', 2),
(48, 'Giày phù thuỷ', 'GiayPhuThuy.png', 2),
(49, 'Giày du mục', 'GiayDuMuc.png', 2),
(50, 'Giày Hermes', 'GiayHermes.png', 2),
(51, 'Liềm đoạt mệnh', 'LiemDoatMenh.png', 2),
(52, 'Đao truy hồn', 'DaoTruyHon.png', 2),
(53, 'Sách truy hồn', 'SachTruyHon.png', 2),
(54, 'CungGioLoc', 'CungGioLoc.png', 2),
(55, 'Thuỷ hệ bảo', 'ThuyHeBao.png', 2),
(56, 'Hoả hệ bảo', 'HoaHeBao.png', 2),
(57, 'Ngọc đại pháp sư', 'NgocDaiPhapSu.png', 3),
(58, 'Vương miện Hecate', 'VuongMienHecate.png', 3),
(59, 'Cầu chiêm tinh', 'CauChiemTinh.png', 3),
(60, 'Trượng bùng nổ', 'TruongBungNo.png', 3),
(61, 'Xuyên tâm lệnh', 'XuyenTamLenh.png', 3),
(62, 'Sách thánh', 'SachThanh.png', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lane`
--

CREATE TABLE `lane` (
  `id` int(11) NOT NULL,
  `lane_name` varchar(15) NOT NULL,
  `id_role` int(11) NOT NULL,
  `lane_img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lane`
--

INSERT INTO `lane` (`id`, `lane_name`, `id_role`, `lane_img`) VALUES
(1, 'Mid', 1, 'mid_icon.png'),
(2, 'Top', 3, 'top_icon.png'),
(3, 'Bot', 2, 'adc_icon.png'),
(4, 'Jungle', 4, 'jungle_icon.pn'),
(5, 'Support', 5, 'support_icon.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `map`
--

CREATE TABLE `map` (
  `id` int(3) NOT NULL,
  `map_name` varchar(40) NOT NULL,
  `map_img` varchar(50) NOT NULL,
  `map_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `map`
--

INSERT INTO `map` (`id`, `map_name`, `map_img`, `map_description`) VALUES
(1, '5v5', '5v5-map.png', 'Bình nguyên vô tận'),
(2, '3v3', '3v3-map.png', 'Cao nguyên xanh'),
(3, '1v1', '1v1-map.png', 'Độc cô cầu bại');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_champions`
--

CREATE TABLE `role_champions` (
  `id_role` int(3) NOT NULL,
  `name_role` varchar(13) NOT NULL,
  `role_img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role_champions`
--

INSERT INTO `role_champions` (`id_role`, `name_role`, `role_img`) VALUES
(1, 'Pháp sư', 'wizard_role.png'),
(2, 'Xạ thủ', 'marksman_role.png'),
(3, 'Đấu sĩ', 'fighter_role.png'),
(4, 'Đỡ đòn', 'tank_role.png'),
(5, 'Trợ thủ', 'support_role.png'),
(6, 'Sát thủ', 'assassin.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `spells`
--

CREATE TABLE `spells` (
  `id` int(3) NOT NULL,
  `spell_name` varchar(30) NOT NULL,
  `spell_image` varchar(70) NOT NULL,
  `description_spell` varchar(150) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `spells`
--

INSERT INTO `spells` (`id`, `spell_name`, `spell_image`, `description_spell`, `win_rate`, `pick_rate`) VALUES
(1, 'Tốc biến', 'Flash.png', 'Dịch chuyển trong 1 khoảng cách nhất định theo 1 hướng cụ thể', 95, 99),
(2, 'Tốc Hành', 'Speed.png', 'Tăng 30% tốc chạy trong 10 giây', 86.2, 88.5),
(3, 'Bộc phá', 'BocPha.png', 'Gây sát thương chuẩn tương đương 16% máu đã mất của kẻ địch', 85, 81.6),
(4, 'Hồi máu', 'Heal.png', 'Hồi 15% máu cho bản thân và những đồng minh xung quanh, đồng thời tăng 15% tốc chạy cho cả nhóm trong 2 giây', 80, 77.9),
(5, 'Trừng phạt', 'Smite.png', 'Gây 800 sát thương lên quái xung quanh và làm choáng chúng trong 1 giây', 88.3, 89.5),
(6, 'Cuồng nộ', 'Rage.png', 'Tăng 60% tốc đánh và 10% công vật lý trong 5 giây', 75.5, 60.3),
(7, 'Thanh tẩy', 'Fresh.png', 'hóa giải tất cả hiệu ứng bất lợi và khống chế, đồng thời miễn dịch với khống chế trong 1.5 giây', 70.2, 59.6),
(8, 'Ngất ngư', 'NgatNgu.png', 'Làm choáng kẻ địch xung quanh trong 0.5 giây và làm chậm chúng trong 1 giây', 64.7, 54.7),
(9, 'Cấm trụ', 'AntiTurret.png', 'Vô hiệu hóa 1 công trình trong 5 giây', 58.2, 47.4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats`
--

CREATE TABLE `stats` (
  `id` int(3) NOT NULL,
  `id_lane` int(3) DEFAULT NULL,
  `id_Champ` int(11) NOT NULL,
  `tier` text NOT NULL,
  `trend` varchar(10) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL,
  `KDA` float NOT NULL,
  `Score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats`
--

INSERT INTO `stats` (`id`, `id_lane`, `id_Champ`, `tier`, `trend`, `win_rate`, `pick_rate`, `KDA`, `Score`) VALUES
(1, 1, 1, 'S', '++', 54.8, 34, 1.43, 75.873),
(2, 1, 2, 'S-', '+', 53.2, 30, 1.23, 71.792),
(3, 3, 9, 'A+', '+', 49.3, 29.4, 1.1, 68.643),
(4, 4, 9, 'S-', '++', 52.4, 31, 1.38, 73.815);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats_badge`
--

CREATE TABLE `stats_badge` (
  `id` int(3) NOT NULL,
  `id_champ` int(3) NOT NULL,
  `id_firstBadge` int(3) NOT NULL,
  `id_secondBadge` int(3) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats_badge`
--

INSERT INTO `stats_badge` (`id`, `id_champ`, `id_firstBadge`, `id_secondBadge`, `win_rate`, `pick_rate`) VALUES
(1, 1, 10, 19, 92, 98),
(2, 1, 19, 10, 85, 89.5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats_champions`
--

CREATE TABLE `stats_champions` (
  `id` int(3) NOT NULL,
  `id_champ` int(3) NOT NULL,
  `id_lane` int(11) NOT NULL,
  `tier` char(8) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL,
  `ban_rate` float NOT NULL,
  `KDA` float NOT NULL,
  `Score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats_champions`
--

INSERT INTO `stats_champions` (`id`, `id_champ`, `id_lane`, `tier`, `win_rate`, `pick_rate`, `ban_rate`, `KDA`, `Score`) VALUES
(1, 1, 1, 'S', 53.6, 34, 1.31, 1.23, 74.624),
(2, 1, 2, 'B-', 40.2, 21, 0.72, 0.42, 50.201),
(3, 1, 4, 'Off meta', 21.5, 12, 0.21, 0.12, 10.231),
(4, 1, 3, 'Off meta', 29.2, 14.7, 0.34, 0.36, 24.825),
(5, 1, 5, 'C-', 37.2, 16.4, 0.57, 0.62, 30.712);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats_items`
--

CREATE TABLE `stats_items` (
  `id` int(3) NOT NULL,
  `id_items` int(3) NOT NULL,
  `id_Champ` int(3) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats_items`
--

INSERT INTO `stats_items` (`id`, `id_items`, `id_Champ`, `win_rate`, `pick_rate`) VALUES
(1, 6, 1, 51, 83),
(2, 17, 1, 47, 71),
(3, 11, 1, 41, 65),
(4, 8, 1, 36, 42),
(5, 46, 1, 90, 97),
(6, 53, 1, 76, 82),
(7, 58, 1, 86.5, 79.8),
(8, 60, 1, 90.3, 90.2),
(9, 61, 1, 68.3, 78.4),
(10, 62, 1, 86.1, 68.9),
(11, 1, 9, 93, 96),
(12, 2, 9, 83, 87),
(13, 17, 9, 79, 80),
(14, 3, 9, 62, 75);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats_spell`
--

CREATE TABLE `stats_spell` (
  `id` int(3) NOT NULL,
  `id_spell` int(3) NOT NULL,
  `id_Champ` int(3) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats_spell`
--

INSERT INTO `stats_spell` (`id`, `id_spell`, `id_Champ`, `win_rate`, `pick_rate`) VALUES
(1, 1, 1, 59, 100),
(2, 4, 1, 41, 38),
(3, 8, 1, 37, 23),
(4, 2, 1, 28, 22),
(5, 1, 9, 51, 100),
(6, 2, 9, 47, 65),
(7, 6, 9, 38.5, 50),
(8, 8, 9, 28, 37);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats_start_items`
--

CREATE TABLE `stats_start_items` (
  `id` int(3) NOT NULL,
  `id_items` int(3) NOT NULL,
  `id_champ` int(3) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats_start_items`
--

INSERT INTO `stats_start_items` (`id`, `id_items`, `id_champ`, `win_rate`, `pick_rate`) VALUES
(1, 6, 1, 51, 83),
(2, 17, 1, 47, 71),
(3, 11, 1, 41, 65),
(4, 8, 1, 36, 42);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `user_name`, `user_email`, `user_pass`) VALUES
(1, 'Vonguyen123', 'doanvonguyen@gmail.com', '123'),
(2, 'thieuthang123', 'thangkhongngu123@gmail.com', '123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `badge`
--
ALTER TABLE `badge`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `champions`
--
ALTER TABLE `champions`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lane`
--
ALTER TABLE `lane`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_champions`
--
ALTER TABLE `role_champions`
  ADD PRIMARY KEY (`id_role`);

--
-- Chỉ mục cho bảng `spells`
--
ALTER TABLE `spells`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stats_badge`
--
ALTER TABLE `stats_badge`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stats_champions`
--
ALTER TABLE `stats_champions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stats_items`
--
ALTER TABLE `stats_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stats_spell`
--
ALTER TABLE `stats_spell`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stats_start_items`
--
ALTER TABLE `stats_start_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `badge`
--
ALTER TABLE `badge`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `champions`
--
ALTER TABLE `champions`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `lane`
--
ALTER TABLE `lane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `map`
--
ALTER TABLE `map`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `role_champions`
--
ALTER TABLE `role_champions`
  MODIFY `id_role` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `spells`
--
ALTER TABLE `spells`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `stats_badge`
--
ALTER TABLE `stats_badge`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `stats_champions`
--
ALTER TABLE `stats_champions`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `stats_items`
--
ALTER TABLE `stats_items`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `stats_spell`
--
ALTER TABLE `stats_spell`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `stats_start_items`
--
ALTER TABLE `stats_start_items`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
