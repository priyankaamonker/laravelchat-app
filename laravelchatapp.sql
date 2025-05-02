-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 02, 2025 at 12:34 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelchatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_jane@yahoo.com|127.0.0.1', 'i:2;', 1746141606),
('laravel_cache_jane@yahoo.com|127.0.0.1:timer', 'i:1746141606;', 1746141606);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '71a5eb97-96aa-46e4-af8f-3580bccc78f2', 'database', 'default', '{\"uuid\":\"71a5eb97-96aa-46e4-af8f-3580bccc78f2\",\"displayName\":\"App\\\\Events\\\\GotMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\GotMessage\\\":1:{s:7:\\\"message\\\";a:4:{s:2:\\\"id\\\";i:7;s:7:\\\"user_id\\\";i:2;s:4:\\\"text\\\";s:13:\\\"Hi John again\\\";s:4:\\\"time\\\";s:21:\\\"01 May 2025, 23:20:03\\\";}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1746141605,\"delay\":null}', 'Error: Undefined constant \"App\\Events\\App\" in /Applications/MAMP/htdocs/projects/laravelchatapp/app/Events/GotMessage.php:36\nStack trace:\n#0 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Broadcasting/BroadcastEvent.php(80): App\\Events\\GotMessage->broadcastOn()\n#1 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#3 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Container/Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Container\\Container->call(Array)\n#7 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(169): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():129}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():120}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():167}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(391): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(334): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#23 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Container/Container.php(754): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call(Array)\n#27 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/symfony/console/Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/symfony/console/Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/symfony/console/Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 /Applications/MAMP/htdocs/projects/laravelchatapp/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 /Applications/MAMP/htdocs/projects/laravelchatapp/artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-05-02 06:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hi this is Jane', '2025-05-02 05:26:05', '2025-05-02 05:26:05'),
(2, 1, 'How are you', '2025-05-02 05:26:13', '2025-05-02 05:26:13'),
(3, 2, 'Hi this is John', '2025-05-02 05:26:55', '2025-05-02 05:26:55'),
(4, 2, 'nice to meet you Jane', '2025-05-02 05:27:05', '2025-05-02 05:27:05'),
(5, 3, 'Perl here', '2025-05-02 05:35:48', '2025-05-02 05:35:48'),
(6, 3, 'hi guys', '2025-05-02 05:35:56', '2025-05-02 05:35:56'),
(7, 2, 'Hi John again', '2025-05-02 06:20:03', '2025-05-02 06:20:03'),
(8, 2, 'Hi agan', '2025-05-02 07:34:00', '2025-05-02 07:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_01_191914_create_messages_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('309Mrz4yxWj3JQpsYQJ9o7j2dRu56nLeHAikxMkl', 3, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Safari/605.1.15', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZmRWZzZMWDlHcHhKREd6ZVJ0MnRxYWpYeW1ieFlTaW5qWHNXSmxPZSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvbWUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1746140515),
('fXBEmB3e2CIZ74GJScgdxCVyxN4OBABUEOZIIwbH', 2, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia1NHU1VwYzZmU0tTek03a1B5S3VLMmxNcjRmQmFSbW5OcTNReWRZUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvbWUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvbWUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1746146041),
('uNlQqW8Rqrcj0lX9M7hL0HJePiqQ2NwhywKxnrqg', 2, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Safari/605.1.15', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSU9ZUWI0MHhiOEdwNDN0M1V4eGF3NXY1QmZHVlVsUUxqaGpvRW5wWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NDYxNDE1ODY7fX0=', 1746146041);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jane', 'jane@yhoo.com', NULL, '$2y$12$kF4vD0j05o72wH5mHzTgx.9cFmiD9pCPkClM7rlF/.o4x65ZPRMCO', NULL, '2025-05-02 05:25:58', '2025-05-02 05:25:58'),
(2, 'john', 'john@yahoo.com', NULL, '$2y$12$VRC.a2bvvpxOHcYjvSauT.GnntNjz9DyAwTzlcjj5aNLCzKZDKtWi', NULL, '2025-05-02 05:26:41', '2025-05-02 05:26:41'),
(3, 'Perl', 'perl@yahoo.com', NULL, '$2y$12$RwbketqfO5RBg31T/OmiIuyDEFcu/bT0l2Ro1KhYSW6IgjLHhcOYG', NULL, '2025-05-02 05:35:42', '2025-05-02 05:35:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
