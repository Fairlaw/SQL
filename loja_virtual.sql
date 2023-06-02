-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/06/2023 às 21:15
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_virtual`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `FK_PEDIDO_COD` int(11) NOT NULL,
  `FK_PRODUTO_COD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `carrinho`
--

INSERT INTO `carrinho` (`FK_PEDIDO_COD`, `FK_PRODUTO_COD`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `CLIENTE_COD` int(11) NOT NULL,
  `CLIENTE_NOME` varchar(50) NOT NULL,
  `CLIENTE_CPF` varchar(14) NOT NULL,
  `CLIENTE_NASCIMENTO` date DEFAULT NULL,
  `CLIENTE_SEXO` enum('M','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`CLIENTE_COD`, `CLIENTE_NOME`, `CLIENTE_CPF`, `CLIENTE_NASCIMENTO`, `CLIENTE_SEXO`) VALUES
(1, 'João Silva', '111.111.111-11', '2000-01-01', 'M'),
(2, 'Maria Souza', '222.222.222-22', '1995-05-15', 'F'),
(3, 'Pedro Santos', '333.333.333-33', '1988-10-30', 'M'),
(4, 'Ana Oliveira', '444.444.444-44', '1992-07-22', 'F'),
(5, 'Lucas Pereira', '555.555.555-55', '1985-03-10', 'M'),
(6, 'Carla Rodrigues', '666.666.666-66', '1998-11-05', 'F'),
(7, 'Márcio Almeida', '777.777.777-77', '1990-12-25', 'M'),
(8, 'Juliana Costa', '888.888.888-88', '1987-09-18', 'F'),
(9, 'Ricardo Mendes', '999.999.999-99', '1993-06-08', 'M'),
(10, 'Fernanda Lima', '000.000.000-00', '1996-04-03', 'F');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `PEDIDO_COD` int(11) NOT NULL,
  `DATA_HORA` datetime NOT NULL DEFAULT current_timestamp(),
  `FK_CLIENTE_COD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`PEDIDO_COD`, `DATA_HORA`, `FK_CLIENTE_COD`) VALUES
(1, '2023-06-02 15:56:19', 1),
(2, '2023-06-02 15:56:19', 2),
(3, '2023-06-02 15:56:19', 3),
(4, '2023-06-02 15:56:19', 4),
(5, '2023-06-02 15:56:19', 5),
(6, '2023-06-02 15:56:19', 6),
(7, '2023-06-02 15:56:19', 7),
(8, '2023-06-02 15:56:19', 8),
(9, '2023-06-02 15:56:19', 9),
(10, '2023-06-02 15:56:19', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `PRODUTO_COD` int(11) NOT NULL,
  `PRODUTO_NOME` varchar(45) NOT NULL,
  `PRODUTO_PRECO` float(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`PRODUTO_COD`, `PRODUTO_NOME`, `PRODUTO_PRECO`) VALUES
(1, 'Smartphone', 1000.00),
(2, 'TV', 2500.00),
(3, 'Fone de Ouvido', 150.00),
(4, 'Notebook', 800.00),
(5, 'Tablet', 300.00),
(6, 'Câmera Digital', 2000.00),
(7, 'Caixa de Som', 120.00),
(8, 'Mouse', 350.00),
(9, 'Monitor', 1800.00),
(10, 'Impressora', 500.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_detalhe`
--

CREATE TABLE `produto_detalhe` (
  `DETALHE_COD` int(11) NOT NULL,
  `DETALHE_DESCRICAO` text NOT NULL,
  `FK_PRODUTO_COD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produto_detalhe`
--

INSERT INTO `produto_detalhe` (`DETALHE_COD`, `DETALHE_DESCRICAO`, `FK_PRODUTO_COD`) VALUES
(1, 'Um dispositivo móvel avançado que combina funções de telefone celular com recursos de computador, como acesso à internet, aplicativos e câmera integrada.', 1),
(2, 'Um aparelho de televisão com tela plana que permite assistir a programas e filmes com qualidade de imagem e som.', 2),
(3, 'Um dispositivo de áudio usado para ouvir música, assistir a vídeos ou realizar chamadas, proporcionando som de alta qualidade diretamente nos ouvidos.', 3),
(4, 'Um computador portátil e compacto que permite realizar tarefas como navegação na internet, edição de documentos e reprodução de mídia em qualquer lugar.', 4),
(5, 'Um dispositivo móvel em formato de prancheta, com tela sensível ao toque, usado para acessar a internet, executar aplicativos e consumir conteúdo multimídia.', 5),
(6, 'Um dispositivo eletrônico usado para capturar imagens e gravar vídeos, permitindo armazenar e compartilhar momentos especiais com alta qualidade.', 6),
(7, 'Um dispositivo de áudio externo que amplifica o som de dispositivos eletrônicos, como computadores, smartphones e tablets, proporcionando uma experiência sonora mais imersiva.', 7),
(8, 'Um periférico de computador usado para controlar o movimento do cursor na tela, permitindo interações precisas e facilitando a navegação em programas e aplicativos.', 8),
(9, 'Um dispositivo de exibição de vídeo que mostra as informações geradas pelo computador, permitindo visualizar imagens, vídeos e documentos com clareza e nitidez.', 9),
(10, 'Um dispositivo que produz cópias físicas de documentos ou imagens digitais em papel, permitindo imprimir textos, fotos e gráficos com qualidade e rapidez.', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD KEY `FK_PEDIDO_COD` (`FK_PEDIDO_COD`),
  ADD KEY `FK_PRODUTO_COD` (`FK_PRODUTO_COD`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CLIENTE_COD`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`PEDIDO_COD`),
  ADD KEY `FK_CLIENTE_COD` (`FK_CLIENTE_COD`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`PRODUTO_COD`);

--
-- Índices de tabela `produto_detalhe`
--
ALTER TABLE `produto_detalhe`
  ADD PRIMARY KEY (`DETALHE_COD`),
  ADD KEY `FK_PRODUTO_COD` (`FK_PRODUTO_COD`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `CLIENTE_COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `PEDIDO_COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `PRODUTO_COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produto_detalhe`
--
ALTER TABLE `produto_detalhe`
  MODIFY `DETALHE_COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `carrinho_ibfk_1` FOREIGN KEY (`FK_PEDIDO_COD`) REFERENCES `pedido` (`PEDIDO_COD`),
  ADD CONSTRAINT `carrinho_ibfk_2` FOREIGN KEY (`FK_PRODUTO_COD`) REFERENCES `produto` (`PRODUTO_COD`);

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`FK_CLIENTE_COD`) REFERENCES `cliente` (`CLIENTE_COD`);

--
-- Restrições para tabelas `produto_detalhe`
--
ALTER TABLE `produto_detalhe`
  ADD CONSTRAINT `produto_detalhe_ibfk_1` FOREIGN KEY (`FK_PRODUTO_COD`) REFERENCES `produto` (`PRODUTO_COD`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
