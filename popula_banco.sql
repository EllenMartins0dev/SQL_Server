-- Script SQL com comandos de INSERT para povoar as tabelas principais;
									-- Autores --
INSERT INTO dbo.Autor (codigo_autor, nome, nacionalidade, data_nascimento, biografia)
VALUES
(1, 'Machado de Assis', 'Brasileiro', '1839-06-21', 'Um dos maiores autores brasileiros.'),
(2, 'Clarice Lispector', 'Brasileira', '1920-12-10', 'Autora de romances psicológicos.'),
(3, 'Stephen King', 'Americano', '1947-09-21', 'Mestre do suspense e do terror.'),
(4, 'J.K. Rowling', 'Britânica', '1965-07-31', 'Autora da famosa série Harry Potter.'),
(5, 'Paulo Coelho', 'Brasileiro', '1947-08-24', 'Escritor de romances e livros de autoajuda.'),
(6, 'Elena Ferrante', 'Italiana', '1943-12-01', 'Autora conhecida pela série Napolitana.'),
(7, 'Michelle Obama', 'Americana', '1964-01-17', 'Ex-primeira dama dos EUA e autora de biografias inspiradoras.');


										-- Gêneros --
INSERT INTO dbo.Genero (codigo_genero, nome, descricao)
VALUES
(1, 'Romance', 'Livros de ficção com foco em narrativa'),
(2, 'Suspense', 'Histórias com clima de tensão e mistério'),
(3, 'Terror', 'Histórias de monstro ou temática assustadora que geram medo'),
(4, 'Fantasia', 'Livros que utilizam a ficção para criar cenários extraordinários'),
(5, 'Autoajuda', 'Histórias para ajudarem os leitores a melhorarem em algum aspecto da vida'),
(6, 'Biografia', 'Livros que contam a história de pessoas ou eventos marcantes de uma época');


										-- Livros -- 
INSERT INTO dbo.Livros (codigo_livro, titulo, preco, qtde_paginas, sinopse, isbn, capa)
VALUES
(1, 'Dom Casmurro', 49.90, 256, 'Clássico da literatura brasileira.', '9781234567897', 'capa1.jpg'),
(2, 'A Hora da Estrela', 39.90, 120, 'Romance de Clarice Lispector.', '9789876543210', 'capa2.jpg'),
(3, 'It', 59.90, 1138, 'Um clássico do terror de Stephen King.', '9780450411434', 'capa3.jpg'),
(4, 'Harry Potter e a Pedra Filosofal', 69.90, 320, 'O início da saga do jovem bruxo.', '9780747532699', 'capa4.jpg'),
(5, 'O Alquimista', 39.90, 208, 'Paulo Coelho conta a história de um jovem em busca de seus sonhos.', '9780061122415', 'capa5.jpg'),
(6, 'A Amiga Genial', 49.90, 400, 'Primeiro livro da série Napolitana, sobre amizade e vida na Itália.', '9781609450786', 'capa6.jpg'),
(7, 'Minha História', 59.90, 448, 'Autobiografia de Michelle Obama, inspiradora e envolvente.', '9781524763138', 'capa7.jpg');


										-- Clientes --
INSERT INTO dbo.Clientes (codigo_cliente, nome, cpf, situacao, data_nascimento, estado_civil)
VALUES
(1, 'Joana Maria Silva', '14589652340', 'Ativo', '1998-05-15', 'Solteiro'),
(2, 'Carlos Henrique Lima', '32569874150', 'Ativo', '1989-03-20', 'Casado'),
(3, 'Maria Eduarda Gomes', '98745632100', 'Inativo', '2000-02-10', 'Divorciado'),
(4, 'Caio Fontes', '12478965236', 'Inativo', '2000-02-10', 'Solteiro');


									-- Clientes - Contatos -- 
