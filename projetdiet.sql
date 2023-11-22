-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 nov. 2023 à 11:02
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetdiet`
--

-- --------------------------------------------------------

--
-- Structure de la table `allergen_type`
--

CREATE TABLE `allergen_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `allergen_type`
--

INSERT INTO `allergen_type` (`id`, `type`) VALUES
(1, 'Arachides'),
(2, 'Fruits à coque'),
(3, 'Lait'),
(4, 'Oeufs'),
(5, 'Soja'),
(6, 'Blé'),
(7, 'Poisson'),
(8, 'Fruits de mer'),
(9, 'Sésame');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `firstname`, `lastname`, `email`, `message`) VALUES
(1, 'Albert', 'Friand', 'albert@com.fr', 'poiezugietgn g gergrjgbklreg jerlkgt'),
(2, 'Albert', 'Friand', 'albert@com.fr', 'Bonjour, \r\nPourriez-vous recontacter pour un rdv.\r\nMerci'),
(14, 'JP', 'Colas', 'colas@fr.fr', 'popopopoppopopopoopo'),
(15, 'colas', 'Friand', 'colas@fr.fr', 'momomomomomomomoooo'),
(16, 'Helene', 'Laroche', 'ln@gogo.fr', 'Bonjour, \r\nJ\'aurais besoin de votre aide dans le cadre d\'une pratique sportive.\r\nCordialement.');

-- --------------------------------------------------------

--
-- Structure de la table `diet_type`
--

CREATE TABLE `diet_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diet_type`
--

