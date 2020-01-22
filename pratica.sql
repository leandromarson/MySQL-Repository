-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 07-Ago-2019 às 21:23
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `pratica`
--
CREATE DATABASE IF NOT EXISTS `pratica` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pratica`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE IF NOT EXISTS `cadastro` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `nome`, `datanasc`, `telefone`, `sexo`) VALUES
(1, 'Jumaria', '1998-12-10', '9993-9923', 'M'),
(2, 'Maricleide', '1988-02-21', '9492-9123', 'F');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