INSERT INTO dbo.Clientes_Contatos (codigo_cliente, codigo_cliente_contato, telefone, celular, email)
VALUES
(1, 1, '11223344', '11999887766', 'joana@gmail.com'),
(1, 2, '11334455', '11988776655', 'joana.silva@hotmail.com'),
(2, 1, '33445566', '11977776655', 'carlos@gmail.com'),
(2, 2, '33556677', '11966554433', 'carlos.lima@yahoo.com'),
(3, 1, '44556677', '11955667788', 'mariaeduarda@gmail.com'),
(3, 2, '44667788', '11966778899', 'eduarda.gomes@hotmail.com'),
(3, 3, '44778899', '11977889900', 'maria.gomes@yahoo.com'),
(4, 1, '55667788', '11988990011', 'caio.fontes@gmail.com');


								-- Clientes - Endereços --
INSERT INTO dbo.Clientes_Enderecos
(codigo_cliente, codigo_cliente_endereco, rua, cidade, bairro, uf, cep)
VALUES
(1, 1, 'Rua Floriano', 'São Paulo', 'Centro', 'SP', '01000000'),
(1, 2, 'Rua das Laranjeiras', 'São Paulo', 'Jardins', 'SP', '01400000'),
(2, 1, 'Av. Paulista', 'São Paulo', 'Bela Vista', 'SP', '01311000'),
(2, 2, 'Rua Augusta', 'São Paulo', 'Consolação', 'SP', '01305000'),
(3, 1, 'Rua da Paz', 'Campinas', 'Cambuí', 'SP', '13025000'),
(3, 2, 'Av. Brasil', 'Campinas', 'Centro', 'SP', '13010000'),
(4, 1, 'Rua das Palmeiras', 'Piracicaba', 'Centro', 'SP', '13400000');


								 -- Funcionários --
INSERT INTO dbo.Funcionarios
(codigo_funcionario, nome, cpf, situacao, data_nascimento, data_admissao)
VALUES
(1, 'Fernanda Oliveira', '55669874120', 'Ativo', '1992-04-12', '2021-01-10'),
(2, 'Marcos Silva', '99887766550', 'Ativo', '1985-10-25', '2019-08-20');


							-- Funcionários - Contatos --
INSERT INTO dbo.Funcionarios_Contatos
(codigo_funcionario, codigo_funcionario_contato, telefone, celular, email)
VALUES
(1, 1, '1144455566', '11944455566', 'fernanda@bookmaster.com'),
(2, 1, '1133221100', '11931112222', 'marcos@bookmaster.com');


							-- Funcionários - Endereços --
INSERT INTO dbo.Funcionarios_Enderecos
(codigo_funcionario, codigo_funcionario_endereco, rua, cidade, bairro, uf, cep)
VALUES
(1, 1, 'Rua Azul', 'São Paulo', 'Jardins', 'SP', '01431000'),
(2, 1, 'Rua Verde', 'São Paulo', 'Moema', 'SP', '04077000');


							-- Estoque --
INSERT INTO dbo.Estoque (codigo_estoque, quantidade, codigo_livro)
VALUES
(1, 30, 1),
(2, 15, 2);


							-- Movimentação Estoque --
INSERT INTO dbo.Movimentacao_Estoque
(codigo_movimentacao, qtde_movimentacao, tipo_movimentacao, observacao, data_movimentacao, codigo_estoque, codigo_funcionario)
VALUES
(1, 5, 'Entrada', 'Compra de novos itens', '2025-01-10', 1, 1),
(2, 2, 'Saída', 'Venda para cliente', '2025-01-12', 2, 2);


							-- Livros - Autor --
INSERT INTO dbo.Livro_Autor (codigo_livro, codigo_autor)
VALUES
(1, 1),  
(2, 2),  
(3, 3),  
(4, 4), 
(5, 5), 
(6, 6),
(7, 7);


							-- Livros - Gênero --
INSERT INTO dbo.Livro_Genero (codigo_livro, codigo_genero)
VALUES
(1, 1), 
(2, 1),  
(2, 2),  
(3, 3),  
(4, 4),  
(5, 5),  
(6, 1),  
(7, 6);  




