-- LIMPANDO O AMBIENTE CASO JÁ EXISTA (Garante que o script pode ser rodado várias vezes)
DROP TABLE IF EXISTS jogo;

-- CRIANDO A TABELA COM REGRAS E MNEMÓNICOS (DDL)
CREATE TABLE jogo (
    id_jogo INTEGER PRIMARY KEY AUTOINCREMENT,
    nm_jogo VARCHAR(100) NOT NULL,
    ds_categoria VARCHAR(50) NOT NULL,
    vlr_preco DECIMAL(10,2) NOT NULL,
    qtd_copias_vendidas INT DEFAULT 0
);

-- POPULANDO O BANCO COM UMA MASSA DE DADOS REALISTA (DML)
INSERT INTO jogo (nm_jogo, ds_categoria, vlr_preco, qtd_copias_vendidas) VALUES 
('Elden Ring', 'RPG', 250.00, 55),
('FIFA 26', 'Esporte', 350.00, 120),
('Cyberpunk 2077', 'RPG', 199.90, 38),
('Minecraft', 'Sobrevivência', 99.00, 540),
('Street Fighter 6', 'Luta', 299.00, 18),
('The Witcher 3', 'RPG', 79.90, 310),
('Grand Theft Auto V', 'Ação', 149.90, 850),
('Red Dead Redemption 2', 'Ação', 249.90, 420),
('Mortal Kombat 1', 'Luta', 279.90, 25),
('Resident Evil 4 Remake', 'Terror', 200.00, 65),
('Hollow Knight', 'Metroidvania', 45.00, 150),
('Stardew Valley', 'Simulação', 30.00, 280),
('Forza Horizon 5', 'Corrida', 249.00, 95),
('Gran Turismo 7', 'Corrida', 299.00, 70),
('Counter-Strike 2', 'Tiro', 0.00, 1200),
('Valorant', 'Tiro', 0.00, 980),
('God of War Ragnarok', 'Ação', 299.90, 180),
('Baldurs Gate 3', 'RPG', 199.99, 210),
('Terraria', 'Sobrevivência', 40.00, 340),
('Outlast', 'Terror', 35.00, 85);

select * from jogo 
WHERE ds_categoria = 'RPG';

SELECT * FROM jogo
order by nm_jogo ASC;

SELECT * FROM jogo
order by vlr_preco ASC;

--atividade

--faça uma consulta que mostre apenas o nome do jogo e categoria
SELECT nm_jogo, ds_categoria FROM jogo

--o gerente quer uma lista apenas dos jogos que custam mais de 200,00.
SELECT * FROM jogo
WHERE vlr_preco >200.00

--filtre a tabela para exibir apenas os jogos de luta.
SELECT * FROM jogo 
WHERE ds_categoria = 'Luta'

--mostre apenas os jogos de 'ação', mas ordenados do mais vendido para o menos vendido.
SELECT * FROM jogo 
WHERE ds_categoria = 'Ação'
ORDER by nm_jogo DESC

--exiba todos os jogos de terror em ordem alfabética inversa!
SELECT * FROM jogo 
WHERE ds_categoria = 'Terror'
ORDER by nm_jogo ASC




