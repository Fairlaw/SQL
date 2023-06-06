CREATE DATABASE LOJA
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE LOJA;

CREATE TABLE PRODUTO(
PRODUTO_COD INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
PRODUTO_NOME VARCHAR(45) NOT NULL,
PRODUTO_PRECO FLOAT(8,2))
DEFAULT CHARSET = utf8;

CREATE TABLE DETALHE_PRODUTO(
DETALHE_COD INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
DETALHE_DESCRIÇÃO VARCHAR(100) NOT NULL,
FK_DETALHE_COD INT NOT NULL,
FOREIGN KEY(FK_DETALHE_COD)REFERENCES PRODUTO(PRODUTO_COD))
DEFAULT CHARSET = utf8;

INSERT INTO PRODUTO (PRODUTO_PRECO,PRODUTO_NOME)
VALUES  
  (1000.00, 'Smartphone'),
  (2500.00, 'TV'),
  (150.00, 'Fone de Ouvido'),
  (800.00, 'Notebook'),
  (300.00, 'Tablet'),
  (2000.00, 'Câmera Digital'),
  (120.00, 'Caixa de Som'),
  (350.00, 'Mouse'),
  (1800.00, 'Monitor'),
  (500.00, 'Impressora');
  
  SELECT * FROM teste;
  
  INSERT INTO DETALHE_PRODUTO (DETALHE_DESCRIÇÃO,FK_DETALHE_COD)
  VALUES
  ('Um dispositivo móvel avançado que combina funções de telefone celular com recursos de computador, como acesso à internet, aplicativos e câmera integrada.','1'),
  ('Um aparelho de televisão com tela plana que permite assistir a programas e filmes com qualidade de imagem e som.','2'),
  ('Um dispositivo de áudio usado para ouvir música, assistir a vídeos ou realizar chamadas, proporcionando som de alta qualidade diretamente nos ouvidos.','3'),
  ('Um computador portátil e compacto que permite realizar tarefas como navegação na internet, edição de documentos e reprodução de mídia em qualquer lugar.','4'),
  ('Um dispositivo móvel em formato de prancheta, com tela sensível ao toque, usado para acessar a internet, executar aplicativos e consumir conteúdo multimídia.','5'),
  ('Um dispositivo eletrônico usado para capturar imagens e gravar vídeos, permitindo armazenar e compartilhar momentos especiais com alta qualidade.','6'),
  ('Um dispositivo de áudio externo que amplifica o som de dispositivos eletrônicos, como computadores, smartphones e tablets, proporcionando uma experiência sonora mais imersiva.','7'),
  ('Um periférico de computador usado para controlar o movimento do cursor na tela, permitindo interações precisas e facilitando a navegação em programas e aplicativos.','8'),
  ('Um dispositivo de exibição de vídeo que mostra as informações geradas pelo computador, permitindo visualizar imagens, vídeos e documentos com clareza e nitidez.','9'),
  ('Um dispositivo que produz cópias físicas de documentos ou imagens digitais em papel, permitindo imprimir textos, fotos e gráficos com qualidade e rapidez.','10');
  
  UPDATE PRODUTO SET PRODUTO_PRECO = 2000 WHERE PRODUTO_COD = 1;
  
  CREATE TABLE TESTE (
  TESTE_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  TESTE_NOME VARCHAR (45),
  TESTE_PRECO FLOAT (8,2));
  
  /*
  ALTER TABLE TESTE DROP COLUMN TESTE_ID;
  ALTER TABLE TESTE ADD TESTE_ID INT;
  ALTER TABLE TESTE MODIFY COLUMN TESTE_NOME INT;
  ALTER TABLE TESTE MODIFY COLUMN TESTE_ID INT NOT NULL;
  ALTER TABLE TESTE ADD CONSTRAINT PRIMARY KEY (TESTE_NOME);
  ALTER TABLE TESTE ADD PRIMARY KEY (TESTE_ID);
*/
  describe teste