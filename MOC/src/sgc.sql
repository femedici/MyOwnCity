CREATE DATABASE lp22019;
USE lp22019;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


-- Banco de Dados: `sgp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cod_cliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom_cliente` varchar(45) DEFAULT NULL,
  `end_cliente` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `cliente`
--

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `cod_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom_usuario` varchar(100) DEFAULT NULL,
  `login_usuario` varchar(70) DEFAULT NULL,
  `senha_usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`nom_usuario`, `login_usuario`, `senha_usuario`) VALUES ('Administrado', 'admin', 'admin');



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


