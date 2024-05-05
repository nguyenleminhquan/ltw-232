-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 03:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apple`
--

CREATE DATABASE IF NOT EXISTS apple;
USE apple;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` char(3) DEFAULT NULL,
  `accept` char(1) NOT NULL DEFAULT 'T'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `full_name`, `password`, `phone_number`, `email`, `address`, `role`, `accept`) VALUES
('61a4c2465a3f1', 'Nguyễn Lê Minh Quân', '$2y$10$NjTLaTFlUtWgYT4amZJIbes711IgE9QSIRE.SI1awnLwwF/Kpzfky', '0914601325', 'quannlm@gmail.com', '12, đường số 3, quận 4, TPHCM', 'MEM', 'T'),
('61a5c2296dfa4', 'ADMINISTRATOR', '$2y$10$LgctFE0929e3obD7z0bhXemCCLDZnar7dmiGlByfh.OP1u4hp/f72', '0123456789', 'admin@gmail.com', '145, đường Trần Hưng Đạo, quận 5, TPHCM', 'ADM', 'T'),
('61a633c11b670', 'Lê Quang Phục', '$2y$10$r0lYCWHdI8TWvKhDK.hIgew1F2YIFUPR/xxAwPqkHVSuMwp65kyca', '0395730503', 'phuclq@gmail.com', '12, đường số 9', 'MEM', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `belong`
--

CREATE TABLE `belong` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `belong`
--

INSERT INTO `belong` (`order_id`, `product_id`, `quantity`, `price`) VALUES
(108556449, 10002, 2, 1600000);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `post_time` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `thumnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `post_time`, `author`, `title`, `content`, `thumnail`) VALUES
(1111, '2024-04-17 00:00:00', 'Minh Quân', 'Apple ra mắt MacBook Air 13 và 15 inch dùng chip M3', 'Laptop mới được Apple giới thiệu có thời lượng pin tới 18 tiếng và là \"máy tính xách tay cá nhân tốt nhất thế giới cho AI\".\nSau chưa đầy một năm ra mắt, MacBook Air 15 inch đã có bản cập nhật lên chip xử lý mới. Apple cũng đồng thời bổ sung chip M3 cho cả MacBook Air 13 inch đã ra từ 2022. Cả hai không thay đổi về kiểu dáng, bản 13 inch vẫn mỏng 1,13 cm, nặng 1,24 kg trong khi bản 15 inch là 1,15 cm và 1,51 kg tương ứng.', 'Apple-MacBook-Air-2-.jpg'),
(2222, '2024-04-17 00:00:00', 'Quang Phục', 'Apple đổi mới toàn diện phiên bản AirPods 4', 'Apple đang có kế hoạch sẽ cải tiến toàn diện phiên bản tai nghe AirPods 4. Phiên bản này sẽ được cho ra mắt vào tháng 9.2024.', 'Airpods-1.jpg'),
(3333, '2024-04-17 00:00:00', 'Kylian Mbappe', 'Apple phá vỡ truyền thống ra iPad mỗi năm', 'Apple không ra iPad thế hệ mới kể từ năm 2022, phá vỡ truyền thống hơn một thập kỷ của dòng sản phẩm này.\nKhi thế giới bước sang năm 2024, dòng máy tính bảng của Apple, trình làng năm 2010, cũng bước sang năm thứ 15. Tuy nhiên, điều này cũng đánh dấu lần đầu kể từ khi ra mắt, máy tính bảng iPad không có sản phẩm mới trong hơn một năm.\nTrong hệ sinh thái phần cứng của Apple, tablet vẫn là một trong những mảng sản phẩm chính, bên cạnh iPhone, máy Mac hay phụ kiện. Mỗi năm, hãng đều giới thiệu ít nhất một mẫu mới. Năm 2022, có tới bốn mẫu ra mắt, gồm iPad Gen 10, iPad Air Gen 5, iPad Pro 11 inch Gen 4 và iPad Pro 12,9 inch Gen 6. Tuy nhiên, năm 2023 đã trôi qua mà không có sản phẩm mới nào xuất hiện. Thiết bị mới nhất liên quan đến iPad là bút Apple Pencil với cổng USB-C.', 'ipad.jpg'),
(4444, '2024-04-17 00:00:00', 'Jude Bellingharm', 'Thấy gì từ chuyến thăm của CEO Apple đến Việt Nam?', 'Theo các nhà phân tích, chuyến đi của CEO Apple Tim Cook cho thấy Việt Nam ngày càng có vai trò quan trọng trong chiến lược của Apple.', 'post4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog_content`
--

CREATE TABLE `blog_content` (
  `blog_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_content`
--

INSERT INTO `blog_content` (`blog_id`, `id`, `content`, `type`, `link`) VALUES
(1111, 1, 'Laptop mới được Apple giới thiệu có thời lượng pin tới 18 tiếng và là \"máy tính xách tay cá nhân tốt nhất thế giới cho AI\".', 'title', NULL),
(1111, 2, 'Sau chưa đầy một năm ra mắt, MacBook Air 15 inch đã có bản cập nhật lên chip xử lý mới. Apple cũng đồng thời bổ sung chip M3 cho cả MacBook Air 13 inch đã ra từ 2022. Cả hai không thay đổi về kiểu dáng, bản 13 inch vẫn mỏng 1,13 cm, nặng 1,24 kg trong khi bản 15 inch là 1,15 cm và 1,51 kg tương ứng.', 'text', NULL),
(1111, 3, 'post1_detail_1.jpg', 'img', NULL),
(1111, 4, 'Với M3, MacBook Air nhanh hơn 60% so với phiên bản trang bị chip M1 và nhanh hơn 13 lần so với phiên bản MacBook Air dùng chip Intel mạnh nhất. Đây là vi xử lý máy tính đầu tiên được chế tạo trên tiến trình 3 nm. MacBook Air chỉ có tùy chọn dùng chip M3 thường với 8 lõi CPU, GPU tối đa 10 lõi và bộ nhớ RAM tối đa 24 GB. Thời lượng pin cả hai máy đều đạt 18 tiếng theo thông báo của nhà sản xuất.', 'text', NULL),
(1111, 5, 'Kể từ khi chuyển sang chip Apple silicon, Apple cho biết mọi máy Mac \"đều là nền tảng tuyệt vời cho AI\". Với tính di động và đang là dòng laptop bán chạy nhất thế giới, Apple cho rằng MacBook Air M3 là \"máy tính xách tay cá nhân tốt nhất cho AI\". Chip M3 sở hữu Neural Engine 16 lõi nhanh và tiết kiệm điện, kết hợp các bộ tăng tốc trong CPU và GPU để hỗ trợ mạnh hơn cho tính năng học máy trên thiết bị. Máy cũng có thể chạy các mô hình AI được tối ưu hóa, bao gồm mô hình ngôn ngữ lớn (LLM) và mô hình khuếch tán để tạo hình ảnh cục bộ với hiệu năng tốt.', 'text', ''),
(1111, 6, 'Người dùng có bốn lựa chọn màu sắc với Macbook Air bao gồm xanh đen, bạc, xám và vàng nhạt. Giá MacBook Air 13 inch M3 từ 28 triệu đồng trong khi bản 15 inch là từ 33 triệu đồng. Hãng cũng có chương trình dành cho người mua trong lĩnh vực giáo dục với giá rẻ hơn hai triệu đồng. Các máy sẽ lên kệ ngày 8/3 tại thị trường Mỹ. Chưa có thông tin ngày bán ra tại Việt Nam.', 'text', ''),
(1111, 7, 'Cùng với việc ra hai mẫu máy mới, Apple cũng dừng sản xuất MacBook Air 15 inch M2 và chỉ duy trì bán MacBook Air 13 inch M2 với giá giảm còn từ 25 triệu đồng. Apple cho biết MacBook Air 13 inch đang là máy tính xách tay bán chạy nhất thế giới trong khi MacBook Air 15 inch cũng là laptop có màn hình 15 inch bán chạy nhất.', 'text', ''),
(2222, 25, 'Apple đang có kế hoạch sẽ cải tiến toàn diện phiên bản tai nghe AirPods 4. Phiên bản này sẽ được cho ra mắt vào tháng 9.2024.', 'title', NULL),
(2222, 26, 'Chuyên trang MacRumors cho biết, Apple sẽ tung ra 2 phiên bản AirPods 4 với 2 mức giá khác nhau. Công ty đang đặt mục tiêu, sản phẩm mới này thay thế hoàn toàn cả AirPods 3 và AirPods 2. Tính đến thời điểm hiện tại, giữa cả 2 mẫu tai nghe cũ hơn có rất ít sự khác biệt ngoài khía cạnh mẫu mã.', 'text', NULL),
(2222, 27, 'Chính vì thế, Apple quyết định sẽ \"lột xác\" hoàn toàn mẫu AirPods 4. Phiên bản mới này dự kiến sẽ có thiết kế được thay đổi như sự kết hợp giữa AirPods và AirPods Pro, với phần thân ngắn hơn. Độ vừa vặn dự kiến cũng sẽ được cải thiện.', 'text', NULL),
(2222, 28, 'post2_detail_1.jpeg', 'img', NULL),
(2222, 29, 'Hộp sạc của AirPods 4 cũng được thiết kế lại. Apple sẽ tích hợp thêm loa phát âm thanh để hỗ trợ người dùng tìm kiếm thiết bị thông qua tính năng Find My. Ngoài ra, AirPods 4 cũng được trang bị cổng sạc USB-C thay cho cổng Lightning. Phiên bản cao cấp hơn của AirPods 4 sẽ có tính năng khử tiếng ồn chủ động (ANC), tính năng này hiện chỉ có trên ‌AirPods Pro‌.', 'text', NULL),
(2222, 30, 'Trong bản cập nhật phần mềm sắp ra mắt vào năm tới, Apple sẽ bổ sung chức năng trợ thính, cho phép AirPods hoạt động như một giải pháp hỗ trợ thính giác không cần kê đơn (OTC) thay thế máy trợ thính truyền thống.', 'text', NULL),
(2222, 31, 'post2_detail_2.jpg', 'img', NULL),
(2222, 32, 'AirPods 4 dự kiến được ra mắt vào tháng 9.2024. Apple cũng đang lên kế hoạch nghiên cứu phiên bản AirPods Max và nhiều khả năng cũng được công bố trong năm 2024.', 'text', NULL),
(3333, 40, 'Apple không ra iPad thế hệ mới kể từ năm 2022, phá vỡ truyền thống hơn một thập kỷ của dòng sản phẩm này.', 'title', NULL),
(3333, 41, 'Khi thế giới bước sang năm 2024, dòng máy tính bảng của Apple, trình làng năm 2010, cũng bước sang năm thứ 15. Tuy nhiên, điều này cũng đánh dấu lần đầu kể từ khi ra mắt, máy tính bảng iPad không có sản phẩm mới trong hơn một năm.', 'text', NULL),
(3333, 42, 'Trong hệ sinh thái phần cứng của Apple, tablet vẫn là một trong những mảng sản phẩm chính, bên cạnh iPhone, máy Mac hay phụ kiện. Mỗi năm, hãng đều giới thiệu ít nhất một mẫu mới. Năm 2022, có tới bốn mẫu ra mắt, gồm iPad Gen 10, iPad Air Gen 5, iPad Pro 11 inch Gen 4 và iPad Pro 12,9 inch Gen 6. Tuy nhiên, năm 2023 đã trôi qua mà không có sản phẩm mới nào xuất hiện. Thiết bị mới nhất liên quan đến iPad là bút Apple Pencil với cổng USB-C.', 'text', NULL),
(3333, 43, 'Theo MacRumors, sự gián đoạn trong lộ trình ra iPad mới \"rất đáng chú ý\" nếu xét trên lịch sử của dòng sản phẩm này và cho thấy Apple có thể đang tính đến việc điều chỉnh hướng đi của sản phẩm.', 'text', NULL),
(3333, 44, 'Có hai nguyên nhân được đưa ra. Đầu tiên, nhu cầu nâng cấp thiết bị không còn thường xuyên do iPad ngày càng tiên tiến và được sử dụng rộng rãi. \"Sự thay đổi hành vi người dùng có thể đã khiến Apple đánh giá lại chiến lược máy tính bảng, tập trung vào các bản cập nhật phần cứng có tác động mạnh hơn\", trang này phân tích.', 'text', NULL),
(3333, 45, 'Nguyên nhân thứ hai đến từ định hướng phát triển, nhất là hệ điều hành iPadOS. Xuất phát từ hệ điều hành dành cho iPhone, iPadOS dần được kỳ vọng thay thế máy tính. Tuy nhiên, Apple cũng liên tục bị chỉ trích bởi sự phức tạp của hệ điều hành. Việc ngừng công bố sản phẩm mới năm ngoái có thể do hãng đang lên kế hoạch định hình lại các dòng sản phẩm với mục đích rõ ràng hơn.', 'text', NULL),
(3333, 46, '2024 được dự đoán là năm bùng nổ của iPad. Apple có thể giới thiệu sản phẩm thế hệ mới như iPad cơ bản, iPad mini, Air, Pro, hoặc thậm chí có cả iPad Air với màn hình 12,9 inch tương tự dòng Pro. Trong khi đó, iPad Pro dự kiến trang bị hàng chục tính năng mới , như công nghệ màn hình OLED, chip M3 và phụ kiện bàn phím mới \"giống máy tính xách tay\".', 'text', NULL),
(4444, 47, 'Ngày 15-16/4, Tim Cook lần đầu tới Việt Nam và có sáu cuộc gặp gỡ với quan chức chính phủ, nhà phát triển phần mềm, nhà sáng tạo nội dung và nghệ sĩ.\r\n\r\nTại cuộc gặp với Thủ tướng Phạm Minh Chính, CEO Apple đề cập mong muốn thúc đẩy hoạt động hợp tác, đầu tư chất lượng cao tại Việt Nam, cam kết mua nhiều hơn linh phụ kiện do đối tác sản xuất trong nước, đồng thời đóng góp vào lĩnh vực đổi mới sáng tạo, tăng khoản chi cho nhà cung cấp tại Việt Nam.\r\n\r\nTheo các nhà phân tích, chuyến đi của lãnh đạo Apple tới Việt Nam đem lại nhiều ý nghĩa về lâu dài, bao gồm việc thúc đẩy mở rộng chuỗi cung ứng, cũng như mở rộng thị trường tiêu thụ sản phẩm Apple.', 'text', ''),
(4444, 48, 'Việt Nam quan trọng trong chuỗi cung ứng Apple', 'h4', ''),
(4444, 49, 'Trả lời VnExpress, nhà phân tích Ivan Lam của công ty nghiên cứu thị trường Counterpoint Reseach đánh giá đây là động thái cho thấy Apple sẽ tiếp tục thúc đẩy đa dạng hóa hệ sinh thái sản xuất và chuỗi cung ứng của mình.<br><br>\r\n\r\n\"Việt Nam luôn là một phần quan trọng trong chuỗi cung ứng của Apple\", ông Lam nói.\r\n<br><br>\r\nTheo chuyên gia này, Việt Nam có nhiều điểm tương đồng với Ấn Độ, đồng thời có nền tảng lớn đến từ chuỗi cung ứng của Samsung. Ngoài ra, Việt Nam có lợi thế về chi phí lao động và chính sách thuận lợi, ổn định, giúp nhanh chóng mở rộng sản xuất.', 'text', ''),
(4444, 50, 'Thị trường tiềm năng cho sản phẩm Apple', 'h4', ''),
(4444, 51, 'Theo nhà phân tích Bryan Ma của IDC, một trong những lý do Việt Nam quan trọng với Apple là \"vì lượng người hâm mộ ngày càng tăng ở đây\". Theo báo cáo thị trường của đơn vị này, Apple hiện là hãng điện thoại có doanh số lớn thứ ba tại Việt Nam, sau Samsung và Oppo.\r\n<br><br>\r\nTrong các cuộc họp báo cáo tài chính, Tim Cook cũng nhắc đến Việt Nam như một trong những ví dụ về sự tăng trưởng nhanh. Trong quý III/2023, CEO Apple cho biết đã đạt doanh thu kỷ lục tại Việt Nam, đồng thời mở cửa hàng trực tuyến để bán thiết bị trực tiếp tới người dùng. Thực tế, theo thống kê của các chuỗi bán lẻ trong nước, doanh số ngày đầu mở bán iPhone 14 và iPhone 15 đều đạt trên một nghìn tỷ đồng.\r\n<br><br>\r\nDù đứng trước nhiều cơ hội về lâu dài sau chuyến đi của Tim Cook, nhà phân tích Ivan Lam cho rằng Việt Nam cũng cần chú trọng đầu tư, phát triển và cải thiện liên tục cơ sở hạ tầng để nâng cao hiệu quả sản xuất, từ đó tăng cường thu hút đầu tư từ các hãng, cũng như hướng tới trở thành trung tâm sản xuất của Đông Nam Á.', 'text', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL DEFAULT 1,
  `status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `cost` int(11) NOT NULL,
  `member_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `payment_type`, `create_date`, `cost`, `member_id`) VALUES
(108556449, 'Đang xử lý', 'cash', '2021-11-29 19:22:03', 3520000, '61a4c2465a3f1'),
(620700375, 'Đang xử lý', 'cash', '2024-03-30 21:15:42', 6160000, '61a633c11b670');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `specs` varchar(1000) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `thumnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `price`, `specs`, `name`, `category`, `quantity`, `thumnail`) VALUES
(10007, 25990000, 'iPhone 15 Pro là một trong những chiếc điện thoại thông minh được mong đợi nhất năm 2023. Với nhiều tính năng mới và cải tiến, iPhone 15 Pro chắc chắn sẽ là một lựa chọn tuyệt vời cho những người dùng đang tìm kiếm một chiếc điện thoại cao cấp.', 'iPhone 15 Pro', 'iphone', 20, 'iphone-15-pro-1.jpg'),
(10008, 19990000, 'iPhone 15 là mẫu điện thoại cao cấp được Apple cho ra mắt vào tháng 09/2023, máy nhận được nhiều sự chú ý đến từ người dùng khi mang trong mình bộ cấu hình cực khủng, vẻ ngoài thu hút cùng khả năng quay video - chụp ảnh đỉnh cao.', 'iPhone 15', 'iphone', 20, 'iphone-15-1.jpg'),
(10009, 28590000, 'iPad Pro là mẫu tablet mới nhất được nhà Apple phát hành vào tháng 10/2022. Thiết bị được coi là tâm điểm của giới công nghệ tại thời điểm ra mắt khi được trang bị con chip Apple M2 mạnh mẽ, bên cạnh đó sẽ là những ưu điểm khác vượt trội như: hệ điều hành iPadOS 16, quay video 4K với tốc độ khung hình 60 FPS, tần số quét 120 Hz,...', 'iPad Pro', 'ipad', 20, 'ipad-pro-1.jpg'),
(10010, 14590000, 'iPad Air 5 đã được công bố tại sự kiện Peek Performance diễn ra hôm 9/3 (theo giờ Việt Nam). Năm nay Apple đã có những thay đổi lớn về cả hiệu năng và bổ sung màu sắc mới cho thiết bị.', 'iPad Air 5', 'ipad', 20, 'ipad-air-5-1.jpg'),
(10011, 62990000, 'Được trang bị bộ vi xử lý M3 Pro mạnh mẽ nhất từ trước đến nay của Apple, MacBook Pro không chỉ đáp ứng mọi yêu cầu của người dùng tác vụ từ văn phòng, giải trí cho đến đồ họa chuyên nghiệp mà còn tạo nên một làn gió mới trong thế giới công nghệ. Sự kết hợp giữa thiết kế thanh lịch với hiệu năng vượt trội không chỉ là một xu hướng mà còn là sự thực hiện đẳng cấp khi lần đầu ra mắt, hứa hẹn góp mặt trong danh sách \"siêu phẩm\" laptop đồ họa - kỹ thuật hot nhất cuối năm 2023.', 'MacBook Pro', 'macbook', 20, 'macbook-pro-1.jpg'),
(10012, 34990000, 'Sự kiện 2023 của nhà Apple với sự ra mắt cùng diện mạo mới của chiếc MacBook Air 15 inch M2 2023 10-core GPU, có không gian trải nghiệm nội dung rộng lớn với màn hình 15 inch. Với những người dùng yêu thích tính gọn nhẹ cũng như sở hữu hiệu năng mạnh của dòng Macbook Air thì chắc chắn không thể bỏ qua sản phẩm này.', 'MacBook Air', 'macbook', 20, 'macbook-air-1.jpg'),
(10014, 6090000, 'Tai nghe Bluetooth AirPods Pro USB-C Charge Apple sở hữu thiết kế mang đậm chất thương hiệu Apple, màu sắc sang trọng, đi cùng nhiều công nghệ cho các iFan: chip Apple H2, chống bụi, chống ồn chủ động,... hứa hẹn mang đến trải nghiệm âm thanh sống động, chinh phục người dùng.', 'AirPods Pro', 'accessory', 20, 'airpods-1.jpg'),
(10015, 12990000, 'Tai nghe chụp tai Bluetooth AirPods Max sở hữu ngoại hình độc đáo, tích hợp các công nghệ hàng đầu trong thị trường tai nghe ở thời điểm ra mắt (2020). Tai nghe xứng đáng là món đồ công nghệ \'đỉnh của đỉnh\' nâng cấp trải nghiệm âm nhạc của người dùng.', 'AirPods Max', 'accessory', 20, 'airpods-max-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`product_id`, `image`) VALUES
(10007, 'iphone-15-pro-1.jpg'),
(10007, 'iphone-15-pro-2.jpg'),
(10007, 'iphone-15-pro-3.jpg'),
(10007, 'iphone-15-pro-4.jpg'),
(10008, 'iphone-15-1.jpg'),
(10008, 'iphone-15-2.jpg'),
(10008, 'iphone-15-3.jpg'),
(10008, 'iphone-15-4.jpg'),
(10009, 'ipad-pro-1.jpg'),
(10009, 'ipad-pro-2.jpg'),
(10009, 'ipad-pro-3.jpg'),
(10009, 'ipad-pro-4.jpg'),
(10010, 'ipad-air-5-1.jpg'),
(10010, 'ipad-air-5-2.jpg'),
(10010, 'ipad-air-5-3.jpg'),
(10010, 'ipad-air-5-4.jpg'),
(10011, 'macbook-pro-1.jpg'),
(10011, 'macbook-pro-2.jpg'),
(10011, 'macbook-pro-3.jpg'),
(10011, 'macbook-pro-4.jpg'),
(10012, 'macbook-air-1.jpg'),
(10012, 'macbook-air-2.jpg'),
(10012, 'macbook-air-3.jpg'),
(10012, 'macbook-air-4.jpg'),
(10014, 'airpods-1.jpg'),
(10014, 'airpods-2.jpg'),
(10014, 'airpods-3.jpg'),
(10014, 'airpods-4.jpg'),
(10015, 'airpods-max-1.jpg'),
(10015, 'airpods-max-2.jpg'),
(10015, 'airpods-max-3.jpg'),
(10015, 'airpods-max-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `product_id` int(11) NOT NULL,
  `mark` int(11) DEFAULT NULL,
  `comments` longtext NOT NULL,
  `member_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`product_id`, `mark`, `comments`, `member_id`) VALUES
(10007, 787762296, 'Sản phẩm quá tuyệt vời.', '61a633c11b670');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `belong`
--
ALTER TABLE `belong`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_content`
--
ALTER TABLE `blog_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_id`,`image`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`product_id`,`member_id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_content`
--
ALTER TABLE `blog_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10016;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
