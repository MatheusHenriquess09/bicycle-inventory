CREATE DATABASE estoque_bicicletas;

USE estoque_bicicletas;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    quantidade INT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    valor_total DECIMAL(10,2)
);

CREATE TABLE itens_venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    venda_id INT,
    produto_id INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),

    FOREIGN KEY (venda_id) REFERENCES vendas(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

CREATE TABLE historico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(255),
    tipo VARCHAR(50),
    quantidade INT,
    data VARCHAR(100)
);

INSERT INTO produtos (nome, categoria, preco, quantidade)
VALUES ("Bicicleta Aro 29", "Bicicleta", 1800.00, 3);

SELECT * FROM produtos;