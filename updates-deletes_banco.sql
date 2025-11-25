-- Script com ao menos três comandos de UPDATE e três de DELETE com condições.

UPDATE Biblioteca.dbo.Clientes_Contatos SET Celular = '1947856974'
WHERE Codigo_Cliente = 1 AND Celular <> ''

UPDATE Biblioteca.dbo.Funcionarios SET Situacao = 'Inativo'
WHERE Nome = 'Marcos Silva'

UPDATE Biblioteca.dbo.Livros set Preco = 60.50
WHERE Codigo_Livro = 3


DELETE Biblioteca.dbo.Livro_Autor
WHERE Codigo_Autor = 7

DELETE Biblioteca.dbo.Autor
WHERE Codigo_Autor = 7

DELETE Biblioteca.dbo.Livro_Genero
WHERE Codigo_Genero = 5

DELETE Biblioteca.dbo.Genero
WHERE Nome = 'Autoajuda'


