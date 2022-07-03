-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 03 juil. 2022 à 13:06
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `assistances`
--

INSERT INTO `assistances` (`id`, `formation_id`, `user_id`, `niveau`, `created_at`, `updated_at`, `score`) VALUES
(3, 4, 2, '2', '2022-06-12 11:45:06', '2022-06-19 08:06:50', NULL),
(5, 2, 2, '1', '2022-04-19 08:07:19', '2022-06-19 08:07:19', NULL),
(6, 6, 2, '1', '2022-06-19 08:09:11', '2022-06-22 19:23:13', NULL),
(7, 5, 3, '0', '2022-05-19 08:19:10', '2022-07-03 07:54:36', NULL),
(8, 6, 3, '0', '2022-09-19 08:19:17', '2022-06-22 19:23:30', NULL),
(9, 4, 3, '1', '2022-06-22 19:14:19', '2022-07-03 08:27:34', 2),
(11, 5, 7, '0', '2022-06-22 20:24:25', '2022-06-22 20:24:25', NULL),
(12, 4, 7, '0', '2022-06-22 20:24:43', '2022-06-22 20:24:43', NULL),
(13, 2, 3, '0', '2022-07-03 08:18:07', '2022-07-03 08:18:07', NULL);

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
(2, '2022-05-05', '2022-05-08', 'React Native', 'React Native est un framework d\'applications mobiles open source créé par Facebook2. Il est utilisé pour développer des applications pour Android 3, iOS et UWP 4 en permettant aux développeurs d’utiliser React avec les fonctionnalités natives de ces plateformes.', 'formations/0KktduWdtFyhUlz9eUTUcxtqcPS3VvDfloloAQaM.png', '2022-06-04 06:31:21', '2022-06-22 14:03:37', 4),
(3, '2021-10-31', '2022-12-31', 'IONIC', 'Ionic est un framework1 open-source créé en 2013 par Max Lynch, Ben Sperry, et Adam Bradley. Deux versions distinctes sont disponibles, incompatibles entre elles : la première version, 1.3.3, se base sur AngularJS 1.5.3 tandis que la version 3.5.0 se base sur Angular 4.1.3 et TypeScript.', 'formations/1snk7OVlhePeTE9Ea94s8iPRhmCxdcgTgYyBKSAW.png', '2022-06-11 09:17:39', '2022-06-22 14:06:04', 4),
(4, '2022-06-16', '2022-06-26', 'laravel', 'Laravel est un framework web open-source écrit en PHP1 respectant le principe modèle-vue-contrôleur et entièrement développé en programmation orientée objet.', 'formations/WkTuRTmo4XMGH1iCUytAsBYLxh5UyHIKJjSAsQ4n.png', '2022-06-11 09:26:25', '2022-06-22 14:01:11', 3),
(5, '2022-06-14', '0000-00-00', 'angular', 'est un framework côté client, open source, basé sur TypeScript', 'formations/r6bVsB0Lwt87mFLhdrYQ4FZfd9HxJk26ycxhKOEB.svg', '2022-06-11 10:08:55', '2022-07-03 08:15:55', 1),
(6, '2022-06-17', '2022-11-30', 'Flutter', 'Flutter est un kit de développement logiciel (SDK) d\'interface utilisateur open-source créé par Google. Il est utilisé pour développer des applications pour Android, iOS, Linux, Mac, Windows, Google Fuchsia et le web à partir d\'une seule base de code.', 'formations/AxCXYHtG6t3UHM8i6WzfMdMhOO1Uy8BNnBDRygxT.png', '2022-06-11 10:17:10', '2022-06-22 13:58:32', 4);

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
(32, '2022_06_04_073247_create_assister_table', 3),
(33, '2022_06_25_094802_create_tests_table', 4),
(34, '2022_06_25_094824_create_questions_table', 4);

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
(5, 7, 16, 'Projet gestion RH', '2022-06-22 15:46:24', '2022-06-22 15:46:24'),
(6, 7, 17, 'Projet Plateforme Scolaire', '2022-06-22 15:47:22', '2022-06-22 15:47:22'),
(7, 2, 19, 'Application Mobile Sportive', '2022-06-22 15:48:11', '2022-06-22 15:48:11'),
(8, 6, 17, 'application gestion de stock', '2022-06-22 19:09:47', '2022-06-22 19:09:47'),
(9, 3, 19, 'application gestion de formation', '2022-06-22 19:18:23', '2022-06-22 19:18:23');

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
(15, 'flutter dev', 'Flutter est un kit de développement logiciel (SDK) d\'interface utilisateur open-source créé par Google. Il est utilisé pour développer des applications pour Android, iOS, Linux, Mac, Windows, Google Fuchsia et le web à partir d\'une seule base de code.', 1, '2022-06-20 20:09:39', '2022-06-20 20:09:54'),
(16, 'laravel developpeur', 'Laravel est un framework web open-source écrit en PHP1 respectant le principe modèle-vue-contrôleur et entièrement développé en programmation orientée objet.', 1, '2022-06-20 20:10:37', '2022-06-20 20:10:47'),
(17, 'symfony developpeur', 'Symfony est un ensemble de composants PHP ainsi qu\'un framework MVC libre écrit en PHP. Il fournit des fonctionnalités modulables et adaptables qui permettent de faciliter et d’accélérer le développement d\'un site web.', 1, '2022-06-20 20:11:43', '2022-06-20 20:11:52'),
(18, 'Angular developpeur', 'Angular est un framework côté client, open source, basé sur TypeScript', NULL, '2022-06-20 20:12:22', '2022-06-20 20:12:22'),
(19, 'IONIC Developpeur', 'Ionic est un framework1 open-source  se base sur AngularJS 1.5.3 tandis que la version 3.5.0 se base sur Angular 4.1.3 et TypeScript.', 1, '2022-06-22 14:10:41', '2022-06-22 14:11:25');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse_juste` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `nom_question`, `reponse1`, `reponse2`, `reponse3`, `reponse4`, `reponse_juste`, `test_id`, `created_at`, `updated_at`) VALUES
(2, 'quelle est la derniere version d\'angular', '17', '15', '13', '11', 3, 3, '2022-06-25 09:21:38', '2022-06-25 09:21:38'),
(3, 'quelle est la derniere version d\'angular', 'version 17', 'version 15', 'version13', 'version 11', 3, 3, '2022-06-25 09:22:09', '2022-06-25 09:22:09'),
(4, 'quelle est la derniere version d\'angular', '17', '15', '13', '11', 2, 3, '2022-06-25 09:34:40', '2022-06-25 09:34:40'),
(5, 'Quelle est la derniere version d\'angular', '17', '15', '13', '11', 1, 3, '2022-06-25 09:36:02', '2022-06-25 09:36:53'),
(6, 'angular', 'framework', 'biblio', 'test', 'php', 1, 1, '2022-07-03 06:55:47', '2022-07-03 06:55:47'),
(7, 'derniere version d angular', '11', '12', '13', '14', 1, 1, '2022-07-03 06:56:39', '2022-07-03 06:56:39'),
(8, 'framework', 'js', 'ts', 'es', 'twig', 2, 1, '2022-07-03 06:59:21', '2022-07-03 06:59:21'),
(9, 'question test 4', 'reponse 1', 'rep 2', 'rep 3', 'rep 4', 4, 1, '2022-07-03 07:01:07', '2022-07-03 07:01:07'),
(10, 'question 5', 'test 5.1', 'test 5.2', 'test 5.3', 'test 5.4', 1, 1, '2022-07-03 07:01:25', '2022-07-03 07:01:25'),
(11, 'test 6', '1', '2', '4', '5', 4, 1, '2022-07-03 07:24:19', '2022-07-03 07:24:19');

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
-- Structure de la table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_test` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score_niv1` int(11) NOT NULL,
  `score_niv2` int(11) NOT NULL,
  `score_niv3` int(11) NOT NULL,
  `formation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tests`
--

INSERT INTO `tests` (`id`, `nom_test`, `score_niv1`, `score_niv2`, `score_niv3`, `formation_id`, `created_at`, `updated_at`) VALUES
(1, 'test 11', 2, 4, 5, 4, '2022-06-25 08:55:50', '2022-07-03 08:34:42'),
(3, 'test 3', 10, 14, 18, 5, '2022-06-25 09:14:27', '2022-06-25 09:15:54');

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
(1, 'développement web Frontend2', 'html, CSS, Bootstrap, JavaScript', '2022-06-04 06:28:08', '2022-06-25 07:37:17'),
(3, 'développement web Backend', 'Php', '2022-06-19 07:38:13', '2022-06-22 13:30:31'),
(4, 'Développement Mobile', 'React Native, Ionic, Flutter, JQuery Mobile', '2022-06-22 13:52:46', '2022-06-22 13:52:46');

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
(1, 'sahar DRH', 'sahar.saidi1993@gmail.com', NULL, '$2y$10$/CdLt0kqAI4sj8dqJ/2EL.U6TFxjbr0ZGi0xngyOtJXwzAoiTWk5i', NULL, '2022-06-01 19:54:02', '2022-06-20 10:34:55', '2022-06-04', 21645350, 'sousse rue d envornnement nfidha', 0, 'drh', '* 2022 Diplome Nationale master pro\n*2019 Licence Appliquee reseau', 'utilisateurs/jG8fQbpb9am1eK2nw2xXzR33kEg5rsL5omyyR36G.jpg'),
(2, 'Mariem Mohamedj', 'mariem@gmail.com', NULL, '$2y$10$.FNho3TQoqkV7EsO1VypbefP1I5stiZlodn0lvzCWl3uUp6AwvkQi', NULL, '2022-06-12 11:08:19', '2022-06-25 07:36:14', '2005-06-11', 25252525, 'sousse', 902, 'salarie', '* 2019 - diplome nationale en licence appliquée\n\n* 2021 diplome nationale en mastère', 'utilisateurs/oQUhnJYM6X4CcYO4F8ouukVbDN0yWrMV1EkkE62O.jpg'),
(3, 'ali sd', 'ali12@gmail.com', NULL, '$2y$10$.jS1nO9Ho4Xnx3MwNt7Ga.9YhN5lgZeSqcmjd2ujj9fVyiM8uhEuS', NULL, '2022-06-13 17:39:20', '2022-06-25 07:36:27', '1999-06-13', 24789123, 'mahdia tunisie', 800, 'salarie', '2017: licence en informatique\n2014:bac informatique', 'utilisateurs/0lpUdoXPUSQYBt5RwIVW7L7qwGBNGuWKC2OEArnE.jpg'),
(4, 'amir ali', 'amir12@gmail.com', NULL, '$2y$10$Lh8C.H/LVj0.5YvdOfqFCO3rRVoRiQL14UW9pBpzCA/SReHkRQO.W', NULL, '2022-06-13 17:42:13', '2022-06-13 17:42:13', '2022-06-13', 97304890, 'hammamat', 1000, 'manager', NULL, ''),
(6, 'aymen qr', 'aymen12@gmail.com', NULL, '$2y$10$c.SFb/TqyRgcCSxI9NPBcuiURwB1lgYx3NirzMQuoYeO9DZLYNrWy', NULL, '2022-06-20 19:45:43', '2022-06-20 19:45:43', '2022-06-20', 24789129, 'hammamat', 700, 'salarie', NULL, 'utilisateurs/ot19deNCm5X5AafWjYN0Oxm53gj64rGBmTzuUpTf.jpg'),
(7, 'amina Rhouma', 'amina12@gmail.com', NULL, '$2y$10$Zu5dfoZEQlJ.ZtuAmE5x4OeF0JTpIIKbsaMgsdMYyuTNZmrAE/Qlm', NULL, '2022-06-20 20:02:05', '2022-06-20 20:16:18', '2022-06-21', 21645359, 'nabeul tunisie', 700, 'salarie', '2019: master génie logiciel\n2015:licence informatique', 'utilisateurs/pT3ZhdTUkI9szCNxLkOY1RqQ2ir4G1GxDexvLbTh.jpg');

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
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `salarie`
--
ALTER TABLE `salarie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tests`
--
ALTER TABLE `tests`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `postes`
--
ALTER TABLE `postes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
