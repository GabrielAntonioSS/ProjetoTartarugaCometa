-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Jul-2022 às 02:21
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistematartaruga`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `destinatario`
--

CREATE TABLE `destinatario` (
  `id` int(11) NOT NULL,
  `cnpj_cpf` char(14) NOT NULL,
  `nome_razao` varchar(50) NOT NULL,
  `endereco` varchar(30) NOT NULL,
  `cep` char(8) NOT NULL,
  `rg` char(8) NOT NULL,
  `email` char(100) NOT NULL,
  `numero` char(12) NOT NULL,
  `data_criado` date NOT NULL,
  `data_nasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `destinatario`
--

INSERT INTO `destinatario` (`id`, `cnpj_cpf`, `nome_razao`, `endereco`, `cep`, `rg`, `email`, `numero`, `data_criado`, `data_nasc`) VALUES
(4, '6', '6', '6', '6', '6', '9', '9', '2022-07-18', '2022-07-18'),
(5, '5', '5', '5', '5', '5', '5', '5', '2022-07-19', '2022-07-19'),
(6, '1', '1', '1', '1', '1', '1', '1', '2022-07-19', '2022-07-19'),
(7, '2', '2', '2', '2', '2', '2', '2', '2022-07-19', '2022-07-19'),
(8, '5', '5', '5', '5', '5', '5', '5', '2022-07-19', '2022-07-19'),
(9, '1239123966', '46666', '466666', '76666', '46666666', '76666', '766666', '2022-07-19', '2022-07-19'),
(10, 'teste', 'teste', 'teste', 'teste', 'teste', 'teste', 'teste', '2022-07-19', '2022-07-19'),
(11, '23453', 'teste 3', 'fgfggfgf', '56564645', '3535', 'teste@teste', '63563456346', '2022-07-19', '2022-07-19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `id` int(11) NOT NULL,
  `remetente_id` int(11) NOT NULL,
  `destinatario_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entrega`
--

INSERT INTO `entrega` (`id`, `remetente_id`, `destinatario_id`, `produto_id`) VALUES
(3, 2, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data_criado` date NOT NULL,
  `peso` double NOT NULL,
  `volume` double NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `data_criado`, `peso`, `volume`, `valor`) VALUES
(1, '6', '2022-07-18', 6, 6, 6),
(2, '6', '2022-07-18', 6, 6, 6),
(3, '6', '2022-07-18', 6, 6, 6),
(4, '6', '2022-07-18', 9, 9, 6),
(5, '6', '2022-07-18', 6, 6, 6),
(8, '4', '2022-07-19', 4, 4, 4),
(9, 'xbox', '2022-07-19', 2, 1, 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `remetente`
--

CREATE TABLE `remetente` (
  `id` int(11) NOT NULL,
  `cnpj_cpf` char(14) NOT NULL,
  `nome_razao` varchar(50) NOT NULL,
  `endereco` varchar(30) NOT NULL,
  `cep` char(8) NOT NULL,
  `rg` char(8) NOT NULL,
  `email` varchar(100) NOT NULL,
  `numero` char(12) NOT NULL,
  `data_criado` date NOT NULL,
  `data_nasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `remetente`
--

INSERT INTO `remetente` (`id`, `cnpj_cpf`, `nome_razao`, `endereco`, `cep`, `rg`, `email`, `numero`, `data_criado`, `data_nasc`) VALUES
(2, '6', '6', '6', '6', '6', '6', '6', '2022-07-18', '2022-07-18');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `destinatario`
--
ALTER TABLE `destinatario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_remetente` (`remetente_id`),
  ADD KEY `fk_destinatario` (`destinatario_id`),
  ADD KEY `fk_produto` (`produto_id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `remetente`
--
ALTER TABLE `remetente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `destinatario`
--
ALTER TABLE `destinatario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `entrega`
--
ALTER TABLE `entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `remetente`
--
ALTER TABLE `remetente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `fk_destinatario` FOREIGN KEY (`destinatario_id`) REFERENCES `destinatario` (`id`),
  ADD CONSTRAINT `fk_produto` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
  ADD CONSTRAINT `fk_remetente` FOREIGN KEY (`remetente_id`) REFERENCES `remetente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
