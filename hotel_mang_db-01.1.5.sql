-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2023 a las 00:10:07
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel_mang_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin1', '2ec10e4f7cd2159e7ea65d2454f68287ecf81251');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `checkin_date` varchar(255) NOT NULL,
  `checkout_date` varchar(255) NOT NULL,
  `total_adults` varchar(255) NOT NULL,
  `total_children` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `room_id`, `checkin_date`, `checkout_date`, `total_adults`, `total_children`, `created_at`, `updated_at`) VALUES
(6, 1, 9, '2023-06-12', '2023-06-14', '3', NULL, '2023-06-11 01:16:32', '2023-06-11 01:16:32'),
(7, 3, 11, '2023-06-11', '2023-06-14', '2', NULL, '2023-06-11 01:17:30', '2023-06-11 01:17:30'),
(8, 4, 10, '2023-06-12', '2023-06-15', '2', '2', '2023-06-11 01:18:00', '2023-06-11 01:18:00'),
(9, 5, 14, '2023-06-14', '2023-06-17', '1', NULL, '2023-06-11 01:18:19', '2023-06-11 01:18:19'),
(10, 6, 16, '2023-06-15', '2023-06-19', '2', NULL, '2023-06-11 01:18:45', '2023-06-11 01:18:45'),
(11, 2, 15, '2023-06-14', '2023-06-19', '1', NULL, '2023-06-11 03:56:15', '2023-06-11 03:56:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `password`, `mobile`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@email.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '+503 78890000', 'public/imgs/PRKquU7JnaSW6UGDGHJK7bGkBTDvAkknV7SjBc4U.png', '2023-06-10 02:50:02', '2023-06-10 09:22:56'),
(2, 'Jane Doe', 'jane@email.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '+502 4344772677', 'public/imgs/cUgHUytIdpnbCJKgyr0yaRi7AHCIprAMavN6XDJs.jpg', '2023-06-10 02:50:47', '2023-06-10 09:29:40'),
(3, 'Andrea Pichardo', 'sidney18@email.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '+54 3514570222', 'public/imgs/s7vmbVLJ8Qr3lDqa8wdd0bDRIEmWneKAJaMQ3JBL.webp', '2023-06-10 05:54:01', '2023-06-10 09:26:20'),
(4, 'Coleen Hooker', 'catherine@mail.com', 'b778d835d4c01d9e19a8507d72f25309c9f2ac89', '+1 7142404415', 'public/imgs/tvJCJ3u9SWzPPNe9apwsO9OgwYz8Rz540DrqbZx3.webp', '2023-06-10 09:22:41', '2023-06-10 09:22:41'),
(5, 'Jules Archibald', 'jules@email.com', 'dc61bd99d3208660eccbb9af9c051f76b429032e', '+503 74120000', 'public/imgs/eeylj7ckwnhetPs6F3Wdh44wsFkIZP5pzdYqJpdQ.webp', '2023-06-10 09:32:18', '2023-06-10 09:32:18'),
(6, 'Rose Collins', 'rose@mail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '+502 4344772677', 'public/imgs/Py7q9YSq7fByAPvZ91p8eyzquofxfmu5KuVjeqUs.jpg', '2023-06-10 09:33:27', '2023-06-10 09:33:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2018_08_08_100000_create_telescope_entries_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_06_06_015754_create_room_types_table', 1),
(16, '2023_06_06_021708_create_rooms_table', 1),
(17, '2023_06_06_023453_add_room_type_id_to_rooms_table', 1),
(18, '2023_06_07_195544_create_customers_table', 1),
(19, '2023_06_08_054909_add_price_column_to_room_types_table', 2),
(20, '2023_06_08_062011_create_admins_table', 3),
(21, '2023_06_08_215310_create_roomtypeimages_table', 4),
(22, '2023_06_09_175459_create_bookings_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `created_at`, `updated_at`, `room_type_id`) VALUES
(5, 'Room 1', '2023-06-10 10:30:36', '2023-06-10 10:30:36', 12),
(6, 'Room 2', '2023-06-10 10:30:48', '2023-06-10 10:30:48', 13),
(7, 'Room 3', '2023-06-10 10:30:57', '2023-06-10 10:31:29', 14),
(8, 'Room 4', '2023-06-10 10:31:46', '2023-06-10 10:31:46', 11),
(9, 'Room 5', '2023-06-10 10:32:05', '2023-06-10 10:32:05', 20),
(10, 'Room 6', '2023-06-10 10:32:19', '2023-06-10 10:32:19', 16),
(11, 'Room 7', '2023-06-10 10:32:48', '2023-06-10 10:32:48', 17),
(12, 'Room 8', '2023-06-10 10:32:56', '2023-06-10 10:32:56', 18),
(13, 'Room 9', '2023-06-10 10:33:04', '2023-06-10 10:33:04', 19),
(14, 'Room 10', '2023-06-10 10:33:41', '2023-06-10 10:33:41', 21),
(15, 'Room 11', '2023-06-10 10:33:50', '2023-06-10 10:33:50', 22),
(16, 'Room 12', '2023-06-10 10:33:58', '2023-06-10 10:33:58', 23),
(17, 'Room 13', '2023-06-10 10:34:27', '2023-06-10 10:34:27', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roomtypeimages`
--

CREATE TABLE `roomtypeimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `img_src` text NOT NULL,
  `img_alt` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roomtypeimages`
--

INSERT INTO `roomtypeimages` (`id`, `room_type_id`, `img_src`, `img_alt`, `created_at`, `updated_at`) VALUES
(8, 10, 'public/imgs/eJGWSdVmprQw0Mb9trXZcfptaNIIwKuHP6F3p8Tp.jpg', 'try 2', '2023-06-09 08:22:15', '2023-06-09 08:22:15'),
(10, 10, 'public/imgs/BXH8Hfds7HTdDApqJ26v2J1Ltivjs4EPm6e8SFDl.png', 'try 2', '2023-06-09 08:22:15', '2023-06-09 08:22:15'),
(12, 2, 'public/imgs/xBIUaXOa0TB3XBAAt0fFt6TL7H0qRKfbp7pcIE3L.jpg', 'single room', '2023-06-09 08:59:02', '2023-06-09 08:59:02'),
(13, 11, 'public/imgs/yehQDTJjxiefovNxcwRcanw64lwN4ZAQ5HUHV0B4.jpg', 'Double Room - Full Bed\'s', '2023-06-10 09:53:23', '2023-06-10 09:53:23'),
(14, 12, 'public/imgs/NjMiIocD3YcrvpJWzUX3f0NRytxkjzdBkVlEiH4p.jpg', 'Single Room - Full Bed', '2023-06-10 09:55:26', '2023-06-10 09:55:26'),
(15, 13, 'public/imgs/vBSIvMxsEfSMzhJWqFIPQzARNpoEpmVP9k2ScyV7.jpg', 'Single Room - King Bed with Balcony', '2023-06-10 09:57:48', '2023-06-10 09:57:48'),
(16, 14, 'public/imgs/55zTY1B5z5oYxF3qXJozD1qwRcJ3GbWMPtOaj5mA.jpg', 'Single Room - Suite with Jacuzzi', '2023-06-10 10:00:47', '2023-06-10 10:00:47'),
(17, 14, 'public/imgs/5gVdCZgeCoDhOzqQA2tIFY7BM4549l79TpjilxT9.jpg', 'Single Room - Suite with Jacuzzi', '2023-06-10 10:00:47', '2023-06-10 10:00:47'),
(18, 16, 'public/imgs/t5wJMWrIinn5VV2UvrlfhOlBqPj9UdkNo110I187.jpg', 'Family Room - Full Bed & Bunk Bed', '2023-06-10 10:04:31', '2023-06-10 10:04:31'),
(19, 17, 'public/imgs/vIN2E5qeH6rQhlolHrcnlD2mOhVlAExdsSiYxoF0.jpg', 'Couple\'s Room - Full Bed', '2023-06-10 10:09:09', '2023-06-10 10:09:09'),
(20, 18, 'public/imgs/xUuo1lhmysZdTmz3ZxtB9llkuoa3RWDHP0HIp1lZ.jpg', 'Couple\'s Room - King Bed with Balcony', '2023-06-10 10:12:09', '2023-06-10 10:12:09'),
(21, 19, 'public/imgs/MU0oB9vjLA4aLysmT8Wbw3JOr8XciUr5iKvNlLT9.jpg', 'Couple\'s Room - Suite with Jacuzzi', '2023-06-10 10:14:17', '2023-06-10 10:14:17'),
(22, 19, 'public/imgs/8d2ejQrNF51Mj2hTcgZNe0DIN1a03FYY1OqE7pkb.jpg', 'Couple\'s Room - Suite with Jacuzzi', '2023-06-10 10:14:17', '2023-06-10 10:14:17'),
(23, 20, 'public/imgs/eyaK1NT7ck4SGcpQYx2bY3ZwW2D4LVE619cabm0P.jpg', 'Triple Room - Full Bed\'s', '2023-06-10 10:16:18', '2023-06-10 10:16:18'),
(24, 21, 'public/imgs/Q9yPa4293wnMJY5W34Er6TiZrK2ZQTaOVUcIOlUz.jpg', 'Single Traveler Room - Full Bed', '2023-06-10 10:18:58', '2023-06-10 10:18:58'),
(25, 22, 'public/imgs/VlcoitrKhu1p5t02jM58I3TNSiiHu1iYxLBVBwZM.jpg', 'Single Traveler Room - King Bed', '2023-06-10 10:20:26', '2023-06-10 10:20:26'),
(26, 23, 'public/imgs/Hu4Iy9HEn9cCINyWxUDGqNsrp3pHNQoHZNf9X61y.jpg', 'Double Traveler Room - Full Bed\'s', '2023-06-10 10:21:52', '2023-06-10 10:21:52'),
(27, 24, 'public/imgs/alMmQDMiXkB3q7zkQUPZwbz16WTOIDiSoFju1vWG.jpg', 'Triple Traveler Room - Full Bed\'s', '2023-06-10 10:23:43', '2023-06-10 10:23:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `room_types`
--

INSERT INTO `room_types` (`id`, `title`, `detail`, `created_at`, `updated_at`, `price`) VALUES
(11, 'Double Room - Full Bed\'s', 'Two Full Bed\'s - Sleeps two people and up to four, with $13 extra charge per person.\r\nAll our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 09:53:23', '2023-06-10 09:53:23', '50'),
(12, 'Single Room - Full Bed', 'One Full Bed - Sleeps one person.\r\nAll our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 09:55:26', '2023-06-10 09:55:26', '30'),
(13, 'Single Room - King Bed with Balcony', 'One King Bed - Sleeps one person. All our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 09:57:48', '2023-06-10 10:12:26', '40'),
(14, 'Single Room - Suite with Jacuzzi', 'One King Bed and Jacuzzi in private bathroom - Sleeps one person. \r\nAll our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 10:00:47', '2023-06-10 10:12:36', '50'),
(16, 'Family Room - Full Bed & Bunk Bed', 'One Full Bed and One Bunk Bed - Sleeps two adults and two children\'s or up to four people.\r\nAll our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 10:04:31', '2023-06-10 10:04:31', '65'),
(17, 'Couple\'s Room - Full Bed', 'One Full Bed - Sleeps two people.\r\n All our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 10:09:09', '2023-06-10 10:09:09', '40'),
(18, 'Couple\'s Room - King Bed with Balcony', 'One King Bed - Sleeps two persons. All our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 10:12:09', '2023-06-10 10:12:09', '50'),
(19, 'Couple\'s Room - Suite with Jacuzzi', 'One King Bed and Jacuzzi in private bathroom - Sleeps two persons. All our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 10:14:17', '2023-06-10 10:14:17', '60'),
(20, 'Triple Room - Full Bed\'s', 'Three Full Bed\'s - Sleeps three people and up to four, with $13 extra charge per person. All our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 10:16:18', '2023-06-10 10:16:55', '65'),
(21, 'Single Traveler Room - Full Bed', 'One Full Bed - Sleeps one person. All our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 10:18:58', '2023-06-10 10:18:58', '25'),
(22, 'Single Traveler Room - King Bed', 'One King Bed - Sleeps one person. All our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 10:20:26', '2023-06-10 10:20:26', '28'),
(23, 'Double Traveler Room - Full Bed\'s', 'Two Full Bed\'s - Sleeps two people. All our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 10:21:52', '2023-06-10 10:21:52', '40'),
(24, 'Triple Traveler Room - Full Bed\'s', 'Three Full Bed\'s - Sleeps three persons. All our rooms are equipped with air conditioning, cable TV and private bathroom (Includes your stay and access to the swimming pool).', '2023-06-10 10:23:43', '2023-06-10 10:23:43', '55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roomtypeimages`
--
ALTER TABLE `roomtypeimages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `roomtypeimages`
--
ALTER TABLE `roomtypeimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
