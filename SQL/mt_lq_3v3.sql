-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th5 31, 2023 lúc 06:03 AM
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
-- Cơ sở dữ liệu: `mt_lq_3v3`
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
  `id_champ` int(3) NOT NULL,
  `champ_Name` varchar(20) NOT NULL,
  `image` varchar(13) DEFAULT NULL,
  `id_role` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `champions`
--

INSERT INTO `champions` (`id_champ`, `champ_Name`, `image`, `id_role`) VALUES
(1, 'Illumia', 'Illumia.jpg', 1),
(2, 'Krixi', 'Krixi.jpg', 1),
(3, 'Lauriel', 'Lauriel.jpg', 1),
(4, 'Liliana', 'Liliana.jpg', 1),
(5, 'Kahlii', 'Kahlii.jpg', 1),
(6, 'Wisp', 'Wisp.jpg', 2),
(7, 'Laville', 'Laville.jpg', 2),
(8, 'Fennik', 'Fennik.jpg', 2),
(9, 'Elsu', 'Elsu.jpg', 2),
(10, 'Violet', 'Violet.jpg', 2),
(11, 'Wiro', 'Wiro.jpg', 3),
(12, 'Arum', 'Arum.jpg', 4),
(13, 'Baldum', 'Baldum.jpg', 4),
(14, 'Murad', 'Murad.jpg', 6),
(15, 'Nakroth', 'Nakroth.jpg', 6),
(16, 'Enzo', 'Enzo.jpg', 6),
(17, 'Sinestrea', 'Sinestrea.jpg', 6),
(18, 'Astrid', 'Astrid.jpg', 3),
(19, 'Wonder Woman', 'WW.jpg', 3),
(20, 'Max', 'Max.jpg', 3),
(21, 'Xeniel', 'Xeniel.jpg', 5),
(22, 'Krizzix', 'Krizzix.jpg', 5),
(23, 'Annette', 'Annette.jpg', 5),
(24, 'Toro', 'Toro.jpg', 4),
(25, 'Taara', 'Taara.jpg', 4),
(26, 'Airi', 'Airi.jpg', 3),
(27, 'Triệu Vân', 'TrieuVan.jpg', 3),
(28, 'Amily', 'Amily.jpg', 3),
(29, 'Rouie', 'Rouie.jpg', 5),
(30, 'Helen', 'Helen.jpg', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `id_items` int(3) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_img` varchar(50) NOT NULL,
  `level_item` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`id_items`, `item_name`, `item_img`, `level_item`) VALUES
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
(16, 'Rựa thợ săn', 'RuaThoSan.jpg', 1),
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
(62, 'Sách thánh', 'SachThanh.png', 3),
(63, 'Mặt nạ Berith', 'MatNaBerith.png', 3),
(64, 'Gươm Loki', 'GuomLoKi.png', 3),
(65, 'Kiếm Muramasa', 'KiemMuramasa.png', 3),
(66, 'Kiếm Fafnir', 'KiemFafnir.png', 3),
(67, 'Nanh Fernir', 'NanhFernir.png', 3),
(68, 'Phức hợp kiếm', 'PhucHopKiem.png', 3),
(69, 'Giáp hộ mệnh', 'GiapHoMenh.png', 3),
(70, 'Đại địa mở trói', 'DaiDiaMoTroi.png', 3),
(71, 'Đại địa ma nhẫn', 'DaiDiaMaNhan.png', 3),
(72, 'Đại địa nguyên lục', 'DaiDiaNguyenLuc.png', 3),
(73, 'Đại địa thần khiên', 'DaiDiaThanKhien.png', 3),
(74, 'Đại địa huỷ diệt', 'DaiDiaHuyDiet.png', 3),
(75, 'Băng nhẫn Skadi', 'BangNhanSkadi.png', 3),
(76, 'Diệt thần cung', 'DietThanCung.png', 2),
(77, 'Cung tà ma', 'CungTaMa.png', 3),
(78, 'Huân chương Troy', 'HuanChuongTroy.png', 3),
(79, 'Khiên huyền thoại', 'KhienHuyenThoai.png', 3),
(80, 'Khiên thất truyền', 'KhienThatTruyen.png', 3),
(81, 'Kiếm Truy Hồn', 'KiemTruyHon.png', 3),
(82, 'Thương Longinus', 'ThuongLonginus.png', 3),
(83, 'Thánh Kiếm', 'ThanhKiem.png', 3),
(84, 'Liệt Hỏa Mở Trói', 'LietHoaMoTroi.png', 3),
(85, 'Rìu Leviathan', 'RiuLeviathan.png', 3),
(86, 'Áo choàng băng giá', 'AoChoangBangGia.png', 3),
(87, 'Áo choàng thần Ra', 'AoChoangThanRa.png', 3),
(88, 'Phù chú trường sinh', 'PhuChuTruongSinh.png', 3);

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
-- Cấu trúc bảng cho bảng `skills`
--

CREATE TABLE `skills` (
  `id` int(3) NOT NULL,
  `id_champ` int(3) NOT NULL,
  `passive` varchar(30) NOT NULL,
  `first_skill` varchar(30) NOT NULL,
  `second_skill` varchar(30) NOT NULL,
  `third_skill` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `skills`
--

INSERT INTO `skills` (`id`, `id_champ`, `passive`, `first_skill`, `second_skill`, `third_skill`) VALUES
(1, 1, 'NoiTai.png', 'QuaCauAS_1.png', 'TrucXuat_2.png', 'ThanTran_3.png'),
(2, 9, 'NoiTai.png', 'UngTram_1.png', 'VTK_2.png', 'GiatBan_3.png'),
(3, 21, 'NoiTai.png', 'THT_1.png', 'CTL_2.png', 'SMCT_3.png'),
(4, 15, 'Noitai.png', 'BTD_1.png', 'NCRR_2.png', 'GHQ_3.png'),
(5, 14, 'NoiTai.png', 'TAD_1.png', 'VAC_2.png', 'AAT_3.png'),
(6, 25, 'NoiTai.png', 'TT_1.png', 'DT_2.png', 'TTT_3.png'),
(7, 17, 'NoiTai.png', 'ND_1.png', 'MQ_2.png', 'TM_3.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `spells`
--

CREATE TABLE `spells` (
  `id_spell` int(3) NOT NULL,
  `spell_name` varchar(30) NOT NULL,
  `spell_image` varchar(70) NOT NULL,
  `description_spell` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `spells`
--

INSERT INTO `spells` (`id_spell`, `spell_name`, `spell_image`, `description_spell`) VALUES
(1, 'Tốc biến', 'Flash.png', 'Dịch chuyển trong 1 khoảng cách nhất định theo 1 hướng cụ thể'),
(2, 'Tốc Hành', 'Speed.png', 'Tăng 30% tốc chạy trong 10 giây'),
(3, 'Bộc phá', 'BocPha.png', 'Gây sát thương chuẩn tương đương 16% máu đã mất của kẻ địch'),
(4, 'Hồi máu', 'Heal.png', 'Hồi 15% máu cho bản thân và những đồng minh xung quanh, đồng thời tăng 15% tốc chạy cho cả nhóm trong 2 giây'),
(5, 'Trừng phạt', 'Smite.png', 'Gây 800 sát thương lên quái xung quanh và làm choáng chúng trong 1 giây'),
(6, 'Cuồng nộ', 'Rage.png', 'Tăng 60% tốc đánh và 10% công vật lý trong 5 giây'),
(7, 'Thanh tẩy', 'Fresh.png', 'hóa giải tất cả hiệu ứng bất lợi và khống chế, đồng thời miễn dịch với khống chế trong 1.5 giây'),
(8, 'Ngất ngư', 'NgatNgu.png', 'Làm choáng kẻ địch xung quanh trong 0.5 giây và làm chậm chúng trong 1 giây'),
(9, 'Cấm trụ', 'AntiTurret.png', 'Vô hiệu hóa 1 công trình trong 5 giây');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats`
--

CREATE TABLE `stats` (
  `id` int(3) NOT NULL,
  `id_champ` int(3) DEFAULT NULL,
  `id_role` int(3) NOT NULL,
  `trend` varchar(10) NOT NULL,
  `status` int(2) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL,
  `KDA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats`
--

INSERT INTO `stats` (`id`, `id_champ`, `id_role`, `trend`, `status`, `win_rate`, `pick_rate`, `KDA`) VALUES
(1, 1, 1, '+++', 1, 55.7, 34, 1.43),
(2, 2, 1, '++', 1, 54.3, 30, 1.23),
(3, 9, 2, '-', 1, 53.2, 29.4, 1.21),
(5, 14, 6, '++', 1, 54.3, 62.7, 1.23),
(6, 21, 5, '+', 1, 52.3, 58.1, 1.19),
(7, 20, 3, '--', 1, 34.3, 42.7, 0.42),
(8, 8, 2, '---', 1, 21.6, 35.8, 0.21),
(9, 15, 6, '+', 1, 45.5, 47.7, 0.48);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats_spell`
--

CREATE TABLE `stats_spell` (
  `id` int(3) NOT NULL,
  `id_spell` int(3) NOT NULL,
  `id_champ` int(3) DEFAULT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats_spell`
--

INSERT INTO `stats_spell` (`id`, `id_spell`, `id_champ`, `win_rate`, `pick_rate`) VALUES
(1, 1, 1, 59, 94),
(2, 4, 1, 41, 38),
(3, 8, 1, 37, 23),
(4, 2, 1, 28, 22),
(5, 1, 9, 51, 100),
(6, 2, 9, 47, 65),
(7, 6, 9, 38.5, 50),
(8, 8, 9, 28, 37),
(9, 5, 15, 56.6, 72.6),
(10, 1, 15, 23.6, 22.6),
(11, 2, 15, 25.4, 33.5),
(12, 3, 15, 34.5, 43.2),
(13, 1, 21, 54.6, 82.9),
(14, 3, 21, 47.1, 79.2),
(15, 4, 21, 41.4, 63.1),
(16, 2, 21, 32.5, 52.7);

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
(4, 8, 1, 36, 42),
(5, 1, 9, 54.2, 56.2),
(6, 2, 9, 46.7, 46.8),
(7, 3, 9, 34.2, 38.1),
(8, 17, 9, 30.5, 32.2),
(9, 16, 15, 77.4, 68.9),
(10, 1, 15, 67.4, 66.5),
(11, 2, 15, 45.5, 45.9),
(12, 3, 15, 54.4, 44.6),
(13, 6, 21, 65.1, 91.4),
(14, 7, 21, 57.2, 80.2),
(15, 8, 21, 50.3, 63.1),
(16, 17, 21, 43.8, 50.61);

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
  ADD PRIMARY KEY (`id_champ`),
  ADD KEY `id_role` (`id_role`);

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_items`);

--
-- Chỉ mục cho bảng `role_champions`
--
ALTER TABLE `role_champions`
  ADD PRIMARY KEY (`id_role`);

--
-- Chỉ mục cho bảng `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_champ` (`id_champ`),
  ADD KEY `id_champ_2` (`id_champ`);

--
-- Chỉ mục cho bảng `spells`
--
ALTER TABLE `spells`
  ADD PRIMARY KEY (`id_spell`);

--
-- Chỉ mục cho bảng `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_champ` (`id_champ`),
  ADD KEY `id_role` (`id_role`);

--
-- Chỉ mục cho bảng `stats_spell`
--
ALTER TABLE `stats_spell`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_spell` (`id_spell`,`id_champ`),
  ADD KEY `id_champ` (`id_champ`);

--
-- Chỉ mục cho bảng `stats_start_items`
--
ALTER TABLE `stats_start_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_items` (`id_items`,`id_champ`),
  ADD KEY `id_champ` (`id_champ`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `badge`
--
ALTER TABLE `badge`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `role_champions`
--
ALTER TABLE `role_champions`
  MODIFY `id_role` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `stats_spell`
--
ALTER TABLE `stats_spell`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `stats_start_items`
--
ALTER TABLE `stats_start_items`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `champions`
--
ALTER TABLE `champions`
  ADD CONSTRAINT `champions_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role_champions` (`id_role`);

--
-- Các ràng buộc cho bảng `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`id_champ`) REFERENCES `champions` (`id_champ`);

--
-- Các ràng buộc cho bảng `stats`
--
ALTER TABLE `stats`
  ADD CONSTRAINT `stats_ibfk_1` FOREIGN KEY (`id_champ`) REFERENCES `champions` (`id_champ`),
  ADD CONSTRAINT `stats_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `role_champions` (`id_role`);

--
-- Các ràng buộc cho bảng `stats_spell`
--
ALTER TABLE `stats_spell`
  ADD CONSTRAINT `stats_spell_ibfk_1` FOREIGN KEY (`id_spell`) REFERENCES `spells` (`id_spell`),
  ADD CONSTRAINT `stats_spell_ibfk_2` FOREIGN KEY (`id_champ`) REFERENCES `champions` (`id_champ`);

--
-- Các ràng buộc cho bảng `stats_start_items`
--
ALTER TABLE `stats_start_items`
  ADD CONSTRAINT `stats_start_items_ibfk_1` FOREIGN KEY (`id_champ`) REFERENCES `champions` (`id_champ`),
  ADD CONSTRAINT `stats_start_items_ibfk_2` FOREIGN KEY (`id_items`) REFERENCES `items` (`id_items`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
