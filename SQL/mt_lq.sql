-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th5 31, 2023 lúc 06:02 AM
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
-- Cơ sở dữ liệu: `mt_lq`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `admin_name` char(20) NOT NULL,
  `admin_email` char(30) NOT NULL,
  `admin_pass` char(15) NOT NULL,
  `display_name` varchar(30) NOT NULL,
  `admin_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_email`, `admin_pass`, `display_name`, `admin_status`) VALUES
(1, 'Vonguyenvippro123', 'wwwdoanvonguyen@gmail.com', '123456', 'Nguyên admin', 1),
(2, 'Nhathuy2', 'nhathuy2443@gmail.com', '123456', 'Huy FE', 1),
(3, 'Vyz123', 'dinhvy215@gmail.com', '123456', 'Vỹ handsome', 0);

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
(36, 'Nhạy bén', 'NhayBen.png', 'Trên đường sông được nhận thêm 10 tốc chạy và hồi thêm 20 máu cùng 10 năng lượng mỗi 5 giây'),
(37, 'Siêu hồi máu', 'SieuHoiMau.png', 'Lập tức hồi cho bản thân 660 máu và 210 năng lượng. Nút Hồi máu sẽ bị thay bằng Siêu hồi máu với hồi chiêu tương đương.'),
(38, 'Luyện kim', 'LuyenKim.png', 'Mỗi 20 giây nhận một cộng dồn Luyện kim, tối đa nhận 3 cộng dồn. Tung chiêu/đánh thường lên tướng địch hoặc trụ sẽ giúp bản thân nhận 16 vàng và tiêu hao 1 cộng dồn Luyện kim. Hạn mức tối đa vàng nhận được là 800.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `champions`
--

CREATE TABLE `champions` (
  `id_champ` int(3) NOT NULL,
  `champ_Name` varchar(20) NOT NULL,
  `image` varchar(13) DEFAULT NULL,
  `atk_Damage` int(4) NOT NULL,
  `id_role` int(3) NOT NULL,
  `id_lane` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `champions`
--

INSERT INTO `champions` (`id_champ`, `champ_Name`, `image`, `atk_Damage`, `id_role`, `id_lane`) VALUES
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
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(3) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `user_name`, `user_email`, `subject`, `message`) VALUES
(1, 'thieuthang', 'wwwnguyendoan123@gmail.com', 'Đại số', 'Tks'),
(2, 'Vỹ', 'wwwnguyendoan123@gmail.com', 'Web rất tuyệt', 'Web đã giúp tôi khai sáng rất nhiều thứ, trong đó có Nakroth mặt nạ'),
(3, 'Vỹ', 'wwwnguyendoan123@gmail.com', 'Web rất tuyệt', 'Web đã giúp tôi khai sáng rất nhiều thứ, trong đó có Nakroth mặt nạ'),
(4, 'Huy', 'wwwnguyendoan123@gmail.com', 'Web cần cải thiện', 'Truy cập hơi chậm và đôi lúc lag'),
(5, 'Huy', 'wwwnguyendoan123@gmail.com', 'Web cần cải thiện', 'Truy cập hơi chậm và đôi lúc lag');

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
-- Cấu trúc bảng cho bảng `lane`
--

CREATE TABLE `lane` (
  `id_lane` int(3) NOT NULL,
  `lane_name` varchar(15) NOT NULL,
  `id_role` int(11) NOT NULL,
  `lane_img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lane`
--

INSERT INTO `lane` (`id_lane`, `lane_name`, `id_role`, `lane_img`) VALUES
(1, 'Mid', 1, 'mid_icon.png'),
(2, 'Top', 3, 'top_icon.png'),
(3, 'ADC', 2, 'adc_icon.png'),
(4, 'Jungle', 4, 'jungle_icon.png'),
(5, 'Support', 5, 'support_icon.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reset`
--

CREATE TABLE `reset` (
  `id` int(3) NOT NULL,
  `email` varchar(30) NOT NULL,
  `code` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reset`
--

INSERT INTO `reset` (`id`, `email`, `code`) VALUES
(1, 'wwwnguyendoan123@gmail.com', 428644),
(2, 'huynhngoctrang39@gmail.com', 568400),
(3, 'thbn18102003@gmail.com', 754903);

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
(6, 'Sát thủ', 'assassin_role.png');

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
(9, 'Cấm trụ', 'BanTurret.png', 'Vô hiệu hóa 1 công trình trong 5 giây');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats`
--

CREATE TABLE `stats` (
  `id` int(3) NOT NULL,
  `id_lane` int(3) NOT NULL,
  `id_champ` int(3) DEFAULT NULL,
  `trend` varchar(10) NOT NULL,
  `status` int(2) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL,
  `ban_rate` float NOT NULL,
  `KDA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats`
--

INSERT INTO `stats` (`id`, `id_lane`, `id_champ`, `trend`, `status`, `win_rate`, `pick_rate`, `ban_rate`, `KDA`) VALUES
(1, 1, 1, '++', 1, 55.7, 34, 1.5, 1.43),
(2, 1, 2, '+', 1, 54.3, 30, 1.34, 1.23),
(3, 1, 9, '+', 1, 53.2, 29.4, 1.3, 1.21),
(4, 3, 9, '+', 1, 54.7, 31, 1.36, 1.38),
(5, 2, 1, '-', 1, 40.2, 37.8, 0.92, 0.62),
(6, 3, 1, '-', 1, 40.3, 29.1, 0.23, 0.32),
(7, 4, 1, '-', 0, 42.2, 31.8, 0.52, 0.55),
(8, 5, 1, '-', 0, 38.6, 35.7, 0.63, 0.59),
(9, 1, 4, '++', 1, 56, 44, 1.76, 1.82),
(10, 1, 5, '-', 1, 48.3, 38, 0.82, 0.94),
(11, 1, 12, '--', 1, 34.5, 27.9, 0.42, 0.52),
(12, 1, 26, '-', 1, 43.8, 38.3, 0.82, 0.81),
(13, 3, 6, '-', 1, 43.2, 24.2, 0.41, 0.73),
(14, 3, 8, '--', 1, 30.6, 13.4, 0.28, 0.28),
(15, 3, 10, '+', 1, 40.1, 27.2, 0.34, 0.46),
(16, 4, 9, '---', 0, 23.6, 10.3, 0.51, 0.32),
(17, 2, 9, '-', 1, 48.6, 41.7, 0.62, 1.02),
(18, 5, 9, '--', 1, 34.1, 29.4, 0.52, 0.51),
(19, 5, 21, '++', 1, 54.6, 51.8, 1.12, 1.52),
(20, 3, 21, '---', 0, 28.5, 12.7, 0.21, 0.36),
(21, 4, 15, '++', 1, 57.3, 61.3, 1.72, 1.84),
(22, 2, 15, '+', 1, 48.2, 50.4, 1.12, 1.04),
(23, 1, 15, '-', 1, 34.3, 23.6, 0.31, 0.32),
(24, 3, 15, '--', 1, 43.5, 33.6, 0.72, 0.98),
(25, 5, 15, '-', 0, 39.4, 38.1, 0.92, 0.84),
(26, 4, 14, '+', 1, 51.2, 52.4, 1.42, 1.44),
(27, 2, 14, '+', 1, 48.7, 49.3, 1.22, 1.21),
(28, 1, 14, '-', 1, 50.2, 45.7, 1.17, 1.1),
(29, 3, 14, '-', 1, 43.5, 32.6, 0.61, 0.91),
(30, 5, 14, '-', 0, 39.9, 37.4, 0.62, 0.74),
(31, 2, 25, '-', 1, 43.2, 38.6, 0.81, 0.81),
(32, 4, 25, '-', 1, 44.2, 39.5, 0.95, 1),
(33, 3, 25, '-', 0, 32.4, 26.8, 0.41, 0.47),
(34, 5, 25, '-', 1, 48.2, 42.6, 0.62, 0.87),
(35, 1, 21, '+', 1, 49.6, 46.1, 0.45, 0.62),
(36, 2, 21, '-', 0, 27.9, 31.6, 0.24, 0.31),
(37, 4, 21, '---', 0, 14.8, 25.7, 0.17, 0.1),
(38, 1, 25, '--', 0, 41.5, 26.8, 0.43, 0.41),
(39, 1, 17, '-', 1, 33.2, 11.2, 9.2, 0.54),
(40, 2, 17, '-', 0, 31.2, 12.2, 8.2, 0.44),
(41, 3, 17, '-', 0, 33.2, 11.2, 9.2, 0.54),
(42, 4, 17, '++', 1, 53.2, 41.2, 9.2, 0.98),
(43, 5, 17, '-', 0, 33.2, 11.2, 9.2, 0.54);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats_spell`
--

CREATE TABLE `stats_spell` (
  `id` int(3) NOT NULL,
  `id_spell` int(3) NOT NULL,
  `id_champ` int(3) DEFAULT NULL,
  `id_lane` int(3) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats_spell`
--

INSERT INTO `stats_spell` (`id`, `id_spell`, `id_champ`, `id_lane`, `win_rate`, `pick_rate`) VALUES
(1, 1, 1, 1, 59, 96),
(2, 4, 1, 1, 41, 38),
(3, 8, 1, 1, 37, 23),
(4, 2, 1, 1, 28, 22),
(5, 1, 9, 3, 51, 92.5),
(6, 2, 9, 3, 47, 65),
(7, 6, 9, 3, 38.5, 50),
(8, 8, 9, 3, 28, 37),
(9, 4, 21, 5, 53.5, 52.8),
(10, 1, 21, 5, 52.1, 58.9),
(11, 8, 21, 5, 35.8, 32.4),
(12, 9, 21, 5, 21.3, 11),
(13, 5, 9, 4, 24.6, 89.4),
(14, 1, 9, 4, 28.9, 53.1),
(15, 2, 9, 4, 19.4, 43.6),
(16, 3, 9, 4, 7.5, 31.8),
(17, 1, 9, 1, 54.6, 43.7),
(18, 2, 9, 1, 41.7, 36),
(19, 3, 9, 1, 35.7, 31.2),
(20, 6, 9, 1, 24.7, 25.8),
(21, 1, 9, 2, 52.1, 45.7),
(22, 2, 9, 2, 41.5, 34.3),
(23, 6, 9, 2, 32.3, 29.2),
(24, 8, 9, 2, 20.7, 17.8),
(25, 1, 9, 5, 54.7, 72.4),
(26, 4, 9, 5, 51.1, 61.5),
(27, 2, 9, 5, 43.5, 51.8),
(28, 3, 9, 5, 31.6, 41.6),
(29, 5, 15, 4, 56.6, 72.6),
(30, 1, 15, 4, 23.6, 22.6),
(31, 2, 15, 4, 25.4, 33.5),
(32, 3, 15, 4, 34.5, 43.2),
(33, 3, 15, 1, 34.3, 22.6),
(34, 2, 15, 1, 30.3, 27.6),
(35, 1, 15, 1, 24.3, 32.6),
(36, 7, 15, 1, 32.3, 23.6),
(37, 2, 15, 2, 46.2, 51.2),
(38, 1, 15, 2, 41.7, 47.8),
(39, 7, 15, 2, 35.3, 33.3),
(40, 3, 15, 2, 23.3, 25.1),
(41, 3, 15, 3, 22.3, 33.1),
(42, 1, 15, 3, 12.3, 23.1),
(43, 2, 15, 3, 32.6, 43.1),
(44, 7, 15, 3, 24.3, 34.1),
(45, 3, 15, 5, 44.7, 45.6),
(46, 1, 15, 5, 45.7, 47.6),
(47, 2, 15, 5, 44.8, 46.5),
(48, 4, 15, 5, 48.7, 49.6),
(49, 5, 14, 4, 50.1, 47.5),
(50, 1, 14, 4, 34.1, 37.5),
(51, 2, 14, 4, 32.1, 32.8),
(52, 3, 14, 4, 40.1, 37.5),
(53, 3, 14, 2, 44.7, 47.8),
(54, 1, 14, 2, 34.7, 37.8),
(55, 2, 14, 2, 41.7, 42.8),
(56, 5, 14, 2, 34.4, 43.6),
(57, 3, 14, 1, 50.4, 44.7),
(58, 2, 14, 1, 40.5, 42.7),
(59, 1, 14, 1, 52.4, 47.7),
(60, 6, 14, 1, 47.4, 49.7),
(61, 4, 14, 5, 44.7, 45.8),
(62, 3, 14, 5, 44.7, 45.8),
(63, 2, 14, 5, 44.7, 45.8),
(64, 1, 14, 5, 44.7, 45.8),
(65, 3, 14, 3, 34.4, 32.4),
(66, 2, 14, 3, 34.4, 32.4),
(67, 1, 14, 3, 34.4, 32.4),
(68, 6, 14, 3, 34.4, 32.4),
(69, 1, 1, 2, 54.6, 75.7),
(70, 2, 1, 2, 48.1, 52.7),
(71, 4, 1, 2, 39.7, 43.8),
(72, 3, 1, 2, 30.6, 37.9),
(73, 1, 1, 3, 52.1, 58.9),
(74, 2, 1, 3, 45.1, 51.7),
(75, 4, 1, 3, 38.7, 46.8),
(76, 3, 1, 3, 29.6, 36.9),
(77, 4, 25, 5, 51.3, 49.2),
(78, 3, 25, 5, 46.2, 43.5),
(79, 2, 25, 5, 35.7, 35.8),
(80, 1, 25, 5, 34.2, 45.2),
(81, 3, 25, 2, 34.2, 23.2),
(82, 2, 25, 2, 43.1, 23.5),
(83, 1, 25, 2, 23.3, 33.1),
(84, 4, 25, 2, 24.2, 24.1),
(85, 1, 25, 1, 56.3, 84.3),
(86, 3, 25, 1, 52.6, 72.4),
(87, 8, 25, 1, 46.2, 43.8),
(88, 4, 25, 1, 37.8, 41.4),
(89, 5, 25, 4, 57.2, 83.1),
(90, 3, 25, 4, 43.1, 62.8),
(91, 4, 25, 4, 35.2, 51.6),
(92, 2, 25, 4, 25.6, 41.7),
(93, 1, 25, 3, 50.6, 68.2),
(94, 3, 25, 3, 46.1, 51.8),
(95, 2, 25, 3, 35.7, 41.5),
(96, 4, 25, 3, 28.9, 36.1),
(97, 5, 1, 4, 58.4, 89.5),
(98, 1, 1, 4, 46.8, 62.8),
(99, 2, 1, 4, 35.9, 41.7),
(100, 4, 1, 4, 21.3, 29.5),
(101, 1, 21, 3, 42.6, 68.3),
(102, 2, 21, 3, 38.5, 53.2),
(103, 4, 21, 3, 30.4, 42.7),
(104, 3, 21, 3, 26.1, 36.1),
(105, 5, 21, 4, 51.6, 89.2),
(106, 1, 21, 4, 49.7, 72.6),
(107, 2, 21, 4, 36.1, 53.1),
(108, 4, 21, 4, 30.5, 41.5),
(109, 1, 21, 1, 51.6, 89.2),
(110, 4, 21, 1, 49.7, 72.6),
(111, 3, 21, 1, 36.1, 53.1),
(112, 2, 21, 1, 30.5, 41.5),
(113, 1, 21, 2, 53.6, 69.2),
(114, 3, 21, 2, 45.7, 52.6),
(115, 2, 21, 2, 33.1, 43.1),
(116, 4, 21, 2, 20.5, 31.5),
(117, 5, 17, 4, 55.4, 44.5),
(118, 1, 17, 4, 55.4, 44.5),
(119, 2, 17, 4, 55.4, 44.5),
(120, 3, 17, 4, 55.4, 44.5),
(121, 3, 17, 2, 44.2, 31.1),
(122, 1, 17, 2, 44.2, 31.1),
(123, 2, 17, 2, 44.2, 31.1),
(124, 4, 17, 2, 44.2, 31.1),
(125, 3, 17, 1, 33.2, 23.6),
(126, 1, 17, 1, 33.2, 23.6),
(127, 2, 17, 1, 33.2, 23.6),
(128, 4, 17, 1, 33.2, 23.6),
(129, 4, 17, 3, 44.3, 10.3),
(130, 1, 17, 3, 41.3, 11.2),
(131, 2, 17, 3, 34.1, 9.7),
(132, 3, 17, 3, 37.3, 10.6),
(133, 3, 17, 5, 45.4, 34.4),
(134, 1, 17, 5, 42.4, 33.5),
(135, 2, 17, 5, 42.1, 32.1),
(136, 4, 17, 5, 40.2, 30.1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats_start_items`
--

CREATE TABLE `stats_start_items` (
  `id` int(3) NOT NULL,
  `id_items` int(3) NOT NULL,
  `id_champ` int(3) NOT NULL,
  `id_lane` int(3) NOT NULL,
  `win_rate` float NOT NULL,
  `pick_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stats_start_items`
--

INSERT INTO `stats_start_items` (`id`, `id_items`, `id_champ`, `id_lane`, `win_rate`, `pick_rate`) VALUES
(1, 6, 1, 1, 51, 83),
(2, 17, 1, 1, 47, 71),
(3, 11, 1, 1, 41, 65),
(4, 8, 1, 1, 36, 42),
(5, 6, 1, 3, 51, 54),
(6, 11, 1, 3, 43, 40),
(7, 1, 1, 3, 32, 25),
(8, 12, 1, 3, 20, 11),
(9, 16, 1, 4, 52, 90.3),
(10, 6, 1, 4, 41, 52),
(11, 17, 1, 4, 36.2, 41),
(12, 8, 1, 4, 28.9, 30.3),
(13, 6, 1, 2, 49, 82),
(14, 7, 1, 2, 36.4, 62),
(15, 8, 1, 2, 26.7, 44.6),
(16, 11, 1, 2, 17.5, 32.8),
(17, 18, 1, 5, 56.8, 88),
(18, 6, 1, 5, 48.1, 74.9),
(19, 7, 1, 5, 36.3, 62.1),
(20, 11, 1, 5, 28.7, 48.3),
(21, 1, 9, 3, 57.3, 83.2),
(22, 2, 9, 3, 48.8, 61.4),
(23, 17, 9, 3, 41.5, 56.2),
(24, 3, 9, 3, 32.6, 28.2),
(25, 1, 9, 1, 51.3, 53.7),
(26, 2, 9, 1, 46.7, 48.6),
(27, 17, 9, 1, 39.6, 31.7),
(28, 11, 9, 1, 31.5, 27.8),
(29, 1, 9, 2, 50.4, 54.4),
(30, 2, 9, 2, 46.3, 43.1),
(31, 17, 9, 2, 36.5, 37.6),
(32, 12, 9, 2, 29.1, 21.2),
(33, 16, 9, 4, 61.4, 87.3),
(34, 1, 9, 4, 48.2, 53.2),
(35, 2, 9, 4, 41.7, 43.1),
(36, 3, 9, 4, 33.7, 26.7),
(37, 18, 9, 5, 57.1, 72.5),
(38, 1, 9, 5, 48.4, 51.8),
(39, 2, 9, 5, 41.9, 46.8),
(40, 3, 9, 5, 30.4, 30.7),
(41, 1, 9, 3, 56.7, 53.2),
(42, 2, 9, 3, 53.2, 48.9),
(43, 3, 9, 3, 52.1, 42.6),
(44, 9, 9, 3, 37.8, 35.2),
(45, 1, 9, 2, 52.1, 50.6),
(46, 3, 9, 2, 53.6, 51.9),
(47, 2, 9, 2, 38.5, 29.1),
(48, 12, 9, 2, 25.8, 16.2),
(49, 18, 9, 5, 51.6, 57.2),
(50, 1, 9, 5, 42, 48.3),
(51, 2, 9, 5, 34, 33.6),
(52, 3, 9, 5, 28, 27.1),
(53, 18, 21, 5, 67.8, 89.3),
(54, 9, 21, 5, 46.4, 51.2),
(55, 11, 21, 5, 37.8, 38.1),
(56, 6, 21, 5, 25.9, 29.5),
(57, 16, 15, 4, 77.4, 68.9),
(58, 1, 15, 4, 67.4, 66.5),
(59, 2, 15, 4, 45.5, 45.9),
(60, 3, 15, 4, 54.4, 44.6),
(61, 1, 15, 1, 23.2, 33.2),
(62, 2, 15, 1, 24.1, 32.6),
(63, 3, 15, 1, 22.5, 31.7),
(64, 17, 15, 1, 23.5, 30.8),
(65, 1, 15, 2, 33.4, 34.5),
(66, 2, 15, 2, 32.3, 33.5),
(67, 3, 15, 2, 29.4, 28.5),
(68, 8, 15, 2, 22.4, 24.5),
(69, 1, 15, 3, 33.2, 45.6),
(70, 2, 15, 3, 31.3, 35.5),
(71, 3, 15, 3, 29.7, 31.3),
(72, 4, 15, 3, 23.2, 35.7),
(73, 18, 15, 5, 47.8, 48.6),
(74, 1, 15, 5, 44.8, 38.6),
(75, 2, 15, 5, 39.5, 45.7),
(76, 3, 15, 5, 37.6, 35.7),
(77, 16, 14, 4, 44.5, 35.6),
(78, 1, 14, 4, 34.5, 33.6),
(79, 2, 14, 4, 23.7, 31.7),
(80, 3, 14, 4, 31.3, 35.5),
(81, 1, 14, 2, 33.6, 34.5),
(82, 2, 14, 2, 34.7, 32.5),
(83, 3, 14, 2, 53.6, 38.5),
(84, 6, 14, 2, 36.6, 34.5),
(85, 1, 14, 1, 50.5, 47.5),
(86, 2, 14, 1, 55.5, 47.5),
(87, 3, 14, 1, 51.5, 45.5),
(88, 6, 14, 1, 34.5, 43.5),
(89, 18, 14, 5, 40.3, 23.4),
(90, 1, 14, 5, 40.3, 23.4),
(91, 2, 14, 5, 40.3, 23.4),
(92, 3, 14, 5, 40.3, 23.4),
(93, 1, 14, 3, 44.3, 34.7),
(94, 2, 14, 3, 44.3, 34.7),
(95, 3, 14, 3, 44.3, 34.7),
(96, 4, 14, 3, 44.3, 34.7),
(97, 18, 25, 5, 34.1, 43.1),
(98, 12, 25, 5, 21.1, 33),
(99, 1, 25, 5, 23.1, 55),
(100, 7, 25, 5, 43.1, 22),
(101, 17, 25, 2, 45.2, 22.2),
(102, 1, 25, 2, 23.1, 35.4),
(103, 12, 25, 2, 45.2, 22.7),
(104, 7, 25, 2, 34.2, 24.7),
(105, 12, 25, 1, 51.5, 67.2),
(106, 1, 25, 1, 41.6, 50.6),
(107, 13, 25, 1, 35.1, 41.8),
(108, 17, 25, 1, 24.9, 36.1),
(109, 16, 25, 4, 56.1, 82.3),
(110, 12, 25, 4, 43.2, 62.6),
(111, 7, 25, 4, 40.6, 52.7),
(112, 3, 25, 4, 34.1, 23.2),
(113, 12, 25, 3, 53.6, 64),
(114, 1, 25, 3, 47.8, 51.7),
(115, 3, 25, 3, 38.1, 46.1),
(116, 13, 25, 3, 30.1, 43.8),
(117, 6, 21, 3, 50.3, 56.2),
(118, 1, 21, 3, 32.6, 45.2),
(119, 2, 21, 3, 25.1, 20.7),
(120, 3, 21, 3, 12.8, 10.3),
(121, 16, 21, 4, 48.3, 86.2),
(122, 6, 21, 4, 31.6, 42.2),
(123, 7, 21, 4, 27.1, 24.7),
(124, 9, 21, 4, 25.8, 20.3),
(125, 6, 21, 1, 48.3, 86.2),
(126, 17, 21, 1, 31.6, 42.2),
(127, 8, 21, 1, 27.1, 24.7),
(128, 9, 21, 1, 25.8, 20.3),
(129, 6, 21, 2, 48.8, 66.2),
(130, 8, 21, 2, 36.6, 52.5),
(131, 17, 21, 2, 24.1, 34.7),
(132, 1, 21, 2, 15.8, 28.3),
(133, 16, 17, 4, 54.4, 44.5),
(134, 1, 17, 4, 54.4, 44.5),
(135, 2, 17, 4, 54.4, 44.5),
(136, 3, 17, 4, 54.4, 44.5),
(137, 1, 17, 2, 34.3, 22.3),
(138, 2, 17, 2, 34.3, 22.3),
(139, 3, 17, 2, 34.3, 22.3),
(140, 4, 17, 2, 34.3, 22.3),
(141, 1, 17, 1, 34.2, 11.2),
(142, 2, 17, 1, 34.2, 11.2),
(143, 3, 17, 1, 34.2, 11.2),
(144, 4, 17, 1, 34.2, 11.2),
(145, 1, 17, 3, 54.3, 55.7),
(146, 2, 17, 3, 49.3, 52.7),
(147, 3, 17, 3, 50.3, 54.1),
(148, 4, 17, 3, 47.2, 42.7),
(149, 18, 17, 5, 35.7, 44.1),
(150, 1, 17, 5, 36.8, 41.2),
(151, 2, 17, 5, 35.7, 39.1),
(152, 3, 17, 5, 32.1, 35.6);

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
(2, 'thangngu123', 'thangkhongngu123@gmail.com', '123'),
(4, 'Vonguyen123', 'wwwnguyendoan123@gmail.com', '1234567'),
(8, 'Trang', 'huynhngoctrang39@gmail.com', '123'),
(9, 'Ngantbn', 'thbn18102003@gmail.com', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `id_role` (`id_role`,`id_lane`),
  ADD KEY `id_lane` (`id_lane`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_items`);

--
-- Chỉ mục cho bảng `lane`
--
ALTER TABLE `lane`
  ADD PRIMARY KEY (`id_lane`),
  ADD KEY `id_role` (`id_role`);

--
-- Chỉ mục cho bảng `reset`
--
ALTER TABLE `reset`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `id_lane` (`id_lane`,`id_champ`),
  ADD KEY `id_champ` (`id_champ`);

--
-- Chỉ mục cho bảng `stats_spell`
--
ALTER TABLE `stats_spell`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_spell` (`id_spell`,`id_champ`,`id_lane`),
  ADD KEY `id_lane` (`id_lane`),
  ADD KEY `id_champ` (`id_champ`);

--
-- Chỉ mục cho bảng `stats_start_items`
--
ALTER TABLE `stats_start_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_items` (`id_items`,`id_champ`,`id_lane`),
  ADD KEY `id_champ` (`id_champ`),
  ADD KEY `id_lane` (`id_lane`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `badge`
--
ALTER TABLE `badge`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `reset`
--
ALTER TABLE `reset`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `stats_spell`
--
ALTER TABLE `stats_spell`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT cho bảng `stats_start_items`
--
ALTER TABLE `stats_start_items`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `champions`
--
ALTER TABLE `champions`
  ADD CONSTRAINT `champions_ibfk_1` FOREIGN KEY (`id_lane`) REFERENCES `lane` (`id_lane`);

--
-- Các ràng buộc cho bảng `lane`
--
ALTER TABLE `lane`
  ADD CONSTRAINT `lane_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role_champions` (`id_role`);

--
-- Các ràng buộc cho bảng `role_champions`
--
ALTER TABLE `role_champions`
  ADD CONSTRAINT `role_champions_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `champions` (`id_role`);

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
  ADD CONSTRAINT `stats_ibfk_2` FOREIGN KEY (`id_lane`) REFERENCES `lane` (`id_lane`);

--
-- Các ràng buộc cho bảng `stats_spell`
--
ALTER TABLE `stats_spell`
  ADD CONSTRAINT `stats_spell_ibfk_1` FOREIGN KEY (`id_spell`) REFERENCES `spells` (`id_spell`),
  ADD CONSTRAINT `stats_spell_ibfk_2` FOREIGN KEY (`id_lane`) REFERENCES `lane` (`id_lane`),
  ADD CONSTRAINT `stats_spell_ibfk_3` FOREIGN KEY (`id_champ`) REFERENCES `champions` (`id_champ`);

--
-- Các ràng buộc cho bảng `stats_start_items`
--
ALTER TABLE `stats_start_items`
  ADD CONSTRAINT `stats_start_items_ibfk_1` FOREIGN KEY (`id_items`) REFERENCES `items` (`id_items`),
  ADD CONSTRAINT `stats_start_items_ibfk_2` FOREIGN KEY (`id_champ`) REFERENCES `champions` (`id_champ`),
  ADD CONSTRAINT `stats_start_items_ibfk_3` FOREIGN KEY (`id_lane`) REFERENCES `lane` (`id_lane`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
