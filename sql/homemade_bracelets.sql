-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Jul-2022 às 23:57
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
-- Banco de dados: `homemade_bracelets`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `id_admin` int(25) NOT NULL,
  `nome_admin` varchar(255) NOT NULL,
  `apelido_admin` varchar(255) NOT NULL,
  `email_admin` varchar(255) NOT NULL,
  `pass_admin` varchar(255) NOT NULL,
  `tel_admin` varchar(50) NOT NULL,
  `data_registo` varchar(255) NOT NULL,
  `data_log` varchar(255) NOT NULL,
  `foto_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`id_admin`, `nome_admin`, `apelido_admin`, `email_admin`, `pass_admin`, `tel_admin`, `data_registo`, `data_log`, `foto_admin`) VALUES
(1, 'Rafaela', 'Silva', 'rafaelasilva14@live.com.pt', '81dc9bdb52d04dc20036dbd8313ed055', '919275452', '2022-06-20 10:44:26', '2022-06-20 10:44:47', 'img/user/rafa.png'),
(5, 'Bárbara', 'Barbosa', 'barbarabarbosa22@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '914162095', '2022-06-20 10:47:51', '2022-07-06 23:20:42', 'img/user/eu.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactos`
--

CREATE TABLE `contactos` (
  `id_contacto` int(25) NOT NULL,
  `nome_contacto` varchar(255) NOT NULL,
  `email_contacto` varchar(255) NOT NULL,
  `msg_contacto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contactos`
--

INSERT INTO `contactos` (`id_contacto`, `nome_contacto`, `email_contacto`, `msg_contacto`) VALUES
(1, 'Bárbara Barbosa', 'barbarabarbosa22@hotmail.com', 'Olá!');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menus`
--

CREATE TABLE `menus` (
  `id_menu` int(25) NOT NULL,
  `nome_menu` varchar(255) NOT NULL,
  `url_menu` varchar(255) NOT NULL,
  `posicao_menu` int(25) NOT NULL,
  `target_menu` varchar(255) NOT NULL,
  `parent_id` int(25) NOT NULL,
  `lingua_menu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `menus`
--

INSERT INTO `menus` (`id_menu`, `nome_menu`, `url_menu`, `posicao_menu`, `target_menu`, `parent_id`, `lingua_menu`) VALUES
(1, 'Início', 'inicio.php', 1, '_self', 0, 'PT'),
(2, 'Modelos', 'pulseiras.php', 2, '_self', 0, 'PT'),
(3, 'Sobre', 'sobre.php', 3, '_self', 0, 'PT'),
(6, 'Porta-chaves', 'porta-chaves.php', 2, '_self', 2, 'PT'),
(7, 'Fios de Óculos', 'fios-oculos.php', 3, '_self', 2, 'PT'),
(8, 'Homepage', 'homepage.php', 1, '_self', 0, 'EN'),
(9, 'Models', 'bracelets.php', 2, '_self', 0, 'EN'),
(10, 'Bracelets', 'bracelets.php', 1, '_self', 9, 'EN'),
(11, 'Keychains', 'keychains.php', 2, '_self', 9, 'EN'),
(12, 'Glasses Chain', 'glasses-chain.php', 3, '_self', 9, 'EN'),
(13, 'About', 'about.php', 3, '_self', 0, 'EN'),
(14, 'Contact', 'contact.php', 4, '_self', 0, 'EN'),
(16, 'Contactar', 'contactar.php', 4, '_self', 0, 'PT'),
(17, 'Pulseiras', 'pulseiras.php', 1, '_self', 2, 'PT');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_modelos`
--

CREATE TABLE `menu_modelos` (
  `id_menu_modelos` int(25) NOT NULL,
  `nome_menu_modelos` varchar(255) NOT NULL,
  `url_menu_modelos` varchar(255) NOT NULL,
  `posicao_menu_modelos` int(25) NOT NULL,
  `target_menu_modelos` varchar(255) NOT NULL,
  `lingua_menu_modelos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `menu_modelos`
--

INSERT INTO `menu_modelos` (`id_menu_modelos`, `nome_menu_modelos`, `url_menu_modelos`, `posicao_menu_modelos`, `target_menu_modelos`, `lingua_menu_modelos`) VALUES
(1, 'Pulseiras', 'pulseiras-NA.php', 1, '_self', 'PT'),
(2, 'Porta-chaves', 'porta-chaves-NA.php', 2, '_self', 'PT'),
(3, 'Fios de Óculos', 'fios-oculos-NA.php', 3, '_self', 'PT'),
(6, 'Glasses-chain', 'glasses-chain-NA.php', 3, '_self', 'EN'),
(7, 'Bracelets', 'bracelets-NA.php', 1, '_self', 'EN'),
(8, 'Keychains', 'keychains-NA.php', 2, '_self', 'EN');

-- --------------------------------------------------------

--
-- Estrutura da tabela `page_inicio`
--

CREATE TABLE `page_inicio` (
  `id_page` int(25) NOT NULL,
  `nome_page` varchar(255) NOT NULL,
  `seccao_page` int(25) NOT NULL,
  `img_page` varchar(255) NOT NULL,
  `texto_page` text NOT NULL,
  `title_princ_page` varchar(255) NOT NULL,
  `title_sec_page` varchar(255) NOT NULL,
  `texto_passo1_page` varchar(255) NOT NULL,
  `texto_passo2_page` varchar(255) NOT NULL,
  `texto_passo3_page` varchar(255) NOT NULL,
  `lingua_page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `page_inicio`
--

INSERT INTO `page_inicio` (`id_page`, `nome_page`, `seccao_page`, `img_page`, `texto_page`, `title_princ_page`, `title_sec_page`, `texto_passo1_page`, `texto_passo2_page`, `texto_passo3_page`, `lingua_page`) VALUES
(1, 'Bem-vindo', 1, 'img/paginas/Capa.png', 'O melhor presente, para outros ou nós mesmos, é algo pessoal, personalizado e feito com todo o cuidado e atenção. Porque não apoiar o trabalho de alguém e ajudá-lo a atingir objetivos que nunca imaginou? Se concordas, estou à espera da tua ideia para poder realizá-la!', 'Homemade Bracelets', 'Bem-vindo à', '', '', '', 'PT'),
(2, 'Modelos', 2, 'img/paginas/', '', 'PODES PERSONALIZAR A TUA PULSEIRA!', '', 'Vê as cores que estão atualmente disponíveis. Podes aceder a essa informação na página SOBRE.', 'Escolha o modelo do produto que deseja. No entanto, se encontraste algum modelo fora desta página e que gostes mais, envia-me! Estou sempre à procura de novos desafios!\r\n\r\n', 'Contacte comigo, por email ou whatsapp.', 'PT'),
(3, 'Welcome', 1, 'img/paginas/CapaEN.png', 'The best gift, for others or ourselves, is something personal, personalized and made with great care and attention. Why not support someone else\'s work and help them achieve goals they never imagined? If you agree, I\'m waiting for your idea to make it happen!', 'Homemade Bracelets', 'Welcome to', '', '', '', 'EN'),
(4, 'Models', 2, 'img/paginas/', '', 'You can costumize your bracelet', '', 'See the colors that are currently available. You can access this information on the ABOUT page.', 'Choose the product model you want. However, if you found a model outside of this page that you like better, send it to me! I\'m always looking for new challenges!', 'Contact me by email or whatsapp.\r\n', 'EN');

-- --------------------------------------------------------

--
-- Estrutura da tabela `page_inicio_slide`
--

CREATE TABLE `page_inicio_slide` (
  `id_img` int(25) NOT NULL,
  `img` varchar(255) NOT NULL,
  `posicao_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `page_inicio_slide`
--

INSERT INTO `page_inicio_slide` (`id_img`, `img`, `posicao_img`) VALUES
(6, 'img/modelos-slide/Pulseira 7-7_.png', '2'),
(7, 'img/modelos-slide/Porta-chaves 3-3.png', '3'),
(8, 'img/modelos-slide/Modelo1.png', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `page_modelos`
--

CREATE TABLE `page_modelos` (
  `id_model` int(25) NOT NULL,
  `nome_model` varchar(255) NOT NULL,
  `name_model` varchar(255) NOT NULL,
  `img1_model` varchar(255) NOT NULL,
  `img2_model` varchar(255) NOT NULL,
  `posicao_model` int(25) NOT NULL,
  `tipo_model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `page_modelos`
--

INSERT INTO `page_modelos` (`id_model`, `nome_model`, `name_model`, `img1_model`, `img2_model`, `posicao_model`, `tipo_model`) VALUES
(4, 'Rainbow Diamonds', 'Rainbow Diamonds', 'img/modelos/Pulseira 2.png', 'img/modelos/Pulseira 2-2.png', 2, 'pulseira'),
(5, 'Stripe Zipper', 'Stripe Zipper', 'img/modelos/Pulseira 3.png', 'img/modelos/Pulseira 3-3.png', 3, 'pulseira'),
(6, 'Chevron Braid Simple', 'Chevron Braid Simple', 'img/modelos/Pulseira 4.png', 'img/modelos/Pulseira 4-4.png', 4, 'pulseira'),
(7, 'Weave Waves', 'Weave Waves', 'img/modelos/Pulseira 5.png', 'img/modelos/Pulseira 5-5.png', 5, 'pulseira'),
(8, 'Stripes ZigZag', 'Stripes ZigZag', 'img/modelos/Pulseira 6.png', 'img/modelos/Pulseira 6-6.png', 6, 'pulseira'),
(9, 'Rainbow Weave Braid', 'Rainbow Weave Braid', 'img/modelos/Pulseira 7.png', 'img/modelos/Pulseira 7-7_.png', 7, 'pulseira'),
(10, 'Polar Arrows', 'Polar Arrows', 'img/modelos/Pulseira 8.png', 'img/modelos/Pulseira 8-8.png', 8, 'pulseira'),
(11, 'Arrow Pointed Dots', 'Arrow Pointed Dots', 'img/modelos/Pulseira 9.png', 'img/modelos/Pulseira 9-9.png', 9, 'pulseira'),
(12, 'Entrançado', 'Braided', 'img/modelos/Oculos.png', 'img/modelos/Oculos-1.png', 1, 'fios-oculos'),
(13, 'HP Grynffindor Simples', 'HP Grynffindor Simple', 'img/modelos/Porta-chaves 1.png', 'img/modelos/Porta-chaves 2.png', 1, 'porta-chaves'),
(14, 'Limonada', 'Lemonade', 'img/modelos/Porta-chaves 3.png', 'img/modelos/Porta-chaves 3-3.png', 2, 'porta-chaves'),
(15, 'Celtic Spiral', 'Celtic Spiral', 'img/modelos/Pulseira 1.png', 'img/modelos/Pulseira 1-1.png', 1, 'pulseira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `page_sobre`
--

CREATE TABLE `page_sobre` (
  `id_page` int(25) NOT NULL,
  `nome_page` varchar(255) NOT NULL,
  `seccao_page` varchar(255) NOT NULL,
  `img_page` varchar(255) NOT NULL,
  `texto_page` text NOT NULL,
  `title_princ_page` varchar(255) NOT NULL,
  `title_sec_page` varchar(255) NOT NULL,
  `lingua_page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `page_sobre`
--

INSERT INTO `page_sobre` (`id_page`, `nome_page`, `seccao_page`, `img_page`, `texto_page`, `title_princ_page`, `title_sec_page`, `lingua_page`) VALUES
(1, 'Sobre mim', '1', 'img/paginas/rafa.png', 'Sou Engenheira do Ambiente, com o pé em tudo o que posso para poder ajudar o nosso planeta. Trabalhos manuais sempre foi um entretenimento desde pequena e fazer pulseiras, o principal. Com o tempo os materiais foram mudando, mas a vontade de aprender e me divertir a fazer coisas diferentes sempre esteve lá. Sou meticulosa e faço com cuidados e de forma a ficar satisfeita e orgulhosa do produto final.', 'Rafaela Silva', 'Olá, o meu nome é', 'PT'),
(2, 'About me', '1', 'img/paginas/rafaEN.png', 'I am an Environmental Engineer, with everything I can to help our planet. Handwork has always been an entertainment since I was little, and making bracelets was the main thing. Over time the materials changed, but the desire to learn and have fun doing different things was always there. I am meticulous and I do it with care to be satisfied and proud of the final product.', 'Rafaela Silva', 'Hi, my name is', 'EN'),
(4, 'Sobre mim', '2', '', 'Sempre gostei de ter hobbies para além da monotonia do dia a dia. Fosse ler, pintar, trabalhos manuais ou fazer pulseiras. A venda das mesmas surgiu com a necessidade de dar vazão à quantidade de fio que tinha em casa. Assim, criei página no instagram e comecei por vender a amigos e conhecidos. Entretanto surgiu a ideia de doar todos os lucros para ajudar uma associação de animais. Desde então que faço, para vender quando posso, mas também para oferecer a amigos e família, pois não há melhor presente do que aquele que é personalizado.', 'Como surgiu a Homemade Bracelets?', '', 'PT'),
(5, 'About me', '2', '', 'I always liked to have hobbies beyond the monotony of everyday life. Whether reading, painting, crafts, or making bracelets. The sale of the same came with the need to give vent to the amount of yarn I had at home. So, I created a page on Instagram and started selling to friends and acquaintances. However, the idea of ​​donating all profits to help an animal association came up. I\'ve been doing it ever since, to sell when I can, but also to offer to friends and family, because there\'s no better gift than a personalized one.', 'How did Homemade Bracelets come about?', '', 'EN'),
(6, 'Sobre o material', '3', 'img/paginas/material.jpeg', 'Com o tempo reparei que quanto melhor o material que comprava, mais bonito e durável seria o produto final. Sendo assim, o material que uso foi adquirido de forma a disponibilizar uma vasta gama de cores e teve-se em atenção a qualidade e brilho do fio. Os mesmos são feitos de fibra de poliéster: um material macio, liso, durável e com longo tempo de armazenamento.', '', '', 'PT'),
(7, 'About the material', '3', 'img/paginas/materialEN.jpeg', ' Over time I noticed that the better the material I bought, the more beautiful and durable the final product would be. Therefore, the material I use was acquired to provide a wide range of colors, and attention was paid to the quality and brightness of the yarn. They are made of polyester fiber: a soft, smooth, durable material with a long shelf life.', '', '', 'EN'),
(8, '', '4', '', '', 'Cores atualmente disponíveis', '', 'PT'),
(9, '', '4', '', '', 'Colors currently available', '', 'EN');

-- --------------------------------------------------------

--
-- Estrutura da tabela `page_sobre_cores`
--

CREATE TABLE `page_sobre_cores` (
  `id_cor` int(25) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `nome_cor` varchar(255) NOT NULL,
  `posicao_cor` int(25) NOT NULL,
  `parent_cor` varchar(255) NOT NULL,
  `name_cor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `page_sobre_cores`
--

INSERT INTO `page_sobre_cores` (`id_cor`, `cor`, `nome_cor`, `posicao_cor`, `parent_cor`, `name_cor`) VALUES
(4, '#850000', 'REF 01', 1, '1', ''),
(5, '#fa0000', 'REF02', 2, '1', ''),
(6, '#c02626', 'REF03', 3, '1', ''),
(8, '#ffcb8f', 'REF 10', 1, '2', ''),
(9, '#e59b34', 'REF11', 2, '2', ''),
(10, '#eeff00', 'REF20', 1, '3', ''),
(11, '#1f447b', 'Azuis', 1, '0', 'Blue'),
(12, '#1f447b', '3750', 1, '11', '3750'),
(13, '#1438aa', '796', 2, '11', ''),
(14, '#69bdd7', '3846', 3, '11', ''),
(15, '#aacfec', '3761', 4, '11', ''),
(16, '#0a7cd2', '3843', 5, '11', ''),
(17, '#f1d615', 'Amarelos', 2, '0', 'Yellow'),
(18, '#f1d615', '307', 1, '17', ''),
(19, '#e2bb1b', '726', 2, '17', ''),
(20, '#f2c31d', '725', 3, '17', ''),
(21, '#f8e200', '975', 4, '17', ''),
(22, '#f26700', 'Laranjas', 3, '0', 'Orange'),
(23, '#f26700', '970', 1, '22', ''),
(24, '#f23b03', '947', 2, '22', ''),
(25, '#e9a757', '3825', 3, '22', ''),
(26, '#ed1449', 'Rosas', 4, '0', 'Pink'),
(27, '#ed1449', '601', 1, '26', ''),
(28, '#fa8298', '956', 2, '26', ''),
(29, '#c40031', '915', 3, '26', ''),
(30, '#e6c5cb', '963', 4, '26', ''),
(31, '#ed92aa', '604', 5, '26', ''),
(32, '#e70106', 'Vermelhos', 5, '0', 'Red'),
(33, '#e70106', '817', 1, '32', ''),
(34, '#d90314', '304', 2, '32', ''),
(35, '#ec0307', '321', 3, '32', ''),
(36, '#df0808', '349', 4, '32', ''),
(37, '#bf0d0f', '816', 5, '32', ''),
(38, '#830b8a', 'Roxos', 6, '0', 'Purple'),
(39, '#830b8a', '550', 1, '38', ''),
(40, '#b44dbe', '3337', 2, '38', ''),
(41, '#bb7ea6', '3836', 3, '38', ''),
(42, '#8b60c1', '333', 4, '38', ''),
(43, '#01aca0', 'Verdes', 7, '0', 'Green'),
(44, '#01aca0', '3850', 1, '43', ''),
(45, '#529796', '561', 2, '43', ''),
(46, '#3dba6c', '701', 3, '43', ''),
(47, '#8dc40a', '704', 4, '43', ''),
(48, '#cad59e', '369', 5, '43', ''),
(49, '#d07b0a', 'Castanhos', 8, '0', 'Brown'),
(50, '#d07b0a', '782', 1, '49', ''),
(51, '#c88966', '3863', 2, '49', ''),
(52, '#bb500f', '434', 3, '49', ''),
(53, '#b27423', '829', 4, '49', ''),
(54, '#c3b9b7', 'Cinzentos', 9, '0', 'Grey'),
(55, '#c3b9b7', '648', 1, '54', ''),
(56, '#d9cec7', '3033', 2, '54', ''),
(57, '#e7dfd0', '613', 3, '54', ''),
(58, '#000000', 'Preto & Branco', 10, '0', 'Black & White');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id_admin`);

--
-- Índices para tabela `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Índices para tabela `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_menu`);

--
-- Índices para tabela `menu_modelos`
--
ALTER TABLE `menu_modelos`
  ADD PRIMARY KEY (`id_menu_modelos`);

--
-- Índices para tabela `page_inicio`
--
ALTER TABLE `page_inicio`
  ADD PRIMARY KEY (`id_page`);

--
-- Índices para tabela `page_inicio_slide`
--
ALTER TABLE `page_inicio_slide`
  ADD PRIMARY KEY (`id_img`);

--
-- Índices para tabela `page_modelos`
--
ALTER TABLE `page_modelos`
  ADD PRIMARY KEY (`id_model`);

--
-- Índices para tabela `page_sobre`
--
ALTER TABLE `page_sobre`
  ADD PRIMARY KEY (`id_page`);

--
-- Índices para tabela `page_sobre_cores`
--
ALTER TABLE `page_sobre_cores`
  ADD PRIMARY KEY (`id_cor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id_admin` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_contacto` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `menus`
--
ALTER TABLE `menus`
  MODIFY `id_menu` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `menu_modelos`
--
ALTER TABLE `menu_modelos`
  MODIFY `id_menu_modelos` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `page_inicio`
--
ALTER TABLE `page_inicio`
  MODIFY `id_page` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `page_inicio_slide`
--
ALTER TABLE `page_inicio_slide`
  MODIFY `id_img` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `page_modelos`
--
ALTER TABLE `page_modelos`
  MODIFY `id_model` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `page_sobre`
--
ALTER TABLE `page_sobre`
  MODIFY `id_page` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `page_sobre_cores`
--
ALTER TABLE `page_sobre_cores`
  MODIFY `id_cor` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
