-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 17, 2023 at 05:10 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ejercicio_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `USUARIO`
--

CREATE TABLE `USUARIO` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  `APELLIDO` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `USUARIO`
--

INSERT INTO `USUARIO` (`ID`, `NOMBRE`, `APELLIDO`, `EMAIL`) VALUES
(1, 'María', 'Gómez', 'maria@gmail.com'),
(2, 'Pedro', 'López', 'pedro@gmail.com'),
(3, 'Ana', 'Rodríguez', 'ana@gmail.com'),
(5, 'gerardo', 'asdasd', 'adsfasdf@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `USUARIO`
--
ALTER TABLE `USUARIO`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;