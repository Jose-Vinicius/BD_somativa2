/*Criação do schema*/
CREATE SCHEMA IF NOT EXISTS BD_SOMATIVA2;

/*Criação das tabelas*/
CREATE TABLE IF NOT EXISTS vinicola(
	codVinicola BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	nomeVinicola VARCHAR(100) NOT NULL,
    descricaoVinicola TEXT NOT NULL,
    foneVinicola VARCHAR(15) NOT NULL,
    emailVinicola VARCHAR(15) NOT NULL,
    codRegiao BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS vinho(
	codVinho BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nomeVinho VARCHAR(50) NOT NULL,
    tipoVinho VARCHAR(30) NOT NULL,
    anoVinho INT NOT NULL,
    descricaoVinho TEXT NOT NULL,
    codVinicola BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS regiao(
	codRegiao BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nomeRegiao VARCHAR(100) NOT NULL,
    descricaoRegiao TEXT NOT NULL
);

/*Adicionando as chaves estrangeiras nas tabelas*/

ALTER TABLE vinicola ADD CONSTRAINT fk_regiaoVinicola FOREIGN KEY (codRegiao) REFERENCES regiao (codRegiao);

ALTER TABLE vinho ADD CONSTRAINT fk_vinhoVinicola FOREIGN KEY (codVinicola) REFERENCES vinicola (codVinicola);

/*INSERTS das regiões de vinicolas*/
INSERT INTO regiao(nomeRegiao, descricaoRegiao) VALUES("Mendoza, Argentina", "Mendoza é a principal região vinícola da Argentina e é conhecida por seus vinhos Malbec. A região está localizada nos pés da Cordilheira dos Andes e possui um clima semiárido, com grande amplitude térmica diária, criando condições ideais para o cultivo de uvas de alta qualidade.");

INSERT INTO regiao(nomeRegiao, descricaoRegiao) VALUES("La Rioja, Espanha", "A Rioja é uma das regiões vinícolas mais antigas da Espanha e é famosa por seus vinhos tintos à base de Tempranillo. A região é dividida em três sub-regiões: Rioja Alta, Rioja Baja e Rioja Alavesa, cada uma contribuindo com características únicas aos vinhos. Além dos tintos, a Rioja também produz vinhos brancos frescos e aromáticos.");

INSERT INTO regiao(nomeRegiao, descricaoRegiao) VALUES("Napa Valley, Califórnia (EUA)", "O Napa Valley, na Califórnia, é um dos principais destinos vinícolas dos Estados Unidos. Esta região é famosa por seus vinhos Cabernet Sauvignon, Chardonnay e Sauvignon Blanc. O clima mediterrâneo, a geografia diversificada e a dedicação à viticultura de qualidade fizeram do Napa Valley um ícone global na produção de vinho.");

INSERT INTO regiao(nomeRegiao, descricaoRegiao) VALUES("Toscana, Itália ", "A Toscana é famosa por seus vinhos tintos de alta qualidade, sendo o Chianti e o Brunello di Montalcino dois dos mais conhecidos. A região é caracterizada por suas colinas onduladas, clima quente e solo calcário, que proporcionam condições ideais para uvas como Sangiovese, Cabernet Sauvignon e Merlot.");

INSERT INTO regiao(nomeRegiao, descricaoRegiao) VALUES("Bordeaux, França ", "Bordeaux é uma das regiões vinícolas mais renomadas do mundo e é conhecida por seus vinhos tintos excepcionais. A região é subdividida em várias áreas, como Médoc, Saint-Émilion e Pomerol, cada uma produzindo vinhos com características distintas. Os vinhos de Bordeaux são frequentemente feitos a partir de uvas como Cabernet Sauvignon, Merlot e Cabernet Franc.");

/*INSERTS das vinicolas*/

INSERT INTO vinicola(nomeVinicola, descricaoVinicola, foneVinicola, emailVinicola, codRegiao) VALUES("Zuccardi Valle de Uco", "Localizada a 1.100 metros de altitude, a Zuccardi é a vinícola mais alta da região do Valle de Uco, em meio às montanhas andinas. Integrada à natureza, a vinícola de arquitetura ultra moderna foi construída com pedras naturais da região e é uma atração à parte, com o domo que parece um observatório para o incrível céu da região.", "00333222111", "zucca@email.com", 1);

INSERT INTO vinicola(nomeVinicola, descricaoVinicola, foneVinicola, emailVinicola, codRegiao) VALUES("Bodegas de los Herederos del Marqués de Riscal", "A vinícola mais antiga da tradicional região de La Rioja, a Marqués de Riscal, foi fundada em 1858, mas soube evoluir e se modernizar. Os clássicos Rioja e o icônico Cabernet Sauvignon da casa exalam história, mas também frescor.", "44666888789", "risca@email.com", 2);

INSERT INTO vinicola(nomeVinicola, descricaoVinicola, foneVinicola, emailVinicola, codRegiao) VALUES("Robert Mondavi Winery", "Robert Mondavi colocou os vinhos californianos no mapa com sua vinícola fundada em 1966, com rótulos que logo estavam batendo os clássicos franceses nos testes cegos. 
Desde então, um passeio pela vinícola é um dos clássicos do Napa Valley. Emblemas do Velho Mundo, a Cabernet Sauvignon e Sauvignon Blanc se adaptaram perfeitamente ao clima californiano.", "55434765989", "monda@email.com", 3);

INSERT INTO vinicola(nomeVinicola, descricaoVinicola, foneVinicola, emailVinicola, codRegiao) VALUES("Antinori nel Chianti Classico", "A família Antinori produz vinhos desde 1385 e é responsável pelos “supertoscanos” Tignanello e Solaia. Só isso já garantiria o posto de parada obrigatória no roteiro do vinho da Toscana. Mas a arquitetura da vinícola, quase “invisível” em meio à paisagem, com a maior parte da construção subterrânea, e a galeria de arte  que mescla a coleção histórica da família com obras de artistas contemporâneos, faz dela a melhor vinícola italiana para conhecer.", "558844366577", "anti@email.com", 4);

INSERT INTO vinicola(nomeVinicola, descricaoVinicola, foneVinicola, emailVinicola, codRegiao) VALUES("Château Smith Haut Lafitte", "Não poderia faltar na lista uma representante da emblemática região de Bordeaux. Florence e Daniel Cathiard, os donos da vinícola, investiram na experiência do visitante para tornar seu Château a melhor opção nessa meca do vinho.", "88327547823648", "Haut@email.com", 5);

/*INSERTS dos vinhos*/

INSERT INTO vinho(nomeVinho, tipoVinho, anoVinho, descricaoVinho, codVinicola) VALUES 
('Zuccardi "Concreto" Malbec 2018', 'Tinto', 2018, 'Fermentado e envelhecido em tanques de concreto, com notas de frutas vermelhas e pretas, taninos suaves e um toque mineral distintivo.', 1);

INSERT INTO vinho(nomeVinho, tipoVinho, anoVinho, descricaoVinho, codVinicola) VALUES 
('Marqués de Riscal Reserva 2015', 'Tinto', 2015, 'Elaborado principalmente com a uva Tempranillo, apresentando notas de frutas maduras, baunilha, tabaco e especiarias.', 2);

INSERT INTO vinho(nomeVinho, tipoVinho, anoVinho, descricaoVinho, codVinicola) VALUES 
('Robert Mondavi Napa Valley Cabernet Sauvignon 2017', 'Tinto', 2017, 'Rico em sabores de cassis, amora, notas de carvalho tostado e taninos sedosos, representando a excelência da vinificação californiana.', 3);

INSERT INTO vinho(nomeVinho, tipoVinho, anoVinho, descricaoVinho, codVinicola) VALUES 
('Antinori Tignanello 2016', 'Tinto', 2016, 'Blend de Sangiovese, Cabernet Sauvignon e Cabernet Franc com aromas intensos de frutas vermelhas, especiarias e notas florais.', 4);

INSERT INTO vinho(nomeVinho, tipoVinho, anoVinho, descricaoVinho, codVinicola) VALUES 
('Château Smith Haut Lafitte Pessac-Léognan 2014', 'Tinto', 2014, 'Mistura de Merlot, Cabernet Sauvignon e Cabernet Franc com aromas de frutas escuras, cassis, alcaçuz e nuances de carvalho.', 5);

CREATE VIEW apresentarVinhos AS SELECT v.nomeVinho, v.anoVinho, vc.nomeVinicola, r.nomeRegiao
FROM vinho v 
INNER JOIN vinicola vc ON v.codVinicola = vc.codVinicola
INNER JOIN regiao r ON vc.codRegiao = r.codRegiao;

CREATE USER 'Sommelier'@'localhost' IDENTIFIED BY 'vinho123';

GRANT SELECT ON bd_somativa2.vinho TO 'Sommelier'@'localhost';

GRANT SELECT ON bd_somativa2.apresentarvinhos TO 'Sommelier'@'localhost';

FLUSH PRIVILEGES;

SELECT * FROM apresentarVinhos;