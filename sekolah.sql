-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Nov 2024 pada 05.21
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namajurusan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusans`
--

INSERT INTO `jurusans` (`id`, `namajurusan`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Komputer Jaringan dan Telekomunikasi', '2024-10-30 19:41:42', '2024-10-30 22:45:43'),
(2, 'Teknik Ototronik', '2024-10-30 19:42:52', '2024-10-30 19:42:52'),
(3, 'Teknik Otomotif', '2024-10-30 19:43:18', '2024-10-30 22:46:16'),
(4, 'Pemasaran', '2024-10-30 22:46:46', '2024-10-30 22:46:46'),
(5, 'Akuntansi dan Keuangan Lembaga', '2024-10-30 22:47:02', '2024-10-30 22:47:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namaKelas` varchar(255) NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `namaKelas`, `jurusan_id`, `created_at`, `updated_at`) VALUES
(1, 'X TKJT 1', 1, '2024-10-30 19:44:16', '2024-10-30 22:51:06'),
(2, 'X TKJT 2', 1, '2024-10-30 22:44:28', '2024-10-30 22:51:38'),
(3, 'X TKJT 3', 1, '2024-10-30 22:44:45', '2024-10-30 22:52:06'),
(4, 'X TO 1', 2, '2024-10-30 22:49:19', '2024-10-30 22:49:19'),
(5, 'X TO 2', 2, '2024-10-30 22:50:20', '2024-10-30 22:50:20'),
(6, 'X TO 3', 2, '2024-10-30 22:50:31', '2024-10-30 22:50:31'),
(7, 'X TO 4', 2, '2024-10-30 22:50:40', '2024-10-30 22:50:40'),
(8, 'X BDPM 1', 4, '2024-10-30 22:52:38', '2024-10-30 22:52:38'),
(9, 'X BDPM 2', 4, '2024-10-30 22:52:48', '2024-10-30 22:52:48'),
(10, 'X AKL 1', 5, '2024-10-30 22:53:03', '2024-10-30 22:53:03'),
(11, 'X AKL 2', 4, '2024-10-30 22:53:10', '2024-10-30 22:53:10'),
(12, 'XI TKR 1', 3, '2024-10-30 22:57:28', '2024-10-30 22:57:28'),
(13, 'XI TKR 2', 3, '2024-10-30 22:57:48', '2024-10-30 22:57:48'),
(14, 'XI TOT 1', 2, '2024-10-30 22:58:36', '2024-10-30 22:58:36'),
(15, 'XI TOT 2', 2, '2024-10-30 22:58:44', '2024-10-30 22:58:44'),
(16, 'XI TKJ 1', 1, '2024-10-30 22:59:13', '2024-10-30 22:59:13'),
(17, 'XI TKJ 2', 1, '2024-10-30 22:59:20', '2024-10-30 22:59:20'),
(18, 'XI TKJ 3', 1, '2024-10-30 22:59:32', '2024-10-30 22:59:32'),
(19, 'XI BD 1', 4, '2024-10-30 22:59:56', '2024-10-30 22:59:56'),
(20, 'XI BD 2', 4, '2024-10-30 23:00:02', '2024-10-30 23:00:02'),
(21, 'XI AK 1', 5, '2024-10-30 23:00:16', '2024-10-30 23:00:16'),
(22, 'XI AK 2', 5, '2024-10-30 23:00:24', '2024-10-30 23:00:24'),
(24, 'XII TKR 2', 3, '2024-10-30 23:01:08', '2024-10-30 23:01:08'),
(25, 'XII TKR 1', 3, '2024-10-30 23:01:13', '2024-10-30 23:01:13'),
(26, 'XII TOT 1', 2, '2024-10-30 23:02:27', '2024-10-30 23:02:27'),
(27, 'XII TOT 2', 2, '2024-10-30 23:02:35', '2024-10-30 23:02:35'),
(28, 'XII TKJ 1', 1, '2024-10-30 23:02:50', '2024-10-30 23:02:50'),
(29, 'XII TKJ 2', 1, '2024-10-30 23:02:57', '2024-10-30 23:02:57'),
(30, 'XII TKJ 3', 1, '2024-10-30 23:03:03', '2024-10-30 23:03:03'),
(31, 'XII BD 1', 4, '2024-10-30 23:03:19', '2024-10-30 23:03:19'),
(32, 'XII BD 2', 4, '2024-10-30 23:03:26', '2024-10-30 23:03:26'),
(33, 'XII AK 1', 5, '2024-10-30 23:03:35', '2024-10-30 23:03:35'),
(34, 'XII AK 2', 5, '2024-10-30 23:03:41', '2024-10-30 23:03:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_16_200000_create_jurusans_table', 1),
(6, '2024_10_16_200459_create_kelas_table', 1),
(8, '2024_10_16_200649_create_moduls_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `moduls`
--

CREATE TABLE `moduls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `moduls`
--

INSERT INTO `moduls` (`id`, `judul`, `img`, `deskripsi`, `kelas_id`, `created_at`, `updated_at`) VALUES
(1, 'RPS', '01JBG8785886P0AYCBEBFDD42R.png', '01JBG87865DQ4QE84BEHTPPFHT.pdf', 1, '2024-10-30 19:59:35', '2024-10-30 19:59:35'),
(2, 'Tugas 1', '01JBG8E3NYM9W73EQFKQ5KDTPZ.png', '01JBG8E3P8YRTST4NEQEKZ1XCD.pdf', 1, '2024-10-30 20:03:20', '2024-10-30 20:03:20'),
(3, 'Tugas 2', '01JBG8V09SQE9380NDYGB329PM.jpg', '01JBG8V0A2DFF0JAS4PK245T38.pdf', 1, '2024-10-30 20:10:23', '2024-10-30 20:10:23'),
(4, 'Coba', '01JBGJW6027B3FA2RQVPH5BWM0.png', '01JBGJW61840YJK4A0WWKE6E6X.pdf', 33, '2024-10-30 23:05:47', '2024-10-30 23:05:47'),
(5, 'Bahasa Inggris', '01JC2CS018WKGQW0CQMD4YP36C.jpg', '01JC2CS025Q9YX3FZYMNFDT4A4.pdf', 10, '2024-11-06 21:05:31', '2024-11-06 21:05:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alka', 'alka@gmail.com', NULL, '$2y$10$VYcaAeWsZQOqpHapZRHX4eU48/wOf2hbPkcanF2IlMUZG3WZDMWTK', NULL, '2024-10-30 19:34:15', '2024-10-30 19:34:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_jurusan_id_foreign` (`jurusan_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `moduls`
--
ALTER TABLE `moduls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moduls_kelas_id_foreign` (`kelas_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `moduls`
--
ALTER TABLE `moduls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusans` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `moduls`
--
ALTER TABLE `moduls`
  ADD CONSTRAINT `moduls_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
