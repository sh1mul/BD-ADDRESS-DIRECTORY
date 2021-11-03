-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2021 at 11:04 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `words`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `slug`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'শেরপুর', 'sherpur', 2, '2021-10-17 09:16:08', '2021-10-17 09:16:08'),
(2, 'জামালপুর', 'jamalpur', 2, '2021-10-17 09:25:26', '2021-10-17 09:25:26'),
(3, 'ময়মনসিংহ', 'mymensingh', 2, '2021-10-17 20:06:58', '2021-10-17 20:06:58'),
(4, 'নেত্রকোনা', 'netrokona', 2, '2021-10-17 20:07:43', '2021-10-17 20:07:43'),
(5, 'ঢাকা', 'dhaka', 1, '2021-10-17 20:26:40', '2021-10-17 20:26:40'),
(6, 'ফরিদপুর', 'faridpur', 1, '2021-10-17 20:27:15', '2021-10-17 20:27:15'),
(7, 'গাজীপুর', 'gazipur', 1, '2021-10-17 20:27:59', '2021-10-17 20:27:59'),
(8, 'গোপালগঞ্জ', 'gopalganj', 1, '2021-10-17 20:28:26', '2021-10-17 20:28:26'),
(9, 'কিশোরগঞ্জ', 'kishoreganj', 1, '2021-10-17 20:28:55', '2021-10-17 20:28:55'),
(10, 'মাদারিপুর', 'madaripur', 1, '2021-10-17 20:29:23', '2021-10-17 20:29:23'),
(11, 'মানিকগঞ্জ', 'manikganj', 1, '2021-10-17 20:29:58', '2021-10-17 20:29:58'),
(12, 'মুন্সিগঞ্জ', 'munsiganj', 1, '2021-10-17 20:30:30', '2021-10-17 20:30:30'),
(13, 'নারায়নগঞ্জ', 'narayanganj', 1, '2021-10-17 20:31:00', '2021-10-17 20:31:00'),
(14, 'নরসিংদী', 'narsingdi', 1, '2021-10-17 20:31:27', '2021-10-17 20:31:27'),
(15, 'রাজবাড়ী', 'rajbari', 1, '2021-10-17 20:31:47', '2021-10-17 20:31:47'),
(16, 'শরিয়তপুর', 'sariatpur', 1, '2021-10-17 20:32:34', '2021-10-17 20:32:34'),
(17, 'টাঙ্গাইল', 'tangail', 1, '2021-10-17 20:32:59', '2021-10-17 20:32:59'),
(18, 'কুষ্টিয়া', 'kushtia', 6, '2021-10-17 20:37:20', '2021-10-17 20:37:20'),
(19, 'খুলনা', 'khulna', 6, '2021-10-17 20:37:43', '2021-10-17 20:37:43'),
(20, 'চুয়াডাঙ্গা', 'chuadanga', 6, '2021-10-17 20:38:08', '2021-10-17 20:38:08'),
(21, 'ঝিনাইদহ', 'jhinaidah', 6, '2021-10-17 20:38:38', '2021-10-17 20:38:38'),
(22, 'নড়াইল', 'narail', 6, '2021-10-17 20:39:35', '2021-10-17 20:39:35'),
(23, 'বাগেরহাট', 'bagherhat', 6, '2021-10-17 20:39:59', '2021-10-17 20:39:59'),
(24, 'মাগুরা', 'magura', 6, '2021-10-17 20:40:30', '2021-10-17 20:40:30'),
(25, 'মেহেরপুর', 'meherpur', 6, '2021-10-17 20:41:20', '2021-10-17 20:41:20'),
(26, 'যশোর', 'jeshore', 6, '2021-10-17 20:42:08', '2021-10-17 20:42:08'),
(27, 'সাতক্ষীরা', 'satkhira', 6, '2021-10-17 20:42:38', '2021-10-17 20:42:38'),
(28, 'চট্টগ্রাম', 'chatragram', 5, '2021-10-17 20:48:22', '2021-10-17 20:48:22'),
(29, 'কুমিল্লা', 'comilla', 5, '2021-10-17 20:49:13', '2021-10-17 20:49:13'),
(30, 'কক্সবাজার', 'coxbazar', 5, '2021-10-17 20:49:56', '2021-10-17 20:49:56'),
(31, 'নোয়াখালী', 'noakhali', 5, '2021-10-17 20:50:26', '2021-10-17 20:50:26'),
(32, 'ব্রাহ্মণবাড়িয়া', 'brahmanbaria', 5, '2021-10-17 20:50:56', '2021-10-17 20:50:56'),
(33, 'চাঁদপুর', 'chandpur', 5, '2021-10-17 20:51:20', '2021-10-17 20:51:20'),
(34, 'লক্ষ্মীপুর', 'laxmipur', 5, '2021-10-17 20:51:49', '2021-10-17 20:51:49'),
(35, 'ফেনী', 'feni', 5, '2021-10-17 20:52:10', '2021-10-17 20:52:10'),
(36, 'খাগড়াছড়ি', 'khagrachari', 5, '2021-10-17 20:52:35', '2021-10-17 20:52:35'),
(37, 'রাঙ্গামাটি', 'rangamati', 5, '2021-10-17 20:53:39', '2021-10-17 20:53:39'),
(38, 'বান্দরবান', 'bandarban', 5, '2021-10-17 20:56:17', '2021-10-17 20:56:17'),
(39, 'রাজশাহী', 'rajshahi', 4, '2021-10-17 21:49:44', '2021-10-17 21:49:44'),
(40, 'নাটোর', 'natore', 4, '2021-10-17 21:50:18', '2021-10-17 21:50:18'),
(41, 'নওগাঁ', 'naoga', 4, '2021-10-17 21:51:01', '2021-10-17 21:51:01'),
(42, 'চাঁপাইনবাবগঞ্জ', 'chapainababganj', 4, '2021-10-17 21:51:33', '2021-10-17 21:51:33'),
(43, 'বগুড়া', 'bogura', 4, '2021-10-17 21:51:55', '2021-10-17 21:51:55'),
(44, 'জয়পুরহাট', 'jaipurhat', 4, '2021-10-17 21:52:19', '2021-10-17 21:52:19'),
(45, 'পাবনা', 'pabna', 4, '2021-10-17 21:52:47', '2021-10-17 21:52:47'),
(46, 'সিরাজগঞ্জ', 'sirajganj', 4, '2021-10-17 21:53:10', '2021-10-17 21:53:10'),
(47, 'রংপুর', 'rangpur', 3, '2021-10-17 21:54:19', '2021-10-17 21:54:19'),
(48, 'দিনাজপুর', 'dinajpur', 3, '2021-10-17 21:54:48', '2021-10-17 21:54:48'),
(49, 'নীলফামারী', 'nilfamary', 3, '2021-10-17 21:55:27', '2021-10-17 21:55:27'),
(50, 'গাইবান্ধা', 'gaibandha', 3, '2021-10-17 21:55:56', '2021-10-17 21:55:56'),
(51, 'লালমনিরহাট', 'lalmanirhat', 3, '2021-10-17 21:56:20', '2021-10-17 21:56:20'),
(52, 'ঠাকুরগাও', 'thakurgao', 3, '2021-10-17 21:56:51', '2021-10-17 21:56:51'),
(53, 'কুড়িগ্রাম', 'kurigram', 3, '2021-10-17 21:57:13', '2021-10-17 21:57:13'),
(54, 'পঞ্চগড়', 'panchagar', 3, '2021-10-17 21:57:38', '2021-10-17 21:57:38'),
(55, 'বরিশাল', 'barisal', 7, '2021-10-17 22:00:00', '2021-10-17 22:00:00'),
(56, 'পটুয়াখালী', 'patuakhali', 7, '2021-10-17 22:00:31', '2021-10-17 22:00:31'),
(57, 'ভোলা', 'bhola', 7, '2021-10-17 22:00:53', '2021-10-17 22:00:53'),
(58, 'পিরোজপুর', 'pirojpur', 7, '2021-10-17 22:01:38', '2021-10-17 22:01:38'),
(59, 'বরগুনা', 'barguna', 7, '2021-10-17 22:02:00', '2021-10-17 22:02:00'),
(60, 'ঝালকাঠী', 'jhalokathi', 7, '2021-10-17 22:02:40', '2021-10-17 22:02:40'),
(61, 'সিলেট', 'sylhet', 8, '2021-10-17 22:04:42', '2021-10-17 22:04:42'),
(62, 'হবিগঞ্জ', 'habiganj', 8, '2021-10-17 22:05:06', '2021-10-17 22:05:06'),
(63, 'সুনামগঞ্জ', 'sunamganj', 8, '2021-10-17 22:05:30', '2021-10-17 22:05:30'),
(64, 'মৌলভীবাজার', 'moulovibazar', 8, '2021-10-17 22:05:59', '2021-10-17 22:05:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