INSERT INTO `diet_type` (`id`, `type`) VALUES
(1, 'Méditerranéen'),
(2, 'Végétarien'),
(3, 'Végétalien'),
(4, 'Paléo'),
(5, 'Cétogène'),
(6, 'Sans gluten'),
(7, 'Sans lactose'),
(8, 'Hypocalorique'),
(9, 'Protéiné');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231027150817', '2023-10-27 17:09:00', 331),
('DoctrineMigrations\\Version20231029152705', '2023-10-29 16:27:12', 83),
('DoctrineMigrations\\Version20231029154316', '2023-10-29 16:43:24', 250),
('DoctrineMigrations\\Version20231029155406', '2023-10-29 16:54:12', 52),
('DoctrineMigrations\\Version20231029160821', '2023-10-29 17:08:27', 112),
('DoctrineMigrations\\Version20231029161231', '2023-10-29 17:12:36', 42),
('DoctrineMigrations\\Version20231029161509', '2023-10-29 17:15:14', 75),
('DoctrineMigrations\\Version20231029161709', '2023-10-29 17:17:17', 74),
('DoctrineMigrations\\Version20231031095958', '2023-10-31 11:00:14', 183),
('DoctrineMigrations\\Version20231031102922', '2023-10-31 11:29:28', 404),
('DoctrineMigrations\\Version20231106111640', '2023-11-06 12:18:20', 53),
('DoctrineMigrations\\Version20231106135359', '2023-11-06 14:54:13', 23),
('DoctrineMigrations\\Version20231113131157', '2023-11-13 14:12:44', 24),
('DoctrineMigrations\\Version20231117140714', '2023-11-17 15:07:38', 57);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recipe`
--

CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `ingredients` longtext NOT NULL,
  `preparation_time` int(11) NOT NULL,
  `cooking_time` int(11) NOT NULL,
  `time_of_rest` int(11) NOT NULL,
  `steps` longtext NOT NULL,
  `picture` varchar(255) NOT NULL,
  `is_accessible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe`
--

INSERT INTO `recipe` (`id`, `title`, `description`, `ingredients`, `preparation_time`, `cooking_time`, `time_of_rest`, `steps`, `picture`, `is_accessible`) VALUES
(2, 'Ceviche de veau', 'La fusion audacieuse de la viande de veau avec les techniques de préparation du ceviche offre une expérience culinaire unique, mariant la sophistication de la viande avec la fraîcheur caractéristique des plats de ceviche.', 'plein', 20, 10, 20, 'Pas beaucoup', 'recette2.jpg', 0),
(3, 'Salade de Quinoa aux Légumes Grillés', '<div>Cette salade légère et nutritive est parfaite pour les amateurs de quinoa. Les légumes grillés ajoutent une saveur délicieuse, tandis que le quinoa offre une source de protéines végétales.</div>', 'Quinoa cuit Courgettes, Poivrons, Tomates coupés en dés, Huile d\'olive, Sel, Poivre, Herbes de Provence', 20, 10, 10, 'Mélanger les légumes avec de l\'huile d\'olive et des épices, puis les griller. Ajouter les légumes grillés au quinoa cuit.', 'recette3.jpg', 0),
(4, 'Poulet au Citron et au Romarin avec Légumes Rôtis', '<div>Cette recette propose une option saine et savoureuse pour les amateurs de viande maigre. Le poulet mariné au citron et au romarin est rôti avec des légumes colorés, créant ainsi un repas équilibré</div>', 'Poitrines de poulet, Citron, Romarin frais, Légumes (carottes, brocolis, chou-fleur) Sel, Poivre, Huile d\'olive', 20, 10, 0, 'Mariner le poulet avec du jus de citron, du romarin, du sel et du poivre, puis faire rôtir avec les légumes.', 'recette4.jpg', 1),
(5, 'Smoothie Vert Antioxydant', 'Ce smoothie vert est une explosion de saveurs saines. Les épinards fournissent des nutriments essentiels, la banane apporte une douceur naturelle, et les graines de chia ajoutent des oméga-3.', 'Épinards frais, Banane, Ananas, Jus d\'orange frais, Graines de chia', 10, 0, 2, 'Mixer tous les ingrédients jusqu\'à obtention d\'une texture lisse. Idéal pour les régimes végétaliens, végétariens, et ceux favorisant une alimentation à base de plantes.', 'recette7.jpg', 0),
(6, 'Saumon Grillé avec Asperges et Quinoa', '<div>Un plat délicieux et riche en oméga-3 grâce au saumon grillé. Les asperges et le quinoa ajoutent des fibres et des éléments nutritifs. Accompagné d\'une sauce au yaourt citronnée.</div>', 'Filets de saumon, Asperges, Quinoa cuit, Sauce au yaourt citronnée', 20, 20, 0, 'Griller le saumon et les asperges, puis servir sur un lit de quinoa avec la sauce au yaourt.', 'recette8.jpg', 1),
(7, 'Tofu Sauté aux Légumes Asiatiques', '<div>Cette recette végétalienne offre une explosion de saveurs asiatiques. Le tofu ferme est sauté avec des légumes croquants dans une délicieuse sauce soja au gingembre et à l\'ail.</div>', 'Tofu ferme coupé en cubes, Brocoli, Poivrons, Champignons, Sauce soja, Gingembre, Ail', 10, 10, 0, 'Sauter le tofu et les légumes dans une poêle avec la sauce soja, le gingembre et l\'ail.', 'recette9.jpg', 0),
(8, 'Salade de Lentilles aux Tomates et Feta', '<div>Une salade copieuse et pleine de saveurs, cette recette allie les lentilles riches en protéines, les tomates sucrées et la feta salée. Assaisonnée d\'une vinaigrette à l\'huile d\'olive, cette salade est parfaite pour les régimes méditerranéen et végétarien.</div>', 'Lentilles cuites, Tomates cerises coupées en deux, Fromage feta émietté, Vinaigrette à base d\'huile d\'olive', 20, 45, 10, 'Mélanger les lentilles, les tomates et la feta, puis assaisonner avec la vinaigrette', 'recette5.jpg', 1),
(9, 'Pâtes de Courgettes au Pesto de Basilic', '<div>Une alternative légère et rafraîchissante aux pâtes traditionnelles, ces pâtes de courgettes sont associées à un pesto maison à base de basilic, d\'ail, de noix et de parmesan.&nbsp;</div>', 'Courgettes (2 à 3 courgettes,) Basilic frais (une tasse), Ail (2 gousses), Noix (1/2 tasse), Parmesan râpé (1/2 tasse), Huile d\'olive (1/4 tasse), Sel et poivre', 45, 10, 5, 'Utiliser un spiraliseur pour couper les courgettes en forme de spaghetti. Dans un mixeur, mélanger le basilic, l\'ail, les noix, le parmesan, et ajouter l\'huile d\'olive en filet jusqu\'à obtention d\'une texture lisse. Faire sauter les pâtes de courgettes dans une poêle avec le pesto jusqu\'à ce qu\'elles soient bien enrobées. Assaisonner avec du sel et du poivre. Servir chaud.', 'recette10.jpg', 0),
(10, 'Crevettes Grillées à la Mangue et au Avocat', '<div>Des crevettes grillées sont associées à une salsa fraîche de mangue et d\'avocat. Cette recette légère et pleine de saveurs est parfaite pour les amateurs de fruits de mer.</div>', 'Crevettes décortiquées (300g), Mangue (1, coupée en dés), Avocat (1, coupé en dés), Jus de citron vert (2 cuillères à soupe), Coriandre fraîche (une poignée), Sel et poivre', 25, 5, 0, 'Assaisonner les crevettes avec du sel, du poivre et les faire griller jusqu\'à ce qu\'elles soient cuites. Dans un bol, mélanger les crevettes grillées avec la mangue et l\'avocat. Ajouter le jus de citron vert et la coriandre fraîche. Mélanger délicatement et servir frais.', 'recette11.jpg', 1),
(11, 'Chili Végétarien aux Haricots Noirs', '<div>Ce chili végétarien est une option savoureuse et riche en fibres. Les haricots noirs, les légumes et les épices créent un plat copieux et satisfaisant.</div>', 'Haricots noirs en conserve (2 boîtes), Tomates en dés (1 boîte), Maïs (1 tasse, frais ou en conserve), Poivrons (2, coupés en dés), Oignon (1, haché), Ail (2 gousses, hachées), Chili en poudre (2 cuillères à soupe), Cumin en poudre (1 cuillère à soupe), Sel et poivre', 30, 10, 5, 'Dans une grande casserole, faire revenir l\'oignon et l\'ail jusqu\'à ce qu\'ils soient tendres. Ajouter les poivrons et faire sauter pendant quelques minutes. Incorporer les haricots noirs, les tomates en dés, le maïs, le chili en poudre et le cumin. Laisser mijoter jusqu\'à ce que les saveurs se mélangent. Assaisonner avec du sel et du poivre selon votre goût.', 'recette12.jpg', 0),
(12, 'Pizza aux Légumes Grillés et Fromage de Chèvre', '<div>Une pizza légère et nutritive avec une croûte de blé entier, garnie de légumes grillés (aubergines, poivrons, courgettes) et de fromage de chèvre. Parfaite pour les amateurs de pizza soucieux de leur santé.</div>', 'Pâte à pizza de blé entier, Aubergines, poivrons, courgettes (au choix), Fromage de chèvre (100g, émietté), Sauce tomate, Basilic frais, Sel et poivre', 30, 5, 2, 'Étaler la pâte à pizza sur une plaque de cuisson. Étaler une fine couche de sauce tomate sur la pâte. Disposer les légumes grillés sur la sauce, puis ajouter le fromage de chèvre émietté. Cuire au four selon les instructions de la pâte. Garnir de basilic frais avant de servir.', 'recette13.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `recipe_allergen_type`
--

CREATE TABLE `recipe_allergen_type` (
  `recipe_id` int(11) NOT NULL,
  `allergen_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe_allergen_type`
--

INSERT INTO `recipe_allergen_type` (`recipe_id`, `allergen_type_id`) VALUES
(2, 8),
(3, 9),
(4, 9),
(5, 1),
(6, 7),
(7, 5),
(8, 4),
(9, 5),
(10, 8),
(11, 4),
(12, 6);

-- --------------------------------------------------------

--
-- Structure de la table `recipe_diet_type`
--

CREATE TABLE `recipe_diet_type` (
  `recipe_id` int(11) NOT NULL,
  `diet_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe_diet_type`
--

INSERT INTO `recipe_diet_type` (`recipe_id`, `diet_type_id`) VALUES
(2, 9),
(3, 3),
(4, 1),
(5, 2),
(6, 1),
(7, 2),
(8, 2),
(9, 3),
(10, 1),
(10, 2),
(11, 2),
(11, 4),
(12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `recipe_score`
--

CREATE TABLE `recipe_score` (
  `recipe_id` int(11) NOT NULL,
  `score_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe_score`
--

INSERT INTO `recipe_score` (`recipe_id`, `score_id`) VALUES
(2, 9),
(3, 74),
(4, 89),
(5, 6),
(6, 3),
(6, 8),
(7, 2),
(7, 7),
(8, 1),
(8, 4),
(8, 5),
(9, 75),
(10, 80),
(10, 86),
(11, 47),
(12, 10);

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `note` int(11) DEFAULT NULL,
  `opinion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `score`
