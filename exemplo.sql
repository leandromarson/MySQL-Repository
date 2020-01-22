-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 07-Ago-2019 às 17:33
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `exemplo`
--
CREATE DATABASE IF NOT EXISTS `exemplo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `exemplo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `amigos`
--

CREATE TABLE IF NOT EXISTS `amigos` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `datanasc` date NOT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `amigos`
--

INSERT INTO `amigos` (`id`, `nome`, `sexo`, `datanasc`, `telefone`) VALUES
(1, 'Josemiro', 'M', '1998-04-09', '22222123'),
(2, 'Maria', 'F', '1999-09-10', '11121114'),
(3, 'Jose', 'M', '1988-02-19', '33322123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
