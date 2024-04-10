-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 10. 11:06
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `projekt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`Id`, `Name`) VALUES
(1, 'ingek'),
(2, 'oltonyok'),
(3, 'felcipok'),
(4, 'nadragok');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orderedproducts`
--

CREATE TABLE `orderedproducts` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Count` int(11) NOT NULL,
  `OrdersId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ProductsId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orders`
--

CREATE TABLE `orders` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Status` longtext NOT NULL,
  `UserId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `CreatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `Description` longtext NOT NULL,
  `CategoriesId` int(11) NOT NULL,
  `ImageURL` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`Id`, `Name`, `Price`, `Description`, `CategoriesId`, `ImageURL`) VALUES
('05d98259-9a9b-4f60-8dbb-cf70e699887f', 'Selected / Homme - Zakó', 30499, 'Fazon: Slim fit', 2, 'https://i.ibb.co/sWrzKCy/szurke.webp'),
('0c65a444-7e8d-4f8f-9522-215e0f2bd10e', 'JOHN WHITE - Oxford Cipő', 21900, '', 3, 'https://i.ibb.co/0Y7zCL0/John-White-Fekete.webp'),
('2264df64-b68b-478f-93d9-28b4a8852250', 'CARL GROSS -  Sötétkék öltöny', 160000, 'Fazon: modern fit', 2, 'https://i.ibb.co/L6vQsxt/sotetkek.webp'),
('28a2768f-2f48-4a8f-98ed-7f17379f66db', 'Selected / Homme - Zakó \'New One\'', 42000, 'Fazon: Slim fit', 2, 'https://i.ibb.co/wSSLCWL/Fekete.png'),
('32d52701-ee69-44dc-a82e-f1044aa369cf', 'Sole - Romer Brogue Cipő', 27800, '', 3, 'https://i.ibb.co/drFK1Gz/Romer-Brogue-Shoes.webp'),
('38c423f6-d4bc-4f4b-a246-9666829aaffb', 'WE - Üzleti zakók', 61000, 'Fazon: Slim fit', 2, 'https://i.ibb.co/GnyfdCR/zold.webp'),
('48bebe1f-eacd-46ca-a735-aff4ffbdc5e4', 'Tommy Hilfiger - Fűzős cipő', 48900, '', 3, 'https://i.ibb.co/K6Hnvxr/Tommy-Bezs.webp'),
('4f41035a-aff6-40d3-b99c-29d97df77c4a', 'WE - Zakó \'Taro\'', 40800, 'Slim fit', 2, 'https://i.ibb.co/bzR7KQ7/Ol-va.webp'),
('563b7f4c-1563-4611-a249-f31d5b7dd652', 'Jack & Jones - Zakó \'Franco\'', 29990, 'Fazon: Slim fit', 2, 'https://i.ibb.co/Y33g060/Barna.png'),
('643b59d8-a0b0-4b3a-a88f-9a94eb940d0c', 'CLARKS - HOWARD Cipő', 18900, '', 3, 'https://i.ibb.co/Ks9yThw/CLARKS.webp'),
('67b3f8a7-edf5-4015-b6f9-42bc41e1494e', 'Jack & Jones - Ráncos nadrág \'Solaris\'', 24990, 'Fazon: Slim fit', 4, 'https://i.ibb.co/mHHGmXz/jackjones-Kockas.png'),
('7031edf2-a05b-4f58-82e4-dc1eb2ff2cfc', 'Jack & Jones - Zakó \'Franco\'', 31990, 'Fazon: Slim fit', 2, 'https://i.ibb.co/g6X4r6N/B-zs.png'),
('75857591-a65a-468f-baf8-851cfa75f014', 'Vintage - Fűzős cipő', 51900, '', 3, 'https://i.ibb.co/kxFRZjh/Black-Pattern.webp'),
('929af1dc-685d-4bcb-867d-41cf2d38345a', 'WE - Zakó', 40000, 'Fazon: Slim fit', 2, 'https://i.ibb.co/Z6LYcFQ/voros.webp'),
('99243cf5-52b1-4560-8c7b-5e6b5327518f', 'Sole - Swan Derby Cipő', 32500, '', 3, 'https://i.ibb.co/XtZS01Y/Barna-Derby.webp'),
('ae7b8c9f-86d4-4d4b-be25-535db1025e2b', 'Jack & Jones - Zakó \'Franco\'', 25600, 'Fazon: Slim fit', 2, 'https://i.ibb.co/0Xhpxnc/vilagoskek.webp'),
('af3c5755-05a1-41a2-b6a1-dd27b52fe194', 'Selected / Homme - Zakó ', 60000, 'Fazon: Slim fit', 2, 'https://i.ibb.co/yd32gm5/K-k.png'),
('b43282ab-dbd7-465e-9116-56fdcf218b50', 'SIMON CARTER - Burrow Brogue Cipő', 31990, '', 3, 'https://i.ibb.co/dLXkJ9k/Carter.webp'),
('bca49e1a-6a7d-4552-a0c2-22b04d50aefc', 'Bugatti fehér ing', 35850, 'Fazon: Slim fit', 1, 'https://i.ibb.co/vYFsH19/Bugatti-Feher.png'),
('bddb1c27-076d-4793-ab19-622179166787', 'Black & White - Fém orrú Cipő', 27890, '', 3, 'https://i.ibb.co/XXcH31x/elvis-black-white.webp'),
('da16e3af-c3b0-4b7a-8477-f5b8f626a394', 'Bugatti - Fűzős cipő \'Savio\'', 34500, 'Dizájn: Bőr', 3, 'https://i.ibb.co/dbDWGWw/Fekete-Bugatti.webp');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `UserName` longtext NOT NULL,
  `Email` longtext NOT NULL,
  `Password` longtext NOT NULL,
  `PhoneNumber` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20240221205758_database', '8.0.1');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `orderedproducts`
--
ALTER TABLE `orderedproducts`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_orderedProducts_OrdersId` (`OrdersId`),
  ADD KEY `IX_orderedProducts_ProductsId` (`ProductsId`);

--
-- A tábla indexei `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_orders_UserId` (`UserId`);

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_products_CategoriesId` (`CategoriesId`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `orderedproducts`
--
ALTER TABLE `orderedproducts`
  ADD CONSTRAINT `FK_orderedProducts_orders_OrdersId` FOREIGN KEY (`OrdersId`) REFERENCES `orders` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_orderedProducts_products_ProductsId` FOREIGN KEY (`ProductsId`) REFERENCES `products` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products_categories_CategoriesId` FOREIGN KEY (`CategoriesId`) REFERENCES `categories` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
