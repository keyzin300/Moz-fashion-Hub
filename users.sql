-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 03-Jul-2024 às 11:03
-- Versão do servidor: 5.7.34
-- versão do PHP: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `moz_fashion_hub`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Beloved', 'sivaldocnn@gmail.com', '$2y$10$IzDda84sMf5po6182FPQoeyQrrruJYXHKnCnEJwu2nLNEhMr2NgR2'),
(2, 'Dário ', 'dario@gmail.com', '$2y$10$8YH/dhlMXxRdZXS7f3MnMOSZzvwLYE1jCL4Y8ljWkPv9sUDaS5YYy'),
(3, 'Lázaro ', 'lazarantonio@gmail.com', '$2y$10$sFoQQt.WluCK2vLDotEvDesB8GuCBMUkgws8iHK8xteUtfA.QLcZi'),
(4, 'Fernando ', 'lazaromachava500@gmail.com', '$2y$10$E7tLLH4iqCrV8MKnw1fmde7Bv/5OlO7X5wyPJ1e/CG2lz0UhptI7.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
