-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 04 sep. 2022 à 22:21
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce_php`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

CREATE TABLE `author` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `author` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`id`, `author`) VALUES
(1, 'J. K. Rowling'),
(2, ' J. R. R. Tolkien');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Books'),
(2, 'Movies'),
(3, 'Collector');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Infos about each customer';

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `address`, `postal_code`, `city`) VALUES
(1, 'Chuck', 'Noris', '25, Rue des canards', '38100', 'Grenoble'),
(2, 'Charlize ', 'Theron', '2, Avenue du Port', '69100', 'Lyon'),
(3, 'Ryan', 'Gosling', '5, Rue du Canal', '34400', 'Marseillan');

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
(1, '2020_11_24_145812_init_playground', 1);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `date`, `customer_id`, `number`) VALUES
(1, '2022-08-26', 1, 'order00001'),
(2, '2021-06-01', 1, 'order00002'),
(3, '2021-06-02', 2, 'order00003'),
(4, '2021-05-31', 2, 'order00004'),
(5, '2022-08-26', 2, 'order00005');

-- --------------------------------------------------------

--
-- Structure de la table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `weight` int(11) NOT NULL,
  `available` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `author_id` bigint(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `weight`, `available`, `category_id`, `quantity`, `discount`, `stock`, `author_id`) VALUES
(1, 'Le Seigneur des anneaux - Tome 1', '\"Depuis sa publication en 1954-1955, le récit des aventures de Frodo et de ses compagnons,<br>\r\n            traversant la Terre du Milieu au péril de leur vie pour détruire l\'Anneau forgé par Sauron,<br>\r\n            a enchanté des dizaines de millions de lecteurs,<br>\r\n            de tous les âges.', 8400, 'https://static.fnac-static.com/multimedia/Images/FR/NR/40/67/1e/1992512/1507-1/tsp20220827072617/Le-Seigneur-des-Anneaux.jpg', 1, 1, 1, 20, 5, 20, 0),
(2, 'Le Seigneur des anneaux - Tome 2', 'Les Deux Tours, deuxième partie du Seigneur des Anneaux, poursuit le récit des aventures de Frodo et de ses compagnons,<br> \r\n            lancés dans leur périple en Terre du Milieu.<br>\r\n            Avec Merry et Pippin, le lecteur plonge dans les batailles entre les Orques et les Cavaliers du Rohan,<br>\r\n            avant de rencontrer l\'Ent Fangorn ; avec Aragorn, Gimli et Legolas, il assiste incrédule au retour de Gandalf ;<br>\r\n            avec Frodo et Sam, il suit Gollum le long des chemi', 3599, 'https://static.fnac-static.com/multimedia/Images/FR/NR/41/67/1e/1992513/1507-1/tsp20200411070916/Le-Seigneur-des-Anneaux.jpg', 76, 1, 1, 20, 3, 20, 0),
(3, 'Le Seigneur des anneaux - Tome 3\r\n\r\n', '\"Depuis sa publication en 1954-1955, le récit des aventures de Frodo et de ses compagnons,<br>\r\n            traversant la Terre du Milieu au péril de leur vie pour détruire l\'Anneau forgé par Sauron,<br>\r\n            a enchanté des dizaines de millions de lecteurs,<br>\r\n            de tous les âges. Chef-d\'œuvre de la fantasy,<br> découverte d\'un monde imaginaire, de sa géographie, de son histoire et de ses langues,<br>\r\n            mais aussi réflexion sur le pouvoir et la mort, Le Seigneur des', 8400, 'https://static.fnac-static.com/multimedia/Images/FR/NR/40/67/1e/1992512/1507-1/tsp20220827072617/Le-Seigneur-des-Anneaux.jpg', 76, 1, 1, 20, 5, 20, 0);

-- --------------------------------------------------------

--
-- Structure de la table `sql_playground_test`
--

CREATE TABLE `sql_playground_test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sql_playground_test`
--

INSERT INTO `sql_playground_test` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Campus Numérique In The Alps', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Index pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `sql_playground_test`
--
ALTER TABLE `sql_playground_test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `author`
--
ALTER TABLE `author`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `sql_playground_test`
--
ALTER TABLE `sql_playground_test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Contraintes pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
