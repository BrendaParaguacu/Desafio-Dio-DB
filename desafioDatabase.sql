-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano, Duracao from Filmes order by ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
select Nome, Ano, Duracao from Filmes where Ano = '1997';

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano, Duracao from Filmes where Ano > '2000';

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, Count(*) Quantidade from Filmes group by Ano order by Quantidade desc;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select Ano, Count(*) Quantidade from Filmes group by Ano order by Quantidade desc;

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select * from Atores where Genero = 'F' order by PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
select
	F.Nome,
	G.Genero
from 
	FilmesGenero FG  
inner join 
	Filmes F on FG.IdFilme = F.Id  
inner join 
	Generos G on FG.IdGenero = G.Id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select
	F.Nome,
	G.Genero
from 
	FilmesGenero FG  
inner join 
	Filmes F on FG.IdFilme = F.Id  
inner join 
	Generos G on FG.IdGenero = G.Id
where 
	G.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select
	F.Nome, 
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
from 
	ElencoFilme EF  
inner join 
	Filmes F on EF.IdFilme = F.Id  
inner join 
	Atores A on EF.IdAtor = A.Id;