--

INSERT INTO `score` (`id`, `note`, `opinion`) VALUES
(1, 1, 'trop bon'),
(2, 5, 'Vraiment délicieux'),
(3, 4, 'pogejrghjrgh'),
(4, 4, 'Parfait'),
(5, 4, 'Parfait'),
(6, 4, 'Très rafraichissant!!!'),
(7, 2, 'pas terrible le Tofu'),
(8, 5, 'Magnifique recette...'),
(9, 2, 'Le veau n\'est pas trop cuit, j\'ai aimé moyen'),
(10, 5, 'Excellente recette, nous avons adoré'),
(47, 4, 'Magnifique ce chili végét'),
(74, 4, 'Le mariage du quinoa et des légumes grillés est délicieux'),
(75, 2, 'Un peu trop vert à mon goût'),
(80, 4, 'Belle recette'),
(86, 5, 'Parfait'),
(89, 5, 'Ce poulet aromatisé est un délice.');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(10, 'lolo@gmail.com', '[]', '$2y$13$l6EP08.Wl7xRmvuINIfkPewK/BoBVTesFh4iVkcKqQGho7F7nfZee', 'lolo', 'frigu'),
(17, 'frigoo@gmail.com', '[]', '$2y$13$ANtLBXYxMFdpd27Pge1Qwel9gzJuNy/UHTu0PKA0B4mJR9o3V3V4e', 'Juliette', 'frigo'),
(22, 'Lutin@hot.fr', '[]', '$2y$13$4DQeYIyvMayOOGutW70PK.l3ct98lLOB.1BKOi38e8tlsNQT6Rhpu', 'Jean', 'Lutin'),
(25, 'coupart@sante.fr', '[\"ROLE_ADMIN\"]', '$2y$13$7ig6qJe0ul.aPovSwFH9gegqRNfJkzNdr0IkO2/bIAqvdFGPctEve', 'Sandrine', 'Coupart'),
(26, 'fell@com.fr', '[]', '$2y$13$gukI0SuGrpMa8synA5E0lO5Xkbh.m/7ZzNqWY0Z12Lj9N9e06APV2', 'Marion', 'Fell'),
(27, 'alain@com.fr', '[]', '$2y$13$g8Z.uqv.5qfSKA9rLyTA9e0iXu7jNkOw.PXl.3gCHjHQpS2T4Z0Im', 'Alain', 'Lito'),
(28, 'Yohann@fr.com', '[]', '$2y$13$CfhQUGlodGNMLX5o7jvjKO9PgHtuU0lYhEA1bh3oIkIukfnrlYadW', 'Yohann', 'Lohm'),
(30, 'ln@gogo.fr', '[]', '$2y$13$O71/vofK9V0WB7z0ICxM9uULFcwmJViKIKSpFWcaksoJByejw0oOi', 'helene', 'Laroche');

