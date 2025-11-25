-- Script SQL com duas a cinco consultas usando SELECT (com WHERE, ORDER BY, LIMIT, JOIN etc.);

-- 1. Seleciona cliente com código 2
SELECT * FROM dbo.Clientes
WHERE codigo_cliente = 2;

-- 2. Seleciona livros com preço entre 39.90 e 49.90
SELECT * FROM dbo.Livros
WHERE preco BETWEEN 39.90 AND 49.90;
'
-- 3. Lista todos os autores ordenados por data de nascimento
SELECT * FROM dbo.Autor
ORDER BY data_nascimento;

-- 4. Seleciona os 3 primeiros gêneros
SELECT TOP 3 * 
FROM dbo.Genero;

-- 5. Seleciona clientes e seus endereços no bairro "Centro"
SELECT cli.codigo_cliente, cli.nome, clie.bairro  FROM dbo.Clientes_Enderecos clie
INNER JOIN dbo.Clientes cli 
    ON cli.codigo_cliente = clie.codigo_cliente
WHERE clie.bairro = 'Centro';

-- 6. Consulta estoque, livros e movimentações para o livro de código 1
SELECT est.codigo_estoque, mov.tipo_movimentacao, est.quantidade, est.codigo_livro, liv.titulo, liv.ISBN
FROM dbo.Estoque est
INNER JOIN dbo.Livros liv 
    ON liv.codigo_livro = est.codigo_livro
INNER JOIN dbo.Movimentacao_Estoque mov 
    ON mov.codigo_estoque = est.codigo_estoque
WHERE est.codigo_livro = 1;


