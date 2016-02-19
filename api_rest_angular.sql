-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-02-2016 a las 10:52:32
-- Versión del servidor: 5.5.47-0ubuntu0.14.04.1
-- Versión de PHP: 5.6.17-3+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `api_rest_angular`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jokes`
--

CREATE TABLE IF NOT EXISTS `jokes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `jokes`
--

INSERT INTO `jokes` (`id`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Aliquam qui id quas molestiae aut magnam. Quod quidem quos sint et maiores. Et ut ut sint cum quis odit et. Sint ratione consectetur vero molestiae hic doloribus.', 2, '2016-02-15 23:45:46', '2016-02-15 23:45:46'),
(2, 'Reprehenderit ex unde nihil itaque. Voluptatem voluptatum ex dicta. Unde autem est quia doloribus asperiores.', 2, '2016-02-15 23:45:46', '2016-02-15 23:45:46'),
(3, 'Labore accusamus nemo neque dolores. Dolores sunt accusantium qui itaque ea sit.', 2, '2016-02-15 23:45:46', '2016-02-15 23:45:46'),
(4, 'Ipsa excepturi perferendis velit reiciendis. Est rerum et incidunt quidem in sed. Ipsa deleniti et dolor fugit. Veritatis eius et minima reiciendis dolorem.', 5, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(5, 'Suscipit facere voluptatem ex distinctio. Aliquam dignissimos optio qui impedit quaerat saepe quaerat. Assumenda est ratione voluptates similique fugiat vitae quibusdam. Voluptatum fugit deleniti eius delectus enim quia libero.', 2, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(6, 'Perferendis consequuntur quia at. Qui mollitia praesentium sunt enim rem temporibus. Perspiciatis reiciendis iure eos quas perspiciatis est sequi.', 4, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(7, 'Voluptate eos dolorem culpa sed veniam. Ut laudantium est dolores mollitia impedit rerum magnam. Aperiam aut cumque aut quasi aut adipisci est laudantium.', 3, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(8, 'Illum non sit animi earum recusandae voluptates. Qui impedit sed incidunt architecto velit sit. Incidunt voluptatem excepturi aut sit suscipit alias reprehenderit.', 5, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(9, 'Qui laboriosam voluptas totam porro sit. Sed quo et doloribus voluptas exercitationem. Culpa nemo cum dolores suscipit eum aut dolor.', 4, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(10, 'Praesentium quo amet esse facilis. Ex at autem ipsam et. Consectetur adipisci veritatis occaecati pariatur eaque praesentium. Vel rerum ut placeat architecto ipsa.', 1, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(11, 'Rerum nam quis facere molestiae sapiente doloribus. Minima ducimus voluptate libero velit.', 4, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(12, 'Officia nisi tenetur animi doloremque quis. Quia veritatis est officiis saepe perspiciatis magni. Aperiam repudiandae aliquam voluptatum id. Ea aut omnis quia rerum rerum suscipit eos.', 5, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(13, 'Illo cupiditate et cupiditate illum ad. Facere voluptate voluptates tempore possimus ad. Et et et qui repellendus ut fugit commodi. Facilis modi blanditiis distinctio similique.', 5, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(14, 'Temporibus beatae sed aut unde quisquam repudiandae impedit. Praesentium quos eos in voluptatibus. Itaque ducimus architecto dolore cum mollitia. Possimus alias quia expedita non.', 3, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(15, 'At tenetur delectus velit mollitia aspernatur sunt ea ut. Vero dolorem rerum eum beatae. Aut perspiciatis aut autem.', 3, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(16, 'Et a provident ipsum architecto. Quo voluptatibus hic ut voluptates voluptatem voluptas. Id autem deserunt enim modi sit dolore ullam. Sunt iusto quo fugiat iure iusto voluptatem.', 3, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(17, 'Eaque aut beatae officia dolore hic commodi. Et in nisi expedita assumenda iusto. Quia vitae temporibus sed ut eos sit. Ad cupiditate quibusdam velit omnis porro.', 4, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(18, 'Et tenetur voluptatibus sit quod. Fugiat aut ea quibusdam est. Totam mollitia est fugit ut excepturi voluptates. Culpa officiis et voluptatem veritatis eius.', 1, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(19, 'Qui dolore et dolore. Aspernatur quasi et sequi dicta autem dolorum sed autem. Adipisci nihil saepe tempora facilis possimus sit eius. Voluptatem qui magni sed sint.', 4, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(20, 'Deserunt voluptatibus dolor eos reiciendis ipsam. Qui quia voluptatem aut ipsam. Natus est non ut iste excepturi ut. Est qui beatae dolore eius sunt laudantium nesciunt.', 4, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(22, 'Odit harum fugiat nam quis qui aspernatur. In nobis ut quae omnis. Similique ex est autem eos dicta aut. Ab repellat temporibus voluptates facere rerum id at.', 4, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(23, 'Sint officia ut qui modi recusandae et. Voluptatibus dolorem amet aspernatur voluptas quo et. Recusandae laborum reprehenderit quia omnis. Aut exercitationem non atque odit voluptas delectus.', 3, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(24, 'Ipsam eum ut dicta quidem minima iure eos quasi. Omnis similique voluptates qui maiores. A qui pariatur maxime ducimus.', 5, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(25, 'Earum non et ut enim. Quam et ducimus magnam animi omnis. Ut distinctio eius odit. Ea delectus ut et.', 4, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(26, 'Tempora sit laboriosam iste in quia nesciunt. Enim consequatur enim est et dolore. Et molestias qui quia fugit voluptas veritatis praesentium.', 4, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(27, 'Est ab consequuntur incidunt rem debitis laboriosam vitae. Eos sed asperiores ipsa enim ut. Quis eveniet perferendis eveniet iusto rerum. Laborum rerum eos voluptatem.', 1, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(28, 'Ut aut et ut debitis error rem. Adipisci quidem odio provident rerum qui reprehenderit corrupti. Optio quam nobis quia iure similique dolor quidem sequi. Quidem sint nam non possimus rerum.', 1, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(29, 'Eligendi repellendus sed provident earum consequatur. Error aut libero ea nam recusandae cum. Dolorem provident illum at. Placeat inventore cum culpa exercitationem.', 2, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(30, 'Ab in sed alias sint. Ipsam rem dignissimos quis quasi minus deserunt sint aut. Accusantium saepe ut reprehenderit. Velit aliquam et est qui soluta eos. Rem animi nemo iusto id illum.', 4, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(31, 'New Body Updated', 2, '2016-02-16 02:20:05', '2016-02-16 02:28:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_12_205232_create_jokes_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bert.Conroy', 'Smitham.Libbie@Krajcik.com', '$2y$10$4Uap2YALQlZcd7YLhoDgOelX4MBP26hSvG5TSJXkc1pE.XYqoYshu', NULL, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(2, 'Afton56', 'Price.Adriel@gmail.com', '$2y$10$jklBy/yhUTNv6BCQ5qPeleEAHpIW4kXSKFtY4FRaUjWmXYtlqectK', NULL, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(3, 'Connelly.Armand', 'Brionna40@hotmail.com', '$2y$10$vmCu.d5pd816Y/ju.BgqP.4aMiUpSIKGtYD9Dw6fm/QVYQJQI2T3a', NULL, '2016-02-15 23:45:47', '2016-02-15 23:45:47'),
(4, 'eSatterfield', 'Heathcote.Giovani@Muller.org', '$2y$10$NnH9C7LFHXLdWP623jHYKOtRCJ9iatC7yVbcmq.jO2pwLOc1wdw8a', NULL, '2016-02-15 23:45:48', '2016-02-15 23:45:48'),
(5, 'Schamberger.Adaline', 'admin@gmail.com', '$2y$10$cbuof6dPMRhNhx.klmvzHeRiGBnL3.gLwjc7F/TmikDhp993QBCLm', NULL, '2016-02-15 23:45:48', '2016-02-15 23:45:48');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
