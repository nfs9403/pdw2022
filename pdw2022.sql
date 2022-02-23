-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 23 fév. 2022 à 22:30
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pdw2022`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `mdp` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id`, `nom`, `prenom`, `email`, `mdp`, `photo`) VALUES
(1, 'Walter', 'White', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `urlPath` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `comment`, `enabled`) VALUES
(1, 'Admin', 'administrateur principal', 1),
(2, 'Manager', 'Manager principal', 1),
(3, 'User', 'Utilisateur classique', 1);

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `fonction` varchar(100) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`nom`, `prenom`, `fonction`, `photo`) VALUES
('Walter', 'White', 'Directeur', 'walter.jpg'),
('Trixie', 'Watson', 'Ressource Humaine', 'trixie.jpg'),
('Anthony', 'Starblancks', 'Agent De Location', 'anthony.jpg'),
('Amanda', 'Marvel', 'Agent Manager', 'amanda.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_utilisateur` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `id_role` int(11) NOT NULL,
  `avatar` text NOT NULL,
  `comment` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_utilisateur`, `lastname`, `firstname`, `email`, `password`, `id_role`, `avatar`, `comment`, `enabled`) VALUES
(1, 'Bill', 'Gates', 'steve.jobs@hotmail.com', '$2y$10$PZSd66fQIWhQdQmWJvxDH.3FQFlF1gdtvV27Zn/wacMAhZO6stFjK', 3, 'bill.jpeg', '', 1),
(14, 'siham', 'teste', 'siham@test.com', '$2y$10$H.38aSjjepUJx2dPjkhLguKWxV.mJEOKL5bkXWJHGOuelu3lw4a0W', 3, '', '', 1),
(52, 'zz', 'zz', 'zz', '$2y$10$70pQtsSb8bM2RNJkf9x6we4xEGBo5xCfXQoJ2oxeMFwbF4lufPVGa', 3, '', '', 1),
(53, 'Admin', 'nistrator', 'ad@min.com', '$2y$10$8CnCtsMKDWIRqIQ4kKtTZ.akLQA7z0lCOVBYTO9mMNd1id56idRUi', 1, '', '', 1),
(55, 'a', 'b', 'a@b.c', '$2y$10$eAgMhmxdqnJFPgEzGkytMOfV4TRGBDAc1JBdTUydHDFwyQc2kP4rW', 1, 'bill.jpeg', '', 1),
(56, 'aaa', 'aaa', 'aaa', '$2y$10$eZfg99f1w.gs.g/.Bl.SpumIm4yprslAJzzMIYjd3Z8xMgH79wF3O', 3, '', '', 1),
(57, 'fdd', 'vhjvvj', 'jh', '$2y$10$yVMUYFfZMMSrs0Aq5Srvn.Cd0Pa.3uNPwDvrJhj8FNIIsdlENPvH6', 3, '', '', 1),
(60, '', '', '', '$2y$10$nTZWsNvp0Fv0KA7hL.EPSupX0kUmWGbuZt4z0iZm6NQHYYzKWovka', 3, '', '', 1),
(61, 'kjj', 'jjj', 'jjj', '$2y$10$g1KcvRkK0Fx0uWdsn/Dsd.L1N6jw02NN7gi1Uv8vlaEbzQ7YMVwNW', 3, '', '', 1),
(62, 'jk', 'jkkl', 'kijij', '$2y$10$bRYb73GpUjqE.KGpfXvcjuhkGAmgaKns.5Aa/3C1ZAyK9/gNfEWYG', 3, '', '', 1),
(63, 'jndlkzn', 'kezfnfl', 'kkekk', '$2y$10$duE5gMI/6qtsN/vTqcLCGepL6vmUKuxgEXTxN4KP.h8dRoCqhaO1m', 3, '', '', 1),
(64, 'jndlkzn', 'kezfnfl', 'kkekk', '$2y$10$/XmJ8USW1GJwDZxyOLWkf.gOhgSXXTBIB93.Yy6kWgqXdhF.U7Kfm', 3, '', '', 1),
(65, 'jndlkzn', 'kezfnfl', 'kkekk', '$2y$10$c4.a118XHOEPn8cPQ2oq8uqfN1SVHvNHsZ4KnJ1mL6VIqFdO1ZNM2', 3, '', '', 1),
(66, 'jndlkzn', 'kezfnfl', 'kkekk', '$2y$10$RkVUYlYAZOIZro7j2W5LhuTqz/EU9Gj7Ph1FVqzmDYWLNhAoXrFN.', 3, '', '', 1),
(67, 'zzz', 'zzz', 'zzz', '$2y$10$zQ6sCDadu6XVR3HEo1YRy.s1rqYA9lFPBiVxfP4J5VkG9nQW3vw3u', 3, '', '', 1),
(68, 'a', 'a', 'a@a.a', '$2y$10$bhW2RcmWUp1vx4BVbJCiq.8SVAE7HQJDmBM4.WpJqzaUqDop5NoaO', 3, '', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE `vehicule` (
  `id_vehicule` int(10) NOT NULL,
  `marque` varchar(50) DEFAULT NULL,
  `modele` varchar(50) DEFAULT NULL,
  `categorie` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`id_vehicule`, `marque`, `modele`, `categorie`, `image`) VALUES
(1, 'BMW', 'Serie 5', 1, 'bmw.jpg'),
(2, 'Audi', 'A3', 1, 'audi.jpg'),
(4, 'Aston Martin', 'DBX', 4, 'dbx.jpg'),
(5, 'Aston MArtin', 'V8 Coupe', 2, 'v8coupe.jpg'),
(6, 'Ferrari', 'FF', 3, 'ff.jpg'),
(7, 'Toyota', 'Verso', 4, 'verso.jpg'),
(8, 'Toyota', 'Highlander', 4, 'highlander.jpg'),
(9, 'Tesla', 'Model S', 6, 'tesla.jpg'),
(10, 'Koenigsegg', 'Regera', 5, 'koenigsegg.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `veh_cat`
--

CREATE TABLE `veh_cat` (
  `id_categorie` int(10) NOT NULL,
  `categorie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `veh_cat`
--

INSERT INTO `veh_cat` (`id_categorie`, `categorie`) VALUES
(1, 'Berline'),
(2, 'coupe'),
(6, 'electrique'),
(4, 'familiale'),
(5, 'megacar'),
(3, 'sportive');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD KEY `id_role` (`id_role`);

--
-- Index pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`id_vehicule`);

--
-- Index pour la table `veh_cat`
--
ALTER TABLE `veh_cat`
  ADD PRIMARY KEY (`id_categorie`),
  ADD KEY `categorie` (`categorie`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pour la table `vehicule`
--
ALTER TABLE `vehicule`
  MODIFY `id_vehicule` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