-- --------------------------------------------------------

--
-- Structure de la table `user_allergen_type`
--

CREATE TABLE `user_allergen_type` (
  `user_id` int(11) NOT NULL,
  `allergen_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_allergen_type`
--

INSERT INTO `user_allergen_type` (`user_id`, `allergen_type_id`) VALUES
(28, 2);

-- --------------------------------------------------------

--
-- Structure de la table `user_diet_type`
--

CREATE TABLE `user_diet_type` (
  `user_id` int(11) NOT NULL,
  `diet_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_diet_type`
--

INSERT INTO `user_diet_type` (`user_id`, `diet_type_id`) VALUES
(26, 9),
(27, 2),
(28, 2),
(30, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `allergen_type`
--
ALTER TABLE `allergen_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diet_type`
--
ALTER TABLE `diet_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recipe_allergen_type`
--
ALTER TABLE `recipe_allergen_type`
  ADD PRIMARY KEY (`recipe_id`,`allergen_type_id`),
  ADD KEY `IDX_F46E266B59D8A214` (`recipe_id`),
  ADD KEY `IDX_F46E266BF7A7758` (`allergen_type_id`);

--
-- Index pour la table `recipe_diet_type`
--
ALTER TABLE `recipe_diet_type`
  ADD PRIMARY KEY (`recipe_id`,`diet_type_id`),
  ADD KEY `IDX_6107ADCA59D8A214` (`recipe_id`),
  ADD KEY `IDX_6107ADCA35BFD6CF` (`diet_type_id`);

--
-- Index pour la table `recipe_score`
--
ALTER TABLE `recipe_score`
  ADD PRIMARY KEY (`recipe_id`,`score_id`),
  ADD KEY `IDX_248AE34E59D8A214` (`recipe_id`),
  ADD KEY `IDX_248AE34E12EB0A51` (`score_id`);

--
-- Index pour la table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_allergen_type`
--
ALTER TABLE `user_allergen_type`
  ADD PRIMARY KEY (`user_id`,`allergen_type_id`),
  ADD KEY `IDX_8A159DFDA76ED395` (`user_id`),
  ADD KEY `IDX_8A159DFDF7A7758` (`allergen_type_id`);

--
-- Index pour la table `user_diet_type`
--
ALTER TABLE `user_diet_type`
  ADD PRIMARY KEY (`user_id`,`diet_type_id`),
  ADD KEY `IDX_76260EC8A76ED395` (`user_id`),
  ADD KEY `IDX_76260EC835BFD6CF` (`diet_type_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `allergen_type`
--
ALTER TABLE `allergen_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `diet_type`
--
ALTER TABLE `diet_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `recipe_allergen_type`
--
ALTER TABLE `recipe_allergen_type`
  ADD CONSTRAINT `FK_F46E266B59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F46E266BF7A7758` FOREIGN KEY (`allergen_type_id`) REFERENCES `allergen_type` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `recipe_diet_type`
--
ALTER TABLE `recipe_diet_type`
  ADD CONSTRAINT `FK_6107ADCA35BFD6CF` FOREIGN KEY (`diet_type_id`) REFERENCES `diet_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6107ADCA59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `recipe_score`
--
ALTER TABLE `recipe_score`
  ADD CONSTRAINT `FK_248AE34E12EB0A51` FOREIGN KEY (`score_id`) REFERENCES `score` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_248AE34E59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_allergen_type`
--
ALTER TABLE `user_allergen_type`
  ADD CONSTRAINT `FK_8A159DFDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8A159DFDF7A7758` FOREIGN KEY (`allergen_type_id`) REFERENCES `allergen_type` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_diet_type`
--
ALTER TABLE `user_diet_type`
  ADD CONSTRAINT `FK_76260EC835BFD6CF` FOREIGN KEY (`diet_type_id`) REFERENCES `diet_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_76260EC8A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
