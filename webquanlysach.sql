-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 02, 2024 lúc 09:23 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webquanlysach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(10000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(10, 7, 1, 'sách lập trình C', 630000, 3),
(11, 8, 1, 'sách lập trình C', 1050000, 5),
(12, 9, 6, 'sách lịch sử thế giới', 120000, 1),
(13, 9, 17, 'Tìm hiểu chòm sao Sư tử', 21000, 1),
(14, 9, 5, 'sách lập trình python', 200000, 1),
(15, 10, 6, 'sách lịch sử thế giới', 120000, 1),
(16, 10, 17, 'Tìm hiểu chòm sao Sư tử', 21000, 1),
(17, 10, 5, 'sách lập trình python', 200000, 1),
(18, 11, 3, 'sách lập trình android', 179000, 1),
(19, 11, 22, 'Vật lí newton', 200000, 1),
(20, 11, 21, 'Tủ sách nhà khoa học vĩ đại Darwin', 250000, 1),
(21, 12, 22, 'Vật lí newton', 200000, 1),
(22, 12, 21, 'Tủ sách nhà khoa học vĩ đại Darwin', 250000, 1),
(23, 12, 17, 'Tìm hiểu chòm sao Sư tử', 21000, 1),
(24, 13, 1, 'sách lập trình C', 210000, 1),
(25, 13, 2, 'sách lập trình java', 150000, 1),
(26, 13, 4, 'sách nhập môn lập trình', 250000, 1),
(27, 14, 15, 'Tìm hiểu chòm sao Nhân mã', 63000, 3),
(28, 14, 20, 'Tủ sách nhà khoa học vĩ đại jame', 340000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `email`) VALUES
(7, 'huy', 898425, 'huy@gmail.com'),
(8, 'Tuandi', 999888777, 'tuandi@gmail.com'),
(9, 'Charlie', 111222333, 'charlie@gmail.com'),
(10, 'Charlie', 111222333, 'charlie@gmail.com'),
(11, 'Charlie', 111444222, 'charlie@gmail.com'),
(12, 'charlie', 111222444, 'charlie@gmail.com'),
(13, 'newname', 222111, 'newname@gmail.com'),
(14, 'VoAnhMinh', 777555666, 'anhminh@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhminhhoa` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhminhhoa`) VALUES
(1, 'Lập trình', 'https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/256/Play-Books-icon.png'),
(2, 'Tổng hợp', 'https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/256/Play-Books-icon.png'),
(3, 'Văn học', 'https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/256/Play-Books-icon.png'),
(4, 'Khoa học', 'https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/256/Play-Books-icon.png'),
(5, 'Đơn Hàng', 'https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/256/Play-Books-icon.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `product_id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhminhhoa` varchar(2000) NOT NULL,
  `motasanpham` varchar(500) NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`product_id`, `tensanpham`, `giasanpham`, `hinhminhhoa`, `motasanpham`, `idsanpham`) VALUES
(1, 'sách lập trình java', 150000, 'https://images.nxbxaydung.com.vn/Picture/2020/biasachnen-0616154230.png', 'Cuốn sách này là hướng dẫn toàn diện về lập trình Java, từ những khái niệm cơ bản đến những chủ đề phức tạp hơn. Bắt đầu từ cú pháp và cơ bản của Java, sách đi sâu vào các khái niệm lập trình hướng đố', 1),
(2, 'sách lập trình android', 179000, 'https://salt.tikicdn.com/cache/750x750/media/catalog/product/l/a/lap-trinh-android_1.jpg.webp', 'Cuốn sách này là nguồn tài nguyên đắc lực cho những người muốn học lập trình Android, bắt đầu từ những kiến thức cơ bản cho đến những khái niệm nâng cao. Sách tập trung vào việc xây dựng ứng dụng di động', 1),
(3, 'sách nhập môn lập trình', 250000, 'https://salt.tikicdn.com/cache/280x280/ts/product/f2/20/a6/4f9234887c4564dd4ba595d275a5676a.jpg.webp', 'Cuốn sách này nhằm mục đích giới thiệu và hướng dẫn người đọc vào thế giới của lập trình từ những kiến thức cơ bản nhất cho đến những khái niệm nâng cao. Đây là tài liệu hữu ích cho những người mới bắ', 1),
(4, 'sách lập trình python', 200000, 'https://api.vietstem.com/api/Containers/products/download/8e8ebce8-556d-4cd4-9a3f-f9ff6e70e711.jpg', 'Cuốn sách này là một hướng dẫn toàn diện cho việc học lập trình bằng ngôn ngữ Python. Được thiết kế để phục vụ cả người mới học lập trình và những người có kinh nghiệm muốn mở rộng kỹ năng của mình, c', 1),
(5, 'sách lịch sử thế giới', 120000, 'https://sachxua.vn/wp-content/uploads/2020/01/lich-su-the-gioi-sach-ls.jpg', 'Sách lịch sử thế giới này là một công trình nghiên cứu kỹ lưỡng và chi tiết, mang đến cho độc giả một hành trình quen mắt qua thời gian và không gian. Từ những ngày đầu tiên của sự hiện diện của con người', 2),
(6, 'sách lịch sử việt nam', 150000, 'https://www.khaitam.com/Data/Sites/1/Product/2230/lich-su-viet-nam.jpg', 'Sách lịch sử Việt Nam này là một tác phẩm đầy đủ và sâu sắc, mô tả hành trình phong phú của quốc gia từ những thời kỳ sơ khai đến hiện đại. Tác giả không chỉ giải thích sự phát triển của Việt Nam trên', 2),
(7, 'sách lịch sử giao thương', 110000, 'https://medialib.qlgd.edu.vn/Uploads/THU_VIEN/shn/1/1677/UserImages/lich-su-giao-thuong-thuong-mai-dinh-hinh-the-gioi-nhu-the-nao.jpg', 'Sách lịch sử Giao Thương là một tác phẩm chi tiết, mô tả hành trình của sự trao đổi và tương tác thương mại trên khắp thế giới. Từ những hình thức giao thương đầu tiên trong các cộng đồng thổ dân đến ', 2),
(8, 'sách tiếng anh ngữ pháp', 150000, 'https://ds393qgzrxwzn.cloudfront.net/resize/c500x500/cat1/img/images/0/6KyP2XQ2Cx.jpg', 'Sách về ngữ pháp tiếng Anh này là một hướng dẫn toàn diện dành cho người học ở các cấp độ khác nhau. Nó đi sâu vào những chi tiết của ngôn ngữ Anh, cung cấp một hiểu biết sâu rộng về cấu trúc và quy t', 2),
(9, 'sách tiếng anh giao tiếp', 210000, 'https://sachhoc.com/image/cache/catalog/Sachtienganh/Luyen-nghe/Tieng-anh-giao-tiep-hien-dai-500x554.jpg', 'Sách về giao tiếp tiếng Anh này là một hướng dẫn thực hành nhằm trang bị cá nhân với kỹ năng giao tiếp hiệu quả và tự tin. Cho dù bạn là học sinh, một chuyên gia, hay ai đó đang tìm kiếm cách cải thiệ', 2),
(10, 'sách khoa học và vũ trụ', 270000, 'https://dinhtibooks.com.vn/images/products/large/5_7fa6a5e7b841476bab8c6a7534488f7e.webp', 'Sách khoa học và vũ trụ này là một cuộc phiêu lưu tuyệt vời vào thế giới của tri thức và vũ trụ bao la. Tác giả không chỉ đưa độc giả qua những phát hiện khoa học mới nhất mà còn mang đến cái nhìn sâu', 2),
(11, 'sách khoa học quản trị', 180000, 'https://www.khaitam.com/Data/Sites/1/Product/6888/khoa-hoc-quan-tri.jpg', 'Sách về quản trị khoa học này không chỉ là một nguồn tư liệu kiến thức mà còn là một hướng dẫn thực tiễn giúp độc giả áp dụng kiến thức khoa học vào quản lý doanh nghiệp. Tác giả không chỉ giới thiệu ', 2),
(12, 'Tìm Hiểu Chòm Sao Cancer', 21000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_156.jpg', 'Cuốn sách này cung cấp một bức tranh tổng quan về chiêm tinh và có thể cung cấp thông tin về chòm sao. Nó có thể bao gồm cả hướng dẫn cụ thể về cách áp dụng kiến thức chiêm tinh vào các khía cạnh khác', 3),
(13, 'Tìm Hiểu Chòm Sao Taurus', 21000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_157.jpg', 'Cuốn sách này cung cấp một bức tranh tổng quan về chiêm tinh và có thể cung cấp thông tin về chòm sao Cự Giải. Nó có thể bao gồm cả hướng dẫn cụ thể về cách áp dụng kiến thức chiêm tinh vào các khía c', 3),
(14, 'Tìm hiểu chòm sao Nhân mã', 21000, 'https://cdn0.fahasa.com/media/catalog/product/z/3/z3204546546096_456b60dc1b6855fb8a7fefac05246246.jpg', 'Cuốn sách này cung cấp một bức tranh tổng quan về chiêm tinh và có thể cung cấp thông tin về chòm sao Cự Giải. Nó có thể bao gồm cả hướng dẫn cụ thể về cách áp dụng kiến thức chiêm tinh vào các khía c', 3),
(15, 'Tìm hiểu chòm sao Thiên Yết', 21000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_162.jpg', 'Cuốn sách này cung cấp một bức tranh tổng quan về chiêm tinh và có thể cung cấp thông tin về chòm sao Cự Giải. Nó có thể bao gồm cả hướng dẫn cụ thể về cách áp dụng kiến thức chiêm tinh vào các khía cạnh', 3),
(16, 'Tìm hiểu chòm sao Sư tử', 21000, 'https://cdn0.fahasa.com/media/catalog/product/z/3/z3204546538928_747656b534bb093039388343d0f28d29.jpg', 'Cuốn sách này cung cấp một bức tranh tổng quan về chiêm tinh và có thể cung cấp thông tin về chòm sao Cự Giải. Nó có thể bao gồm cả hướng dẫn cụ thể về cách áp dụng kiến thức chiêm tinh vào các khía cạnh', 3),
(17, 'Tủ sách nhà khoa học vĩ đại Nobel', 200000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_27387.jpg', 'Cuốn sách này có thể cung cấp cái nhìn sâu sắc về cuộc sống, sự nghiệp, và đóng góp khoa học của những nhà khoa học xuất sắc đã được tôn vinh bằng Giải Nobel. Sách có thể khám phá nguyên lý hướng dẫn ', 4),
(18, 'Tủ sách nhà khoa học vĩ đại issac', 150000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_27386.jpg', 'Cuốn sách về Isaac Newton có thể là một tác phẩm nghiên cứu chuyên sâu về cuộc đời và công trình khoa học của một trong những nhà khoa học lớn nhất trong lịch sử. Sách này có thể bắt đầu bằng một cái ', 4),
(19, 'Tủ sách nhà khoa học vĩ đại jame', 170000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_27389.jpg', 'là một nhà phát minh và kỹ sư người Scotland nổi tiếng, nổi tiếng chủ yếu với việc cải tiến và phát triển máy hơi nước, một phát minh quan trọng đã có ảnh hưởng sâu rộng đến Cách mạng Công nghiệp.', 4),
(20, 'Tủ sách nhà khoa học vĩ đại Darwin', 250000, 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_27388.jpg', 'Trong cuốn sách này, ông đề cập đến khái niệm về sự thích nghi của các loài với môi trường xung quanh và ý tưởng về quá trình tiến hóa thông qua cơ chế tự nhiên chọn lọc.', 4),
(21, 'Vật lí newton', 200000, 'https://cdn0.fahasa.com/media/catalog/product/9/7/9786043298352.jpg', 'là một tác phẩm kinh điển trong lịch sử vật lý, được viết bởi nhà khoa học vĩ đại người Anh Sir Isaac Newton. Xuất bản lần đầu tiên vào năm 1687, cuốn sách này đưa ra một tuyển tập toàn diện và hệ thố', 4),
(22, 'sách lập trình c', 110000, 'https://www.devpro.edu.vn/public/uploads/images/l%E1%BA%ADp%20tr%C3%ACnh%20c/sach-lap-trinh-c(1).jpg', 'Cuốn sách Lập Trình C là nguồn tài liệu cần thiết cho những ai muốn học lập trình bằng ngôn ngữ C. Sách cung cấp kiến ​​thức cơ bản và nâng cao về ngôn ngữ lập trình này, từ cú pháp cơ bản đến các khái niệm phức tạp như lập trình hướng đối tượng và quản lý bộ nhớ.', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(150) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `registered_at` date NOT NULL DEFAULT current_timestamp(),
  `isAdmin` int(11) NOT NULL DEFAULT 0,
  `user_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `contact_no`, `registered_at`, `isAdmin`, `user_address`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', '$2y$10$j9OXXIYS0CG5AYuks62YMeDvuIpo2hZEN4CqfJfujt1yPMnoUq5C6', '9810283472', '2024-03-30', 1, 'newroad'),
(2, 'Test ', 'Firstuser', 'test@gmail.com', '$2y$10$DJOdhZy1InHTKQO6whfyJexVTZCDTlmIYGCXQiPTv7l82AdC9bWHO', '980098322', '2024-03-30', 0, 'matepani-12');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
