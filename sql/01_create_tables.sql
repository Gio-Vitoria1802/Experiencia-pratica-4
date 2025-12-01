CREATE DATABASE biblioteca_ufsp;
USE biblioteca_ufsp;

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    tipo ENUM('aluno','professor','funcionario') NOT NULL,
    matricula VARCHAR(30) UNIQUE NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    ano INT,
    editora VARCHAR(150),
    categoria VARCHAR(100)
);

CREATE TABLE autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL
);

CREATE TABLE autoria (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

CREATE TABLE exemplar (
    id_exemplar INT AUTO_INCREMENT PRIMARY KEY,
    id_livro INT NOT NULL,
    codigo_exemplar VARCHAR(50) UNIQUE NOT NULL,
    status ENUM('disponivel','emprestado','danificado') DEFAULT 'disponivel',
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

CREATE TABLE emprestimo (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_exemplar INT NOT NULL,
    data_retirada DATE NOT NULL,
    data_devolucao_prevista DATE,
    data_devolucao_real DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_exemplar) REFERENCES exemplar(id_exemplar)
);

CREATE TABLE reserva (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    data_reserva DATE NOT NULL,
    status ENUM('ativa','cancelada','atendida') DEFAULT 'ativa',
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);
