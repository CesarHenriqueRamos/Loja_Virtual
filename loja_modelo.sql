-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Nov-2018 às 15:22
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja_modelo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `rs_categorias`
--

CREATE TABLE `rs_categorias` (
  `cate_id` int(11) NOT NULL,
  `cate_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `rs_categorias`
--

INSERT INTO `rs_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
(1, 'Geral', 'geral'),
(2, 'Camisas', 'categoria-camisa'),
(3, 'Calças', 'categoria-calcas'),
(4, 'Tênis', 'categoria-tenis'),
(5, 'Sapatos', 'categoria-sapatos'),
(8, 'Camisetas', 'camisetas'),
(9, 'Botas', 'botas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rs_clientes`
--

CREATE TABLE `rs_clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_sobrenome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cli_numero` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_bairro` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cidade` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cli_uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cep` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cpf` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `cli_rg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_ddd` int(2) NOT NULL,
  `cli_fone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_celular` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `cli_pass` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cli_data_nasc` date NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `rs_clientes`
--

INSERT INTO `rs_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_cpf`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_nasc`, `cli_data_cad`, `cli_hora_cad`) VALUES
(1, 'Hugo', 'Vasconcelos', 'Rua A', '350', 'Cabana', 'BH', 'MG', '31535522', '55555512365', '3333333333333333', 31, '975275084', '975275084', 'hugovasconcelosf@hotmail.com', '202cb962ac59075b964b07152d234b70', '2017-08-16', '2017-08-30', '15:30:00'),
(2, 'Pedro', 'Freitas', 'Rua X', '55', '5555', '5555', 'MG', '5555555', '5555555', '55555555', 55, '5555555', '555555555', 'pedro@hotmail.com', '123', '2017-08-30', '2017-08-30', '15:30:00'),
(4, 'Hugo', 'Vasconcelos', 'Rua A', '150', 'Teste', 'Belo Horizonte', 'MG', '31525698', '09055535600', 'MG1111111111', 31, '333333333', '333333333', 'teste@teste.com', 'e429552304bbdc8e8f36140784276d98cc981767', '0000-00-00', '2017-09-04', '20:01:19'),
(7, 'Marcos', 'Paulo', 'Rua X', '150', 'Teste', 'Belo Horizonte', 'MG', '31525698', '12345678900', '3333333', 31, '3333333333', '3333333', 'marcos@hotmail.com', 'c494c6a151be664c21c44ade2d32347002379e3c', '0000-00-00', '2017-09-04', '22:58:09'),
(9, 'Fábio', 'Vasconcelos', 'Rua S', '220', 'Teste', 'Belo Horizonte', 'MG', '31525698', '12345698700', '3333333333', 31, '333333333', '33333333', 'fabio@hotmail.com', '3fc812212284dc37b216abe1270fcdcf81bbae69', '0000-00-00', '2017-09-04', '23:32:03'),
(13, 'Paula', 'Freitas', 'Rua A', '190', 'Cabana', 'BH', 'MG', '31535522', '09028135600', '3333333333333333', 31, '975275084', '975275084', 'cesar.ramos.maradona@hotmail.com', '202cb962ac59075b964b07152d234b70', '1990-08-16', '2017-09-05', '00:25:40'),
(14, 'Marcio', 'Santos', 'Rua S', '150', 'Teste', 'Belo Horizonte', 'MG', '31525698', '12312312300', '555555', 31, '555555555', '5555555555', 'marcio@hotmail.com', 'd5baf80c6599692c4fdeaf8a2a521444', '0000-00-00', '2017-09-05', '19:35:21'),
(15, 'Hugo', 'de Freitas', 'Rua Corretor ', '50', 'Cabana', 'Belo Horizonte', 'MG', '31535522', '55555555365', '5555', 31, '975275084', '975275084', 'hugo@hotmail.com', 'a6afc8b085f77a4bfb264236ec33f903', '2017-09-13', '2017-09-05', '19:38:37'),
(19, 'Gabriel', 'Martins', 'Rua Augusta Alvarenga ', '55', '555', 'BELO HORIZONTE', 'MG', '31535670', '55555555365', '555555', 55, '971816424', '971816424', 'gab@hotmail.com', '70cd6c95032f7d5a365ec883139e4b34', '2017-09-13', '2017-09-05', '14:50:17'),
(20, 'Henrique', 'Ramos', 'rua são vicente', '2735', 'setor 03', 'Ariquemes', 'RO', '76870364', '02321728205', '1242525', 69, '93771506', '93771506', 'henrique252742@gmail.com', '202cb962ac59075b964b07152d234b70', '2018-10-10', '2018-10-29', '16:59:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rs_imagens`
--

CREATE TABLE `rs_imagens` (
  `img_id` int(11) NOT NULL,
  `img_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_pro_id` int(11) NOT NULL,
  `img_pasta` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `rs_imagens`
--

INSERT INTO `rs_imagens` (`img_id`, `img_nome`, `img_pro_id`, `img_pasta`) VALUES
(1, 'tenis-couro-01.jpg', 7, ''),
(2, 'tenis-couro-02.jpg', 7, ''),
(3, 'tenis-couro-03.jpg', 7, ''),
(5, '170911144035tenis-mizuno-wave.jpg.jpg', 16, ''),
(6, '170911144235d16-1095-791-zoom1.jpg.jpg', 16, ''),
(8, '170911144251d16-1095-791-zoom3.jpg.jpg', 16, ''),
(12, '170911150038d16-1095-791-zoom4.jpg.jpg', 16, ''),
(17, '181031092816captura-de-tela-7-.png.png', 17, ''),
(18, '181031092825captura-de-tela-12-.png.png', 17, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rs_pedidos`
--

CREATE TABLE `rs_pedidos` (
  `ped_id` int(11) NOT NULL,
  `ped_data` date NOT NULL,
  `ped_hora` time NOT NULL,
  `ped_cliente` int(11) NOT NULL,
  `ped_cod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ped_ref` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_forma` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_tipo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_codigo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `ped_frete_valor` double(9,2) DEFAULT '0.00',
  `ped_frete_tipo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `rs_pedidos`
--

INSERT INTO `rs_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(76, '2017-09-13', '21:50:29', 13, '17091319094013', '17091319094013', 'Aguardando pagamento', 'Boleto', 'PAGSEGURO', 'E2FD5A26-7B9E-452F-ACB5-46EA1BAEC43E', 16.10, NULL),
(79, '2017-09-14', '11:40:03', 13, '17091411095813', '17091411095813', 'Aguardando pagamento', 'Cartao', 'PAGSEGURO', '5FAA3B26-D1B4-49ED-86BE-DAFE5E15F2FA', 16.10, NULL),
(80, '2017-09-14', '12:02:55', 13, '17091412095013', '17091412095013', 'Pago', 'Cartao', 'PAGSEGURO', 'AF5C0929-BF8A-4136-86F6-A50F53E720B8', 16.10, NULL),
(81, '2017-09-14', '12:11:18', 13, '17091412091413', '17091412091413', 'NAO', '', '', '', 16.10, NULL),
(82, '2018-10-29', '15:55:19', 13, '18102915101413', '18102915101413', 'Aguardando pagamento', 'Cartao', 'PAGSEGURO', '7ADEC74A-5AD2-4ABF-BA54-4131F40C4BAD', 30.30, NULL),
(89, '2018-10-30', '12:24:06', 20, '18103012100120', '18103012100120', 'NAO', '', '', '', 34.90, NULL),
(90, '2018-10-31', '09:35:15', 20, '18103109100920', '18103109100920', 'Aguardando pagamento', 'Cartao', 'PAGSEGURO', '28072045-5365-460D-A20B-50388D51285A', 30.30, NULL),
(91, '2018-10-31', '09:43:32', 20, '18103109102620', '18103109102620', 'Aguardando pagamento', 'Cartao', 'PAGSEGURO', 'CA6C8CA5-8320-4B72-912A-9B1A4003CF35', 34.90, NULL),
(92, '2018-10-31', '16:14:27', 20, '18103116102220', '18103116102220', 'NAO', '', '', '', 34.90, NULL),
(93, '2018-10-31', '16:32:38', 20, '18103116103320', '18103116103320', 'NAO', '', '', '', 34.90, NULL),
(94, '2018-10-31', '17:59:42', 20, '18103117103620', '18103117103620', 'NAO', '', '', '', 34.90, NULL),
(95, '2018-10-31', '18:01:21', 20, '18103118100820', '18103118100820', 'NAO', '', '', '', 34.90, NULL),
(96, '2018-10-31', '18:05:26', 20, '18103118101620', '18103118101620', 'NAO', '', '', '', 34.90, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rs_pedidos_itens`
--

CREATE TABLE `rs_pedidos_itens` (
  `item_id` int(11) NOT NULL,
  `item_produto` int(11) NOT NULL,
  `item_valor` double(9,2) NOT NULL,
  `item_qtd` int(6) NOT NULL,
  `item_ped_cod` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `rs_pedidos_itens`
--

INSERT INTO `rs_pedidos_itens` (`item_id`, `item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(170, 4, 300.00, 1, '17091319094013'),
(171, 1, 80.00, 1, '17091319094013'),
(176, 16, 0.03, 1, '17091411095813'),
(177, 1, 0.01, 1, '17091412095013'),
(178, 3, 250.00, 1, '17091412095013'),
(179, 6, 300.00, 1, '17091412095013'),
(180, 1, 0.01, 1, '17091412091413'),
(181, 16, 600.00, 1, '18102915101413'),
(182, 2, 60.00, 1, '18102915101413'),
(183, 1, 120.00, 1, '18103009101220'),
(184, 1, 120.00, 1, '18103009101220'),
(185, 1, 120.00, 1, '18103009100520'),
(186, 1, 120.00, 1, '18103009100520'),
(187, 1, 120.00, 1, '18103009100520'),
(188, 1, 120.00, 1, '18103009100520'),
(189, 2, 60.00, 1, '18103012100120'),
(190, 1, 120.00, 2, '18103109100920'),
(191, 1, 120.00, 1, '18103109102620'),
(192, 1, 120.00, 1, '18103116102220'),
(193, 1, 120.00, 1, '18103116103320'),
(194, 1, 120.00, 1, '18103117103620'),
(195, 1, 120.00, 1, '18103118100820'),
(196, 16, 500.00, 1, '18103118101620');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rs_produtos`
--

CREATE TABLE `rs_produtos` (
  `pro_id` int(11) NOT NULL,
  `pro_categoria` int(11) NOT NULL,
  `pro_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_peso` double(9,3) NOT NULL,
  `pro_valor` double(9,2) NOT NULL,
  `pro_largura` int(11) NOT NULL,
  `pro_altura` int(11) NOT NULL,
  `pro_comprimento` int(11) NOT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_modelo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_ref` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_fabricante` int(11) NOT NULL,
  `pro_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `pro_frete_free` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Não'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `rs_produtos`
--

INSERT INTO `rs_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_largura`, `pro_altura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_free`) VALUES
(1, 2, 'Camisa Social', 'Desc', 0.200, 120.00, 10, 10, 10, '03.jpg', 'camisa-social', 5, 'modelo 054515', 'REF', 1, '1', 'gratuito'),
(2, 2, 'Camisa Polo', 'Descrição da Camisa Polo Fila Open Preta e Cinza A Fila é uma marca italiana que está presente nos principais esportes e eventos esportivos do mundo, especializada na produção de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpiração seja absorvida e rapidamente transportada para o tecido que facilitará a evaporação mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especificações da Camisa Polo Fila Open Preta e Cinza Conheça as suas características: - Perfil: Tênis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evaporação. Ela mantém o corpo na temperatura ideal para a prática esportiva e proporciona maior conforto e rápida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em botão, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabricação; - Origem: Nacional. Dimensões do Produto DIMENSÕES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observações: As medidas são aproximadas e podem variar para mais ou para menos de uma peça para outra.\r\nTodas as informações divulgadas são de responsabilidade do fabricante/fornecedor.\r\nImagens Meramente Ilustrativas.', 0.060, 60.00, 50, 50, 50, 'camisa.jpg', 'camisa-polo', 10, 'modelo 054515', '15154', 1, '1', 'Não'),
(3, 3, 'Calça Jeans', 'Calça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.\r\nCalça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.', 0.100, 250.00, 50, 50, 50, 'calca.jpg', 'calca-jeans', 15, '0654655', '2998415', 1, '1', 'Não'),
(4, 3, 'Calça de Moleton', 'Calça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.\r\nCalça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.', 0.100, 300.00, 50, 50, 50, 'calca02.jpg', 'calca-de-moleton', 50, '15445', '554888', 1, '1', 'Não'),
(5, 4, 'Tênis Corvette Slim Freeway', 'Com leve amortecimento, o Tênis Corvette Slim Freeway conta com conforto e design esportivo para você acelerar em direção à autenticidade. Ideal para acompanhar os apaixonados por carros.', 0.100, 1250.00, 50, 50, 50, 'tenis-corvete.jpg', 'tenis-corvete', 10, '265566', '5565699', 1, '1', 'Não'),
(6, 4, 'Tênis Asics GEL Excite', 'O Tênis Asics GEL Excite 4 é desenvolvido com tecnologias que melhoram o desempenho nas corridas e caminhadas. Sistema de gel com absorção de impacto e EVA que retorna ao estado original com rapidez. ', 0.100, 300.00, 50, 50, 50, 'tenis-asics.jpg', 'tenis-asics-gel', 1, '111555', '1589555', 1, '1', 'Não'),
(7, 4, 'Tênis Couro Nike Shox Avenue', 'Apresentando amortecimento de 4 colunas no calcanhar, o Tênis Couro Nike Shox Avenue LTR auxilia na distribuição do peso. Conta com design esportivo, tração e sistema de amarração que envolve os pés. ', 0.100, 750.00, 50, 50, 50, 'tenis-couro.jpg', 'tenis-couro', 10, '05515151', '11558566', 1, '1', 'Não'),
(8, 4, 'Tênis Nike Shox Avenue', 'Aproveite a casualidade do dia a dia com muito estilo e pronto para aceitar qualquer convite. Com o Tênis Nike Shox Avenue você completa o visual com originalidade e desfruta de máximo conforto. ', 0.100, 600.00, 50, 50, 50, 'tenis-nike-shox.jpg', 'tenis-nike-shox', 50, '05899644', '05485515', 1, '1', 'Não'),
(9, 5, 'Sapatênis Burn York', '<p>Aposte em combina&ccedil;&otilde;es masculinas para o &ldquo;casual day&rdquo; com o Sapat&ecirc;nis Burn York. Conferindo versatilidade ao visual, o modelo inspirado no esporte tem perfuros laterais e detalhe em ilh&oacute;s colorido.</p>', 0.100, 800.00, 50, 50, 50, 'sapatenis-burn.jpg', 'sapatenis-burn-york', 20, '84484884', '84845226', 1, '1', 'Não'),
(16, 4, 'Tênis Mizuno Wave ', '<p>O T&ecirc;nis Mizuno Wave Elevation 2 proporciona muito mais conforto durante as suas corridas. Com nova entressola absorve os impactos e garante uma melhor estabilidade durante as pisadas.</p>', 0.200, 500.00, 10, 10, 10, '170911121349tenis-mizuno-wave.jpg.jpg', 'tenis-mizuno-wave', 99, '45484448', '488964', 0, 'S', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rs_user`
--

CREATE TABLE `rs_user` (
  `user_id` int(11) NOT NULL,
  `user_nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_pw` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `rs_user`
--

INSERT INTO `rs_user` (`user_id`, `user_nome`, `user_email`, `user_pw`) VALUES
(1, 'Cesar Henrique', 'cesar252742@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Administrador Loja Modelo', 'lojavirtualmodelo@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rs_categorias`
--
ALTER TABLE `rs_categorias`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `rs_clientes`
--
ALTER TABLE `rs_clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indexes for table `rs_imagens`
--
ALTER TABLE `rs_imagens`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `rs_pedidos`
--
ALTER TABLE `rs_pedidos`
  ADD PRIMARY KEY (`ped_id`);

--
-- Indexes for table `rs_pedidos_itens`
--
ALTER TABLE `rs_pedidos_itens`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `rs_produtos`
--
ALTER TABLE `rs_produtos`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `rs_user`
--
ALTER TABLE `rs_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rs_categorias`
--
ALTER TABLE `rs_categorias`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rs_clientes`
--
ALTER TABLE `rs_clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rs_imagens`
--
ALTER TABLE `rs_imagens`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rs_pedidos`
--
ALTER TABLE `rs_pedidos`
  MODIFY `ped_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `rs_pedidos_itens`
--
ALTER TABLE `rs_pedidos_itens`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `rs_produtos`
--
ALTER TABLE `rs_produtos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rs_user`
--
ALTER TABLE `rs_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
