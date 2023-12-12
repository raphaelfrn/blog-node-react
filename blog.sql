-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 déc. 2023 à 20:04
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `cat` varchar(40) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `desc`, `img`, `uid`, `cat`, `date`) VALUES
(1, 'ART 1', '<h1><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.&nbsp;</span></h1><p><br></p><p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Sed dui purus, facilisis at lorem quis, fringilla malesuada massa. Fusce lobortis elit id gravida euismod. Aliquam erat volutpat. Quisque sed orci nec turpis convallis consequat. Mauris sollicitudin vel lacus non venenatis. Vestibulum vel luctus augue, nec facilisis ligula. Praesent sapien sem, mollis sed feugiat sit amet, convallis in leo. Vivamus sit amet congue metus. Curabitur posuere a neque vitae venenatis. In tellus turpis, laoreet et viverra sit amet, molestie vitae elit. Morbi eget vehicula est, faucibus commodo lacus.</strong></p><p><br></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\"><span class=\"ql-cursor\">﻿</span>Praesent tempus efficitur sapien, et malesuada ante volutpat nec. Sed lobortis dignissim volutp', '17024060892401.jpg', 1, 'art', '2023-12-12 19:34:49'),
(2, 'ART 2', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Praesent tempus efficitur sapien, et malesuada ante volutpat nec. Sed lobortis dignissim volutpat. Mauris varius rhoncus gravida. Maecenas elementum ultricies mauris, et interdum metus vehicula vel. Nullam tempus est sed sem eleifend varius. Ut fermentum, erat ut volutpat vulputate, diam nisi dictum orci, sit amet iaculis felis turpis elementum ex. Aenean sapien ipsum, feugiat molestie mi nec, fringilla fermentum enim. Integer et ex a neque facilisis scelerisque nec id sapien. Morbi quis urna fringilla, maximus massa a, pretium erat. Sed sit amet orci in libero consectetur auctor in at turpis.</span></p>', '17024061256922.jpg', 1, 'art', '2023-12-12 19:35:25'),
(3, 'SCIENCE 1', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Quisque at ornare nibh, tristique malesuada urna. Duis vitae elit vel tellus aliquam elementum. Maecenas ornare fringilla orci ac eleifend. In hac habitasse platea dictumst. Nunc gravida tincidunt tortor ut semper. Morbi ultricies turpis et mollis pharetra. Aliquam vel sollicitudin lectus. Vivamus tempus velit nec nibh tincidunt consectetur.</span></p>', '17024061454783.jpg', 1, 'science', '2023-12-12 19:35:45'),
(4, 'SCIENCE 2', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Quisque at ornare nibh, tristique malesuada urna. Duis vitae elit vel tellus aliquam elementum. Maecenas ornare fringilla orci ac eleifend. In hac habitasse platea dictumst. Nunc gravida tincidunt tortor ut semper. Morbi ultricies turpis et mollis pharetra. Aliquam vel sollicitudin lectus. Vivamus tempus velit nec nibh tincidunt consectetur.</span></p>', '17024061634314.jpg', 1, 'science', '2023-12-12 19:36:03'),
(5, 'TECHNOLOGY 1', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Quisque at ornare nibh, tristique malesuada urna. Duis vitae elit vel tellus aliquam elementum. Maecenas ornare fringilla orci ac eleifend. In hac habitasse platea dictumst. Nunc gravida tincidunt tortor ut semper. Morbi ultricies turpis et mollis pharetra. Aliquam vel sollicitudin lectus. Vivamus tempus velit nec nibh tincidunt consectetur.</span></p>', '17024062292405.jpg', 1, 'technology', '2023-12-12 19:37:09'),
(6, 'TECHNOLOGY 2', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Quisque at ornare nibh, tristique malesuada urna. Duis vitae elit vel tellus aliquam elementum. Maecenas ornare fringilla orci ac eleifend. In hac habitasse platea dictumst. Nunc gravida tincidunt tortor ut semper. Morbi ultricies turpis et mollis pharetra. Aliquam vel sollicitudin lectus. Vivamus tempus velit nec nibh tincidunt consectetur.</span></p>', '17024062504376.jpg', 1, 'technology', '2023-12-12 19:37:30'),
(7, 'CINEMA 1', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Quisque at ornare nibh, tristique malesuada urna. Duis vitae elit vel tellus aliquam elementum. Maecenas ornare fringilla orci ac eleifend. In hac habitasse platea dictumst. Nunc gravida tincidunt tortor ut semper. Morbi ultricies turpis et mollis pharetra. Aliquam vel sollicitudin lectus. Vivamus tempus velit nec nibh tincidunt consectetur.</span></p>', '17024062673597.jpg', 1, 'cinema', '2023-12-12 19:37:47'),
(8, 'CINEMA 2', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Quisque at ornare nibh, tristique malesuada urna. Duis vitae elit vel tellus aliquam elementum. Maecenas ornare fringilla orci ac eleifend. In hac habitasse platea dictumst. Nunc gravida tincidunt tortor ut semper. Morbi ultricies turpis et mollis pharetra. Aliquam vel sollicitudin lectus. Vivamus tempus velit nec nibh tincidunt consectetur.</span></p>', '17024062821338.jpg', 1, 'cinema', '2023-12-12 19:38:02'),
(9, 'DESIGN 1', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Quisque at ornare nibh, tristique malesuada urna. Duis vitae elit vel tellus aliquam elementum. Maecenas ornare fringilla orci ac eleifend. In hac habitasse platea dictumst. Nunc gravida tincidunt tortor ut semper. Morbi ultricies turpis et mollis pharetra. Aliquam vel sollicitudin lectus. Vivamus tempus velit nec nibh tincidunt consectetur.</span></p>', '17024063029559.jpg', 1, 'design', '2023-12-12 19:38:22'),
(10, 'DESIGN 2', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Quisque at ornare nibh, tristique malesuada urna. Duis vitae elit vel tellus aliquam elementum. Maecenas ornare fringilla orci ac eleifend. In hac habitasse platea dictumst. Nunc gravida tincidunt tortor ut semper. Morbi ultricies turpis et mollis pharetra. Aliquam vel sollicitudin lectus. Vivamus tempus velit nec nibh tincidunt consectetur.</span></p>', '170240631340210.jpg', 1, 'design', '2023-12-12 19:38:33'),
(11, 'FOOD 1', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Quisque at ornare nibh, tristique malesuada urna. Duis vitae elit vel tellus aliquam elementum. Maecenas ornare fringilla orci ac eleifend. In hac habitasse platea dictumst. Nunc gravida tincidunt tortor ut semper. Morbi ultricies turpis et mollis pharetra. Aliquam vel sollicitudin lectus. Vivamus tempus velit nec nibh tincidunt consectetur.</span></p>', '170240632663911.jpg', 1, 'food', '2023-12-12 19:38:46'),
(12, 'FOOD 2', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Quisque at ornare nibh, tristique malesuada urna. Duis vitae elit vel tellus aliquam elementum. Maecenas ornare fringilla orci ac eleifend. In hac habitasse platea dictumst. Nunc gravida tincidunt tortor ut semper. Morbi ultricies turpis et mollis pharetra. Aliquam vel sollicitudin lectus. Vivamus tempus velit nec nibh tincidunt consectetur.</span></p>', '170240633757212.jpg', 1, 'food', '2023-12-12 19:38:57');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `img`) VALUES
(1, 'admin', 'admin@test.com', '$2b$10$I89ftQlwcjqnS0Jjv8BV.u3PUUABT1yBomjldRCGee.Pvx0HIm/rS', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid_fk` (`uid`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `uid_fk` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
