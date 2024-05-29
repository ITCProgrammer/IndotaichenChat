-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Bulan Mei 2024 pada 08.18
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatigniter`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `block_user`
--

CREATE TABLE `block_user` (
  `blocked_from` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `blocked_to` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `block_user`
--

INSERT INTO `block_user` (`blocked_from`, `blocked_to`, `time`) VALUES
('596958', '70f043', '2024-05-24 10:11:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `unique_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `user_fname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_lname` varchar(30) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bio` varchar(100) CHARACTER SET latin1 NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `dob` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `user_pass` varchar(20) CHARACTER SET latin1 NOT NULL,
  `user_avtar` varchar(200) CHARACTER SET latin1 NOT NULL,
  `user_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `last_logout` varchar(30) CHARACTER SET latin1 NOT NULL,
  `absen` int(11) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `kom` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `dpt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `unique_id`, `user_fname`, `user_lname`, `user_email`, `bio`, `created_at`, `dob`, `phone`, `address`, `user_pass`, `user_avtar`, `user_status`, `last_logout`, `absen`, `ip`, `kom`, `dpt`) VALUES
(1, '0829ee', 'heriben', 'dit', 'heriben@gmail.com', '', '22-5-2024', '', '', '', '123', 'cde36938.png', 'active', '', 123, '::1', 'W-DIT-000147.indotaichen.com', NULL),
(2, '2bc812', 'Sample', 'Account', 'sample@gmail.com', 'Just a dummy account', '20-6-2021', '12-12-1980', '7410000000', '69 Dummy Address', 'password', '9b1a8f8c.jpg', 'deactive', '6/20/2021, 10:53:44 PM', NULL, NULL, NULL, NULL),
(3, '596958', 'lala', 'aja', 'lala@gmail.com', '', '22-5-2024', '', '', '', '123', 'cd55e341.png', 'active', '', 1234, '::1', 'W-DIT-000147.indotaichen.com', NULL),
(4, '70c4e6', 'test', 'dit', 'ditt@gmail.com', 'laper', '22-5-2024', '04-05-1223', '96786786', '456546', '123', 'f491cb9f.png', 'deactive', '5/22/2024, 5:13:20 PM', 123, '::1', 'W-DIT-000147.indotaichen.com', 'DIT'),
(5, '70f043', 'DEDEN', 'KUENIA', 'DEDENKURNIA001@GMAIL.COM', '', '22-5-2024', '', '', '', '123', 'a6bd683b.png', 'deactive', '5/28/2024, 3:59:00 PM', NULL, NULL, NULL, NULL),
(6, '99ca12', 'deden', 'kurnia', 'deden@gmail.com', '', '22-5-2024', '', '', '', '1234', 'c1696b9.png', 'deactive', '5/28/2024, 3:58:53 PM', NULL, NULL, NULL, NULL),
(7, 'c7c02c', 'udin', 'brs', 'udin@gmail.com', '', '22-5-2024', '', '', '', '123', '23f3ef9c.png', 'deactive', '5/22/2024, 1:22:36 PM', 123, '::1', 'W-DIT-000147.indotaichen.com', NULL),
(8, 'cb25ca', 'deden', 'dit', 'dit@gmail.com', '', '22-5-2024', '', '', '', '123', '7477fb2.png', 'deactive', '5/24/2024, 7:54:13 AM', 123, '::1', 'W-DIT-000147.indotaichen.com', 'dit'),
(9, 'eab25a', 'asep', 'asep', 'asep@gmail', '', '22-5-2024', '', '', '', '123', '86dbfdac.png', 'deactive', '5/24/2024, 11:45:27 AM', 12345, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_messages`
--

CREATE TABLE `user_messages` (
  `time` datetime(6) NOT NULL,
  `sender_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `receiver_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `message` varchar(500) CHARACTER SET latin1 NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `kom` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `user_messages`
--

INSERT INTO `user_messages` (`time`, `sender_message_id`, `receiver_message_id`, `message`, `ip`, `kom`, `status`) VALUES
('2024-05-29 10:34:30.000000', '596958', '0829ee', 'yyy', '::1', 'W-DIT-000147.indotaichen.com', 'read'),
('2024-05-29 10:34:48.000000', '0829ee', '596958', 'y', '::1', 'W-DIT-000147.indotaichen.com', 'read'),
('2024-05-29 10:35:28.000000', '596958', '0829ee', 'k', '::1', 'W-DIT-000147.indotaichen.com', 'read'),
('2024-05-29 10:35:46.000000', '0829ee', '596958', 'iya sayang', '::1', 'W-DIT-000147.indotaichen.com', 'read'),
('2024-05-29 10:41:01.000000', '596958', '0829ee', 'hi', '::1', 'W-DIT-000147.indotaichen.com', 'read'),
('2024-05-29 10:44:24.000000', '596958', '0829ee', '7', '::1', 'W-DIT-000147.indotaichen.com', 'read'),
('2024-05-29 10:44:37.000000', '0829ee', '596958', 'jjj', '::1', 'W-DIT-000147.indotaichen.com', 'unread');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`unique_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
