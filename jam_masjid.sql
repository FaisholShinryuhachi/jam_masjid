-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jan 2021 pada 15.38
-- Versi server: 10.1.33-MariaDB
-- Versi PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jam_masjid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-11-30 07:07:18', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-30 07:11:58', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/spk_siang/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2021-01-12 00:50:19', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/add-save', 'Add New Data Nama Masjid at Data Masjid', '', 1, '2021-01-12 03:51:58', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/add-save', 'Add New Data Data Masjid at Menu Management', '', 1, '2021-01-12 03:53:00', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/delete/1', 'Delete data Data Masjid at Menu Management', '', 1, '2021-01-12 03:53:53', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 03:56:07', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 03:58:36', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 03:58:58', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 04:00:58', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 04:01:07', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 04:01:58', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 04:02:07', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 04:03:05', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_news_sticker/add-save', 'Add New Data  at News Sticker', '', 1, '2021-01-12 05:03:57', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_news_sticker/edit-save/1', 'Update data  at News Sticker', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>text_1</td><td><p>Text 1 .......................<br></p></td><td>Text 1 .......................</td></tr><tr><td>text_2</td><td><p>Text 1 .......................<br></p><p><br></p></td><td>Text 1 .......................</td></tr><tr><td>text_3</td><td><p>Text 1 .......................<br></p><p><br></p></td><td>Text 1 .......................</td></tr><tr><td>text_4</td><td><p>Text 1 .......................<br></p><p><br></p></td><td>Text 1 .......................</td></tr></tbody></table>', 1, '2021-01-12 05:05:48', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_news_sticker/edit-save/1', 'Update data  at News Sticker', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 05:06:43', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_masjid</td><td>Nama Masjidku</td><td>Nama Masjid</td></tr></tbody></table>', 1, '2021-01-12 05:28:59', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 05:53:17', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 05:53:35', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjidku at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_masjid</td><td>Nama Masjid</td><td>Nama Masjidku</td></tr></tbody></table>', 1, '2021-01-12 05:57:44', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_masjid</td><td>Nama Masjidku</td><td>Nama Masjid</td></tr></tbody></table>', 1, '2021-01-12 05:58:11', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/add-save', 'Add New Data News Sticker at Menu Management', '', 1, '2021-01-12 06:00:19', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/delete/3', 'Delete data News Sticker at Menu Management', '', 1, '2021-01-12 06:00:36', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit-save/1', 'Update data Nama Masjid at Data Masjid', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 06:01:47', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/jam_masjid/public/admin/jm_news_sticker/edit-save/1', 'Update data  at News Sticker', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 06:03:06', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/jam_masjid/public/admin/jm_news_sticker/edit-save/1', 'Update data  at News Sticker', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 06:03:25', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/add-save', 'Add New Data Hadits at Menu Management', '', 1, '2021-01-12 06:17:00', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/delete/5', 'Delete data Hadits at Menu Management', '', 1, '2021-01-12 06:17:15', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_hadits/edit-save/1', 'Update data  at Hadits', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 06:19:30', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_sholat_jumat/add-save', 'Add New Data Judul Khotbah at Sholat Jumat', '', 1, '2021-01-12 06:49:13', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/delete/7', 'Delete data Sholat Jumat at Menu Management', '', 1, '2021-01-12 06:54:59', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/module_generator/delete/15', 'Delete data Sholat Jumat at Module Generator', '', 1, '2021-01-12 06:55:15', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/delete/8', 'Delete data Sholat Jumat at Menu Management', '', 1, '2021-01-12 06:56:12', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/add-save', 'Add New Data Sholat Jumat at Menu Management', '', 1, '2021-01-12 06:56:33', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/jam_masjid/public/admin/jm_sholat_jumat/edit-save/1', 'Update data Judul Khotbah at Sholat Jumat', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 06:59:10', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_slider/add-save', 'Add New Data  at Slider', '', 1, '2021-01-12 07:06:26', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_slider/delete-image', 'Delete the image of 1 at Slider', '', 1, '2021-01-12 07:06:46', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/jm_slider/edit-save/1', 'Update data  at Slider', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slider_4</td><td></td><td>uploads/1/2021-01/masjid.jpg</td></tr></tbody></table>', 1, '2021-01-12 07:07:26', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/delete/10', 'Delete data Slider at Menu Management', '', 1, '2021-01-12 07:08:02', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://localhost/jam_masjid/public/admin/menu_management/add-save', 'Add New Data Slider at Menu Management', '', 1, '2021-01-12 07:08:26', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://localhost/jam_masjid/public/admin/jm_slider/edit-save/1', 'Update data  at Slider', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-01-12 07:10:43', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(2, 'Data Masjid', 'URL', 'http://localhost/jam_masjid/public/admin/jm_data_masjid/edit/1?return_url=http%3A%2F%2Flocalhost%2Fjam_masjid%2Fpublic%2Fadmin%2Fjm_data_masjid&parent_id=&parent_field=', 'normal', 'fa fa-archive', 0, 1, 0, 1, NULL, '2021-01-12 03:52:59', NULL),
(4, 'News Sticker', 'URL', 'http://localhost/jam_masjid/public/admin/jm_news_sticker/edit/1?return_url=http%3A%2F%2Flocalhost%2Fjam_masjid%2Fpublic%2Fadmin%2Fjm_news_sticker&parent_id=&parent_field=', 'normal', 'fa fa-text-width', 0, 1, 0, 1, NULL, '2021-01-12 06:00:18', NULL),
(6, 'Hadits', 'URL', 'http://localhost/jam_masjid/public/admin/jm_hadits/edit/1?return_url=http%3A%2F%2Flocalhost%2Fjam_masjid%2Fpublic%2Fadmin%2Fjm_hadits&parent_id=&parent_field=', 'normal', 'fa fa-list-alt', 0, 1, 0, 1, NULL, '2021-01-12 06:16:59', NULL),
(9, 'Sholat Jumat', 'URL', 'http://localhost/jam_masjid/public/admin/jm_sholat_jumat/edit/1?return_url=http%3A%2F%2Flocalhost%2Fjam_masjid%2Fpublic%2Fadmin%2Fjm_sholat_jumat&parent_id=&parent_field=', 'normal', 'fa fa-users', 0, 1, 0, 1, NULL, '2021-01-12 06:56:33', NULL),
(11, 'Slider', 'URL', 'http://localhost/jam_masjid/public/admin/jm_slider/edit/1?return_url=http%3A%2F%2Flocalhost%2Fjam_masjid%2Fpublic%2Fadmin%2Fjm_slider&parent_id=&parent_field=', 'normal', 'fa fa-image', 0, 1, 0, 1, NULL, '2021-01-12 07:08:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-11-30 07:07:16', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-11-30 07:07:16', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-11-30 07:07:16', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-11-30 07:07:16', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-11-30 07:07:16', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-11-30 07:07:16', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-11-30 07:07:16', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-11-30 07:07:16', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-11-30 07:07:16', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-11-30 07:07:16', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-11-30 07:07:16', NULL, NULL),
(12, 'Data Masjid', 'fa fa-archive', 'jm_data_masjid', 'jm_data_masjid', 'AdminJmDataMasjidController', 0, 0, '2021-01-12 03:49:41', NULL, NULL),
(13, 'News Sticker', 'fa fa-text-width', 'jm_news_sticker', 'jm_news_sticker', 'AdminJmNewsStickerController', 0, 0, '2021-01-12 04:56:35', NULL, NULL),
(14, 'Hadits', 'fa fa-list-alt', 'jm_hadits', 'jm_hadits', 'AdminJmHaditsController', 0, 0, '2021-01-12 06:04:38', NULL, NULL),
(15, 'Sholat Jumat', 'fa fa-users', 'jm_sholat_jumat', 'jm_sholat_jumat', 'AdminJmSholatJumatController', 0, 0, '2021-01-12 06:44:12', NULL, '2021-01-12 06:55:15'),
(16, 'Sholat Jumat', 'fa fa-users', 'jm_sholat_jumat', 'jm_sholat_jumat', 'AdminJmSholatJumatController', 0, 0, '2021-01-12 06:55:44', NULL, NULL),
(17, 'Slider', 'fa fa-image', 'jm_slider', 'jm_slider', 'AdminJmSliderController', 0, 0, '2021-01-12 07:01:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2020-11-30 07:07:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2020-11-30 07:07:16', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2020-11-30 07:07:16', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2020-11-30 07:07:16', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2020-11-30 07:07:16', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2020-11-30 07:07:16', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2020-11-30 07:07:16', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2020-11-30 07:07:16', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2020-11-30 07:07:16', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2020-11-30 07:07:16', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2020-11-30 07:07:17', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2020-11-30 07:07:17', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-11-30 07:07:17', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-11-30 07:07:17', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2020-11-30 07:07:17', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-11-30 07:07:17', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-11-30 07:07:17', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-11-30 07:07:17', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-11-30 07:07:17', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-11-30 07:07:17', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-11-30 07:07:17', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2020-11-30 07:07:17', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-11-30 07:07:17', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2020-11-30 07:07:17', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2020-11-30 07:07:17', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-11-30 07:07:17', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2020-11-30 07:07:17', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2020-11-30 07:07:17', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$DFczrcbKoxGRutg1U8fehOAqWNd.P4tbvW3B9KeiJk.dfUKykFmhG', 1, '2020-11-30 07:07:16', NULL, 'Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jm_data_masjid`
--

CREATE TABLE `jm_data_masjid` (
  `id` int(10) NOT NULL,
  `nama_masjid` varchar(255) DEFAULT NULL,
  `alamat_masjid` varchar(255) DEFAULT NULL,
  `no_hp` varchar(150) DEFAULT NULL,
  `pengurus` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jm_data_masjid`
--

INSERT INTO `jm_data_masjid` (`id`, `nama_masjid`, `alamat_masjid`, `no_hp`, `pengurus`) VALUES
(1, 'Nama Masjid', 'Alamat Masjid', '08992847189', 'Nama Pengurus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jm_hadits`
--

CREATE TABLE `jm_hadits` (
  `id` int(10) NOT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `text_3` varchar(255) NOT NULL,
  `text_4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jm_hadits`
--

INSERT INTO `jm_hadits` (`id`, `text_1`, `text_2`, `text_3`, `text_4`, `created_at`, `updated_at`) VALUES
(1, 'Text 1...', 'Text 2...', 'Text 3...', 'Text 4...', '2021-01-11 17:00:00', '2021-01-12 06:19:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jm_news_sticker`
--

CREATE TABLE `jm_news_sticker` (
  `id` int(10) NOT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `text_3` varchar(255) DEFAULT NULL,
  `text_4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jm_news_sticker`
--

INSERT INTO `jm_news_sticker` (`id`, `text_1`, `text_2`, `text_3`, `text_4`, `created_at`, `updated_at`) VALUES
(1, 'Text 1 .......................', 'Text 2 .......................', 'Text 3 .......................', 'Text 4.......................', '2021-01-12 05:03:57', '2021-01-12 06:03:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jm_pengumuman`
--

CREATE TABLE `jm_pengumuman` (
  `id` int(10) UNSIGNED NOT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `text_3` varchar(255) DEFAULT NULL,
  `text_4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jm_sholat_jumat`
--

CREATE TABLE `jm_sholat_jumat` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `khatib` varchar(255) DEFAULT NULL,
  `imam` varchar(255) DEFAULT NULL,
  `gambar_1` varchar(255) DEFAULT NULL,
  `gambar_2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jm_sholat_jumat`
--

INSERT INTO `jm_sholat_jumat` (`id`, `judul`, `khatib`, `imam`, `gambar_1`, `gambar_2`, `created_at`, `updated_at`) VALUES
(1, 'Judul Khotbah', 'Nama Khatib', 'Imam Khatib', 'uploads/1/2021-01/masjid.jpg', 'uploads/1/2021-01/masjid2.jpg', '2021-01-12 06:49:13', '2021-01-12 06:59:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jm_slider`
--

CREATE TABLE `jm_slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_1` varchar(255) DEFAULT NULL,
  `slider_2` varchar(255) DEFAULT NULL,
  `slider_3` varchar(255) DEFAULT NULL,
  `slider_4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jm_slider`
--

INSERT INTO `jm_slider` (`id`, `slider_1`, `slider_2`, `slider_3`, `slider_4`, `created_at`, `updated_at`) VALUES
(1, 'uploads/1/2021-01/index2.jpg', 'uploads/1/2021-01/masjid.jpg', 'uploads/1/2021-01/masjid2.jpg', 'uploads/1/2021-01/masjid.jpg', '2021-01-12 07:06:25', '2021-01-12 07:10:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jm_template`
--

CREATE TABLE `jm_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_template` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jm_template_adzan`
--

CREATE TABLE `jm_template_adzan` (
  `id` int(10) NOT NULL,
  `nama_template` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jm_template_sholat`
--

CREATE TABLE `jm_template_sholat` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_template` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jm_data_masjid`
--
ALTER TABLE `jm_data_masjid`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jm_hadits`
--
ALTER TABLE `jm_hadits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jm_news_sticker`
--
ALTER TABLE `jm_news_sticker`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jm_pengumuman`
--
ALTER TABLE `jm_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jm_sholat_jumat`
--
ALTER TABLE `jm_sholat_jumat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jm_slider`
--
ALTER TABLE `jm_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jm_template`
--
ALTER TABLE `jm_template`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jm_template_adzan`
--
ALTER TABLE `jm_template_adzan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jm_template_sholat`
--
ALTER TABLE `jm_template_sholat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jm_data_masjid`
--
ALTER TABLE `jm_data_masjid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jm_hadits`
--
ALTER TABLE `jm_hadits`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jm_news_sticker`
--
ALTER TABLE `jm_news_sticker`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jm_pengumuman`
--
ALTER TABLE `jm_pengumuman`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jm_sholat_jumat`
--
ALTER TABLE `jm_sholat_jumat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jm_slider`
--
ALTER TABLE `jm_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jm_template`
--
ALTER TABLE `jm_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jm_template_adzan`
--
ALTER TABLE `jm_template_adzan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jm_template_sholat`
--
ALTER TABLE `jm_template_sholat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
