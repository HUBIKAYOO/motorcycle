-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 04:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hubi_sh`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `member_gender` varchar(255) NOT NULL,
  `member_address` varchar(255) NOT NULL,
  `member_type` int(11) NOT NULL,
  `member_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `member_gender`, `member_address`, `member_type`, `member_img`) VALUES
(20, 'djg', 'ชาย', '', 1, 'zx15.jpg ');

-- --------------------------------------------------------

--
-- Table structure for table `member_type`
--

CREATE TABLE `member_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_type`
--

INSERT INTO `member_type` (`type_id`, `type_name`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_model` varchar(255) NOT NULL,
  `product_type` int(11) NOT NULL,
  `product_cylinder` varchar(255) NOT NULL,
  `product_gear` int(11) NOT NULL,
  `product_oprice` double NOT NULL,
  `product_price` double NOT NULL,
  `product_details` text NOT NULL,
  `product_img` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_brand`, `product_model`, `product_type`, `product_cylinder`, `product_gear`, `product_oprice`, `product_price`, `product_details`, `product_img`, `product_img1`, `product_img2`, `product_img3`) VALUES
(59, 1, 'CBR250RR', 3, '249.00', 1, 260000, 249000, '', 'cbr 250 rr_1.png', 'cbr 250 rr_2png.jpg', 'cbr 250 rr_3.png', 'cbr 250 rr_4png.jpg'),
(60, 3, 'ninja zx25r', 3, '249.00', 1, 275000, 269000, '', 'zx25r_1.png', 'zx25r_2.png', 'zx25r_3.png', 'zx25r_4.png'),
(61, 2, 'YZF R25', 3, '249.00', 1, 180000, 176000, 'อัพเดทสีใหม่ Yamaha YZF-R25 2022 อย่างเป็นทางการ เมื่อวันที่ 22 เมษายน 2022 ยามาฮ่ามอเตอร์ได้ประกาศการเปลี่ยนแปลงเล็กน้อยสำหรับซูเปอร์สปอร์ต 250 ซีซี YZF-R25 ABS มาดูรายละเอียดเพิ่มเติมเกี่ยวกับจักรยานยนต์ดังกล่าวว่าน่าสนใจอย่างไรบ้าง', 'yzf-r25_1.jpg', 'yzf-r25_2.jpg', 'yzf-r25_3.jpg', 'yzf-r25_4.jpg'),
(62, 4, 'HAYABUSA M2', 3, '1339.8', 1, 900000, 899000, 'Suzuki Hayabusa 2022 มาพร้อมกับการดีไซน์ตัวรถแบบสปอร์ตตามหลักอากาศพลศาสตร์ คงความเป็นเอกลักษณ์ของพญาเหยี่ยวตามชื่อ Hayabusa ไฟหน้าและไฟท้ายแบบ LED มาตรวัดแสดงผลการขับขี่แบบ TFT LCD แสดงข้อมูลแบบเรียลไทม์ เช่น องศาการเอียงของตัวรถ การใช้เบรกหน้า-หลัง หรือน้ำหนักของการบิดคันเร่ง โครงสร้างเฟรมตัวรถแบบทวิน-สปา และสวิงอาร์มอะลูมิเนียมอัลลอยน้ำหนักเบา ระบบเบรกใช้คาลิเปอร์เบรกของ Brembo รุ่นล่าสุดที่ระบายความร้อนได้ดี ทำงานร่วมกับจานเบรกขนาดใหญ่ 320 มิลลิเมตร ล้อแม็กสีดำขนาด 17 นิ้ว รัดด้วยยางแบบ Tubeless ขนาด 120/70 และ 190/50', 'hayabusa_1.jpg', 'hayabusa_2.jpg', 'hayabusa_3.jpg', 'hayabusa_4.jpg'),
(63, 1, 'WAVE 125i', 1, '124.00', 1, 56800, 53800, 'All New Honda Wave 125i  ดีไซน์สปอร์ตด้วยเฟรมใหม่ ออกแบบวัสดุและเทคนิคการเชื่อมต่อตัวถังให้แข็งแรงทนทาน น้ำหนักเบาลง ควบคุมรถได้ง่ายและคล่องตัวกว่าเดิม เรือนไมล์ใหม่ LCD Multi Meter ผสานเทคโนโลยีจอแสดงผล เรียบหรูมีมิติ ออกแบบแยกส่วน', 'wave125i_1.png', 'wave125i_2.png', 'wave125i_3.png', 'wave125i_4.png'),
(64, 2, 'Grand Filano', 1, '124.00', 2, 58900, 58600, 'Yamaha Grand Filano Hybrid (แกรนด์ฟีลาโน่ ไฮบริด)  ที่เป็นรถจักรยานยนต์ไฮบริดรุ่นแรกที่เปิดตัวในประเทศไทย ซึ่งระบบไฮบริดที่รุ่นนี้นำมาใช้จะช่วยส่งกำลังให้ออกตัวได้เร็วขึ้น ประหยัดน้ำมันช่วงตำแหน่เปิดคันเร่งในตอนออกตัว ด้วยระบบ SAMART MOTOR GENERATOR (SMG) ขับเคลื่อนมอเตอร์ไฟฟ้าเข้ากับเครื่องยนต์', 'Filano_1.png', 'Filano_2.png', 'Filano_3.png', 'Filano_4.png'),
(65, 1, 'CB650R', 2, '649.00', 1, 309900, 309100, 'รถจักรยานยนต์ฮอนด้าตอกย้ำความเป็นผู้นำตลาดรถบิ๊กไบค์ในกลุ่มมิดเดิ้ลคลาสอีกครั้ง ด้วยการเปิดตัวรถใหม่ในตระกูล 650 Series พร้อมกันทั้งสองรุ่น ประกอบด้วย New CBR650R และ New CB650R ที่ได้รับการออกแบบให้มีความดุดันขึ้นอีกระดับด้วยกราฟิกที่โดดเด่นและสีสันที่โฉบเฉียวยิ่งขึ้น ลงตัวกับรูปทรงที่ให้ความบึกบึน พร้อมสมรรถนะจากเครื่องยนต์ 4 สูบเรียงของฮอนด้า ที่ได้รับการพิสูจน์แล้วถึงความเหนือชั้นและความสนุกในการขับขี่ขั้นสุด', 'cb650r_1.jpg', 'cb650r_2 .jpg', 'cb650r_3.jpg', 'cb650r_4.jpg'),
(66, 2, 'WR155R', 4, '154.00', 1, 109500, 105500, 'Yamaha WR155R “Journey of The Brave” เปิดเส้นทางใหม่ไปกับใจที่กล้า รถจักรยานยนต์สไตล์ออฟโรด ที่ถอดสมรรถนะมาจากสายพันธุ์แชมป์ตัวจริงในแบบ WR Series สายพันธุ์ Enduro ระดับโลก ผู้สนใจสามารถเป็นเจ้าของได้แล้ววันนี้\r\n\r\n', 'wr155r_1.jpg', 'wr155r_2.jpg', 'wr155r_3.jpg', 'wr155r_4.jpg'),
(67, 1, 'Scoopy', 1, '124.00', 2, 49900, 49600, 'เอ.พี. ฮอนด้า ตอกย้ำความเป็นผู้นำตลาดรถจักรยานยนต์ไทยอีกครั้ง ด้วยการเปิดตัว All New Honda Scoopy รถแฟชั่น เอ.ที. โมเดลใหม่ล่าสุด พัฒนาขึ้นภายใต้คอนเซปต์ “Fun District มันส์...ให้สุดเวย์” ผสานความสมบูรณ์แบบของดีไซน์ใหม่สไตล์โมเดิร์น และเทคโนโลยีเพื่อการขับขี่อย่างลงตัว', 'scoopy_1.png', 'scoopy_2.png', 'scoopy_3.png', 'Filano_4.png'),
(68, 1, ' Click 160', 1, '159.00', 2, 64500, 63500, 'ดีไซน์ภายนอกของ Honda Click 160 โดดเด่นด้วยความเป็นรถออโตเมติกดีไซน์สปอร์ต ที่ถูกปรับปรุงใหม่ให้ดูมีความโฉบเฉี่ยวมากกว่ารุ่นเดิม แฟริ่งด้านหน้ามีการออกแบบใหม่ ดูแตกต่างจากรุ่นเดิมอย่างชัดเจน ตัวไฟหน้าใช้เป็นไฟหน้า LED เต็มระบบทั้งไฟสูงและไฟต่ำ มาพร้อมไฟ DRL ที่เสริมเป็นคิ้วให้กับหน้ารถ ดูหล่อเหลาขึ้น', 'click_1.jpg', 'click_2.jpg', 'click_3.jpg', 'click_4.jpg'),
(69, 2, 'Exciter 155', 1, '154.00', 1, 70900, 69900, 'Yamaha Exciter 155 ใหม่ มาพร้อมขุมพลังเครื่องยนต์ 4 จังหวะ สูบเดี่ยว SOHC 4 วาล์ว พิกัด 155 ซีซี. ระบายความร้อนด้วยน้ำ กำลังอัด 10.5 : 1 กระบอกสูบ x ระยะชัก 58.0 x 58.7 มม. จ่ายน้ำมันด้วยหัวฉีด คลัตช์เปียก เกียร์ 6 สปีด สตาร์ทมือไฟฟ้า ถังน้ำมันจุ 5.4 ลิตร', 'exciter_1.png', 'exciter_2.png', 'exciter_3.png', 'exciter_4.png'),
(70, 1, 'wave 110i', 1, '109.00', 1, 38100, 37100, 'Honda Wave 110i 2022 รถมอเตอร์ไซค์ครอบครัว 110 ซี.ซี. ราคาเริ่ม 37,100 บาท 24 พ.ค. 2565. 84,487. Honda Wave 110i 2022 รถมอเตอร์ไซค์ครอบครัวแบบประหยัด เครื่องยนต์ 110 ซี.ซี. อัตราสิ้นเปลืองเฉลี่ย 76.9 กิโลเมตร/ลิตร มีให้เลือก 4 รุ่นย่อย ราคาเริ่มต้น 37,100 บาท', 'wave110i_1.png', 'wave110i_2.png', 'wave110i_3.png', 'wave110i_4.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE `product_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`brand_id`, `brand_name`, `brand_img`) VALUES
(1, 'HONDA', 'HONDA.png'),
(2, 'YAMAHA', 'YAMAHA.png'),
(3, 'KAWASAKI', 'KAWASAKI.png'),
(4, 'SUZUKI', 'SUZUKI.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_gear`
--

CREATE TABLE `product_gear` (
  `gear_id` int(11) NOT NULL,
  `gear_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_gear`
--

INSERT INTO `product_gear` (`gear_id`, `gear_name`) VALUES
(1, 'Ordinary'),
(2, 'Automatic');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`type_id`, `type_name`) VALUES
(1, 'Family'),
(2, 'Neo Sports Cafe\''),
(3, 'Sport'),
(4, 'Off Road');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_type` (`member_type`);

--
-- Indexes for table `member_type`
--
ALTER TABLE `member_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_brand` (`product_brand`),
  ADD KEY `product_type` (`product_type`),
  ADD KEY `product_gear` (`product_gear`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `product_gear`
--
ALTER TABLE `product_gear`
  ADD PRIMARY KEY (`gear_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `member_type`
--
ALTER TABLE `member_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_gear`
--
ALTER TABLE `product_gear`
  MODIFY `gear_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`member_type`) REFERENCES `member_type` (`type_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_brand`) REFERENCES `product_brand` (`brand_id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`product_type`) REFERENCES `product_type` (`type_id`),
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`product_gear`) REFERENCES `product_gear` (`gear_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
