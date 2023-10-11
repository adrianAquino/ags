-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Out-2023 às 22:01
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ags`
--
CREATE DATABASE IF NOT EXISTS `ags` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ags`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `dataNascimento` date NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `numero` varchar(6) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `avaliacao` varchar(20) NOT NULL,
  `observacao` varchar(500) NOT NULL,
  `dataCadastro` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `email`, `senha`, `sexo`, `dataNascimento`, `cpf`, `telefone`, `cep`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `avaliacao`, `observacao`, `dataCadastro`) VALUES
(1, 'Adrian Kauan', 'kauan.melo2013@hotmail.com', '123456789', 'M', '0000-00-00', '14990855914', '44997643857', '87565000', 'Rua Suica', '564', 'Centro', 'Cafezal do Sul', 'PR', '', 'aa', '2023-07-28 10:25:32'),
(2, 'Jhimy Ferrari', 'jferrari@gmail.com', '874021', 'Masculino', '0000-00-00', '98765443213', '6767676453', '87570000', 'Rua Londres', '90', 'Centro', 'Perobal', 'PR', '', 'a', '2023-09-29 11:13:18'),
(3, 'Jhimy Ferrari', 'jferrari@gmail.com', '874021', 'Masculino', '0000-00-00', '98765443213', '6767676453', '87570000', 'Rua Londres', '90', 'Centro', 'Perobal', 'PR', '', 'a', '2023-09-29 11:19:13'),
(6, 'Ivanildo Rocha de Melo', 'ivanildorochademelo@gmail.com', '9080', 'Masculino', '0000-00-00', '58923292915', '44999968305', '87565000', 'Rodovia PR 485 Italo Orcelli', '445C', 'Santa Maria', 'Cafezal do Sul', 'Pa', '', 'aa', '2023-10-06 15:36:38'),
(7, 'Ivanildo Rocha de Melo', 'ivanildorochademelo@gmail.com', '9080', 'Masculino', '0000-00-00', '58923292915', '44999968305', '87565000', 'Rodovia PR 485 Italo Orcelli', '445C', 'Santa Maria', 'Cafezal do Sul', 'Pa', '', 'aa', '2023-10-06 15:42:34'),
(9, 'Adrian Kauan Aquino de Melo', 'kauan.melo2013@hotmail.com', 'satrsrtut', 'Masculino', '0000-00-00', '149.908.559', '44997643857', '87565-000', 'Rua Suíça', '564', 'Centro ', 'Cafezal do Sul', 'Pa', '', 'ikh', '2023-10-06 15:56:05'),
(10, 'Adrian Kauan Melo', 'kauan.melo2013@hotmail.com', 'asdewq', 'Masculino', '2023-10-03', '149.908.559', '44997643857', '87565-000', 'Rua Suíça', '564', 'Centro ', 'Cafezal do Sul', 'PR', '', 'afa', '2023-10-06 15:58:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio`
--

CREATE TABLE `exercicio` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `imagem` varchar(30) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `grupomuscular_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `exercicio`
--

INSERT INTO `exercicio` (`id`, `nome`, `imagem`, `descricao`, `grupomuscular_id`) VALUES
(4, 'Supino Reto', 'Design_sem_nome__32_.jpg', 'teste', 2),
(5, 'Leg Press 90', 'leg90.png', 'teste', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupomuscular`
--

CREATE TABLE `grupomuscular` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `imagem` varchar(20) NOT NULL,
  `descricao` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `grupomuscular`
--

INSERT INTO `grupomuscular` (`id`, `nome`, `imagem`, `descricao`) VALUES
(1, 'Braço', '6147326.png', 'teste'),
(2, 'Peito', '6583972.png', 'bora bill');

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal`
--

CREATE TABLE `personal` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `dataNascimento` date NOT NULL,
  `cref` varchar(15) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(6) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `observacao` varchar(500) NOT NULL,
  `estatus` varchar(10) NOT NULL DEFAULT 'ativo',
  `dataCadastro` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `personal`
--

INSERT INTO `personal` (`id`, `nome`, `email`, `senha`, `sexo`, `dataNascimento`, `cref`, `cpf`, `cnpj`, `telefone`, `cep`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `observacao`, `estatus`, `dataCadastro`) VALUES
(2, 'Juliano Ferreira', 'ferreiraj@gmail.com', 'juferreira20', 'Ma', '0000-00-00', '676131546133', '9713165', '', '8746513231', '87570000', 'Rua Londres', '87', 'Centro', 'Iporã', 'PR', '', 'ativo', '2023-09-29 10:33:15'),
(3, 'Juliano Ferreira 2', 'ferreiraj2@gmail.com', '98762914', 'Ma', '0000-00-00', '216871231987', '97746513', '', '874651323', '87570000', 'Rua Londres', '87', 'Centro', 'Iporã', 'PR', 'afaga', 'ativo', '2023-09-29 10:33:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `treino`
--

CREATE TABLE `treino` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `estatus` varchar(8) NOT NULL DEFAULT 'ativo',
  `descricao` varchar(100) NOT NULL,
  `idExercicios` int(11) NOT NULL,
  `numSeries` int(11) NOT NULL,
  `numRepeticoes` int(11) NOT NULL,
  `tempoDescanso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `exercicio`
--
ALTER TABLE `exercicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_exercicio_grupomuscular` (`grupomuscular_id`);

--
-- Índices para tabela `grupomuscular`
--
ALTER TABLE `grupomuscular`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `treino`
--
ALTER TABLE `treino`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `exercicio`
--
ALTER TABLE `exercicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `grupomuscular`
--
ALTER TABLE `grupomuscular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `treino`
--
ALTER TABLE `treino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `exercicio`
--
ALTER TABLE `exercicio`
  ADD CONSTRAINT `fk_exercicio_grupomuscular` FOREIGN KEY (`grupomuscular_id`) REFERENCES `grupomuscular` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
