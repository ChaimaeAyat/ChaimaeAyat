-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 23 mai 2021 à 20:49
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mydb`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `Id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`Id_categorie`, `nom_categorie`) VALUES
(6, 'Humour'),
(7, 'Architecture'),
(8, 'Arts'),
(9, 'Mathematique'),
(10, 'Droit'),
(11, 'Philosophie'),
(12, 'Francais');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `idEtudiant` int(11) NOT NULL,
  `Nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `log` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`idEtudiant`, `Nom`, `prenom`, `log`, `pass`) VALUES
(4, 'AYAT', 'nabil', 'nabil@ayat.com', 'nabil'),
(5, 'Ayat', 'Khaoula', 'khaoulaayat@gmail.com', 'khaoula'),
(7, 'AYAT', 'youness', 'youness@gmail.com', 'yns'),
(9, 'Ayat', 'Chaimae', 'chaimaeayat@gmail.com', 'chaimae'),
(10, 'Badr', 'Yassine', 'yassine@gmail.com', 'yassine');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `Nom_livre` varchar(255) NOT NULL,
  `Auteur` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL,
  `Id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`Nom_livre`, `Auteur`, `Price`, `Id_categorie`) VALUES
('GROS SIGNES', ' chalude', 200, 6),
('la ville du vingtième siècle', 'Bernardo Secchi', 200, 7),
('Villes sobres', 'Catherine Chevauché,Charlotte Halpern et Dominique Lorrain', 255, 7),
('Epopée française', 'Dominique Labarrière', 300, 7),
('\r\nDavid Bowie', 'Jeff Hudson', 399, 8),
('Mini Homes ', ' Place des Victoires', 399, 8),
('Initiation à l’analyse mathématique', 'André Giroux', 387, 9),
('Mathématiques pour l’ingénieur', ' Mohammed Dennaï', 499, 9),
('Mathematics of Genome Analysis', 'Jerome-K Percus', 499, 9),
('Méthodes statistiques – Médecine-Biologie', 'Jean Bouyer', 499, 9),
('Dictionnaire amoureux de la justice', 'Jacques Vergès', 120, 10),
('la construction du surhomme', 'Michel Onfray', 299, 11),
('Husserl et lénigme du monde', 'Emmanuel Housset', 399, 11);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`Id_categorie`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`idEtudiant`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD KEY `Id_categorie` (`Id_categorie`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `Id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idEtudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`Id_categorie`) REFERENCES `categorie` (`Id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
