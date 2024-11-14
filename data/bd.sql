CREATE DATABASE AMT;

USE AMT;

-- Tabela para usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(255)
);

-- Tabela para Resíduos
CREATE TABLE coleta_residuos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    file_id VARCHAR(255), -- Identifier for the file
    tipo_residuo VARCHAR(255), -- Type of waste
    janeiro DECIMAL(10, 2),
    fevereiro DECIMAL(10, 2),
    marco DECIMAL(10, 2),
    abril DECIMAL(10, 2),
    maio DECIMAL(10, 2),
    junho DECIMAL(10, 2),
    julho DECIMAL(10, 2),
    agosto DECIMAL(10, 2),
    setembro DECIMAL(10, 2),
    outubro DECIMAL(10, 2),
    novembro DECIMAL(10, 2),
    dezembro DECIMAL(10, 2),
    total DECIMAL(15, 2),
    ano INT -- Adiciona a coluna ano para armazenar o ano
);

-- Tabela para registro de eventos de usuários
CREATE TABLE eventos_usuarios (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    tipo_evento VARCHAR(100),
    data_evento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);
