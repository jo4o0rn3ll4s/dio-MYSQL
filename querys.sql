/* Querry que retorna o Nome e Ano de lançamento dos Filmes */
SELECT `Nome`,`Ano` FROM filmes;

/* Querry que retorna o Nome e Ano de lançamento, ordenados pelo ano, de maneira crescente */
SELECT `Nome`,`Ano`,`Duracao` FROM filmes ORDER BY `Ano`;

/* Querry que retorna o Filme "de volta para o futuro", trazendo o nome, ano e duração do fime */
SELECT `Nome`,`Ano`,`Duracao` FROM filmes WHERE `Nome` = "De Volta para o Futuro";

/* Querry que retorna os Filmes de 1997, trazendo o nome, ano e duração do fime */
SELECT `Nome`,`Ano`,`Duracao` FROM filmes WHERE `Ano` = 1997;

/* Querry que retorna os Filmes lançados APÓS os anos 2000, trazendo o nome, ano e duração do fime */
SELECT `Nome`,`Ano`,`Duracao` FROM filmes WHERE `Ano` > 2000;

/* Querry que retorna os Filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente trazendo o nome, ano e duração do fime */
SELECT `Nome`,`Ano`,`Duracao` FROM filmes WHERE `Duracao` > 100 AND `Duracao` < 150 ORDER BY `Duracao`;

/* Querry que retorna a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente */
SELECT `Ano`, COUNT(`Ano`) as `Contagem` FROM `filmes` GROUP BY `Ano` ORDER BY `Contagem` DESC;

/* Querry que retorna os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT * FROM atores WHERE `Genero` = "M";

/* Querry que retorna os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome */
SELECT * FROM atores WHERE `Genero` = "F" ORDER BY `PrimeiroNome`;

/* Querry que retorna os nomes dos filmes e os gêneros*/
SELECT  filmes.Nome as Nome, generos.Genero as Genero FROM filmesgenero JOIN filmes ON filmesgenero.IdFilme = filmes.Id JOIN generos ON filmesgenero.IdGenero = generos.Id;

/* Querry que retorna os nomes dos filmes do gênero "Mistério" */
SELECT filmes.Nome as Nome, generos.Genero as Genero FROM filmesgenero JOIN filmes ON filmesgenero.IdFilme = filmes.Id JOIN generos ON filmesgenero.IdGenero = generos.Id WHERE generos.Genero = "Mistério";

/* Querry que retorna os nomes dos filmes e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel nos Filmes */
SELECT filmes.Nome as NomeF, atores.PrimeiroNome as NomeP, atores.UltimoNome as NomeU, elencofilme.Papel as Papel FROM elencofilme JOIN filmes ON elencofilme.IdFilme = filmes.Id JOIN atores ON elencofilme.IdAtor = atores.Id;