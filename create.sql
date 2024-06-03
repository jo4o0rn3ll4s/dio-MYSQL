CREATE DATABASE Filmes;
USE Filmes;

CREATE TABLE Atores (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    PrimeiroNome VARCHAR(20),
    UltimoNome VARCHAR(20),
    Genero VARCHAR(1)
);

CREATE TABLE Filmes (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Ano INT,
    Duracao INT
);

CREATE TABLE ElencoFilme (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    IdAtor INT NOT NULL,
    IdFilme INT,
    Papel VARCHAR(30),
    FOREIGN KEY (IdAtor) REFERENCES Atores(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);

CREATE TABLE Generos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Genero VARCHAR(20)
);

CREATE TABLE FilmesGenero (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    IdGenero INT,
    IdFilme INT,
    FOREIGN KEY (IdGenero) REFERENCES Generos(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);
