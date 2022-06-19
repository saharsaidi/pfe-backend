-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 19 juin 2022 à 14:12
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbc`
--

-- --------------------------------------------------------

--
-- Structure de la table `assistances`
--

CREATE TABLE `assistances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `formation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `niveau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `assistances`
--

INSERT INTO `assistances` (`id`, `formation_id`, `user_id`, `niveau`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '3', '2022-01-12 11:18:17', '2022-06-19 08:05:23'),
(2, 6, 1, '0', '2022-02-12 11:21:35', '2022-06-19 08:25:00'),
(3, 4, 2, '2', '2022-06-12 11:45:06', '2022-06-19 08:06:50'),
(5, 2, 2, '1', '2022-04-19 08:07:19', '2022-06-19 08:07:19'),
(6, 6, 2, '0', '2022-06-19 08:09:11', '2022-06-19 08:09:11'),
(7, 5, 3, '2', '2022-05-19 08:19:10', '2022-06-19 10:02:28'),
(8, 6, 3, '0', '2022-09-19 08:19:17', '2022-06-19 08:19:17');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `date_debut`, `date_fin`, `titre`, `description`, `image`, `created_at`, `updated_at`, `theme_id`) VALUES
(2, '2022-05-05', '2022-05-08', 'Flutter', 'a..z', 'formations/89IzX2L8M6L3IlAzLH2ru3qLkG8xAFLiUNRJ9J3t.png', '2022-06-04 06:31:21', '2022-06-11 11:09:10', 1),
(3, '2021-10-31', '2022-12-31', 'aa', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here\'s', 'formations/lk5NL83HiUYVIyIioR0bImVkHbVtH0qXsXn8JxjB.png', '2022-06-11 09:17:39', '2022-06-11 10:18:24', 1),
(4, '2022-06-16', '2022-06-26', 'MERN js', 'test', 'formations/EnyK9rc2EheqwPzWJ7tXEcHHIRiwMj3ymfGRbwdt.jpg', '2022-06-11 09:26:25', '2022-06-11 10:08:01', 1),
(5, '2022-12-31', '2022-12-31', 'angular', 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\n\n\nWhat is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'formations/yra4WOTUGzKFHz2qVkDBogTZKamWHplmq953RB5f.png', '2022-06-11 10:08:55', '2022-06-12 10:04:19', 1),
(6, '2022-06-17', '2022-11-30', 'test', 'test', 'formations/NkESnmaFWekh9MHXVv8YkkFYgpcuX5c4cOlRKZpu.png', '2022-06-11 10:17:10', '2022-06-11 10:17:10', 1);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2022_05_05_120748_create_salarie_table', 1),
(28, '2022_05_19_101416_create_poste_table', 1),
(29, '2022_06_04_072759_create_themes_table', 2),
(30, '2022_06_04_073153_create_formation_table', 3),
(31, '2022_06_04_073219_create_occuper_table', 3),
(32, '2022_06_04_073247_create_assister_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `occupations`
--

CREATE TABLE `occupations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `poste_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `occupations`
--

INSERT INTO `occupations` (`id`, `user_id`, `poste_id`, `titre`, `created_at`, `updated_at`) VALUES
(2, 2, 13, 'ttt', '2022-06-18 08:12:10', '2022-06-18 08:19:20'),
(3, 3, 13, 'test2', '2022-06-18 08:12:53', '2022-06-18 08:12:53'),
(4, 2, 14, 'ok', '2022-06-18 08:19:11', '2022-06-18 08:19:11');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `postes`
--

CREATE TABLE `postes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `postes`
--

INSERT INTO `postes` (`id`, `title`, `description`, `published`, `created_at`, `updated_at`) VALUES
(13, 'test', 'test', NULL, '2022-06-19 07:33:03', '2022-06-19 07:33:03'),
(14, 'poste 2', 'test', NULL, '2022-06-19 08:55:39', '2022-06-19 08:55:39');

-- --------------------------------------------------------

--
-- Structure de la table `salarie`
--

CREATE TABLE `salarie` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom_prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_de_naissance` date NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `salaire` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `salarie`
--

INSERT INTO `salarie` (`id`, `nom_prenom`, `date_de_naissance`, `adresse`, `email`, `phone`, `salaire`, `created_at`, `updated_at`) VALUES
(1, 'sahar saidi', '2000-06-11', 'rue jandouba sousse', 'sahar.saidi1993@gmail.com', 21645351, 6001, '2022-06-07 08:29:27', '2022-06-12 09:34:06');

-- --------------------------------------------------------

--
-- Structure de la table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `themes`
--

INSERT INTO `themes` (`id`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 'test', 'najlasahar', '2022-06-04 06:28:08', '2022-06-04 06:28:08'),
(3, '2', '2', '2022-06-19 07:38:13', '2022-06-19 07:38:13');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_naissance` date NOT NULL DEFAULT current_timestamp(),
  `phone` int(11) NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salaire` float NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `date_naissance`, `phone`, `adresse`, `salaire`, `role`, `education`, `image`) VALUES
(1, 'sahar', 'sahar.saidi1993@gmail.com', NULL, '$2y$10$/CdLt0kqAI4sj8dqJ/2EL.U6TFxjbr0ZGi0xngyOtJXwzAoiTWk5i', NULL, '2022-06-01 19:54:02', '2022-06-19 10:01:37', '2022-06-04', 121211221, 'Sousse , Nfidha', 0, 'drh', '* 2022 Diplome Nationale \n*2019 Licence Appliquee', 'utilisateurs/DGVMxURCyhG8Vx8W0eW6pdmseQGQ8VyhcSF2Wgvu.png'),
(2, 'Mariem Mohamedj', 'mariem@gmail.com', NULL, '$2y$10$.FNho3TQoqkV7EsO1VypbefP1I5stiZlodn0lvzCWl3uUp6AwvkQi', NULL, '2022-06-12 11:08:19', '2022-06-18 10:00:48', '2022-06-12', 25252525, 'sousse', 1200, 'salarie', '* 2019 - diplome nationale en licence appliquée\n\n* 2021 diplome nationale en mastère', ''),
(3, 'ali aa', 'ali12@gmail.com', NULL, '$2y$10$.jS1nO9Ho4Xnx3MwNt7Ga.9YhN5lgZeSqcmjd2ujj9fVyiM8uhEuS', NULL, '2022-06-13 17:39:20', '2022-06-19 09:58:22', '2022-06-13', 24789123, 'mahdia', 800, 'salarie', NULL, 'utilisateurs/EscpmLZ31sWj16dZpJnurdH3zCNLiIe1uzsPQuWZ.png'),
(4, 'amir ali', 'amir12@gmail.com', NULL, '$2y$10$Lh8C.H/LVj0.5YvdOfqFCO3rRVoRiQL14UW9pBpzCA/SReHkRQO.W', NULL, '2022-06-13 17:42:13', '2022-06-13 17:42:13', '2022-06-13', 97304890, 'hammamat', 1000, 'manager', NULL, '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `assistances`
--
ALTER TABLE `assistances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `postes`
--
ALTER TABLE `postes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `salarie`
--
ALTER TABLE `salarie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `assistances`
--
ALTER TABLE `assistances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `postes`
--
ALTER TABLE `postes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
