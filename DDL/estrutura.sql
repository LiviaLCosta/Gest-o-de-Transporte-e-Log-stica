-- Criação da tabela Cliente
CREATE TABLE Clientes (
    cliente_id NUMBER PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    telefone VARCHAR2(15) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    endereco VARCHAR2(255) NOT NULL
);

-- Criação da tabela Motorista
CREATE TABLE Motoristas (
    motorista_id NUMBER PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    cnh VARCHAR2(20) UNIQUE,
    telefone VARCHAR2(15)
);

-- Criação da tabela Veiculo
CREATE TABLE Veiculos (
    veiculo_id NUMBER PRIMARY KEY,
    placa VARCHAR2(10) UNIQUE,
    modelo VARCHAR2(50),
    capacidade_carga NUMBER(5,2) CHECK (capacidade_carga > 0),
    status VARCHAR2(20)
);

-- Criação da tabela Rota
CREATE TABLE Rotas (
    rota_id NUMBER PRIMARY KEY,
    origem VARCHAR2(100),
    destino VARCHAR2(100),
    distancia NUMBER(6,2) CHECK (distancia > 0)
);

-- Criação da tabela Viagem
CREATE TABLE Viagens (
    viagem_id NUMBER PRIMARY KEY,
    cliente_id NUMBER NOT NULL,
    motorista_id NUMBER NOT NULL,
    veiculo_id NUMBER NOT NULL,
    rota_id NUMBER,
    data_partida DATE,
    data_chegada DATE,
    status VARCHAR2(20),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id),
    FOREIGN KEY (motorista_id) REFERENCES Motorista(motorista_id),
    FOREIGN KEY (veiculo_id) REFERENCES Veiculo(veiculo_id),
    FOREIGN KEY (rota_id) REFERENCES Rota(rota_id)
);

-- Índice para acelerar consultas na tabela Viagem
CREATE INDEX idx_viagem_cliente ON Viagem(cliente_id);
CREATE INDEX idx_viagem_motorista ON Viagem(motorista_id);
CREATE INDEX idx_viagem_veiculo ON Viagem(veiculo_id);
CREATE INDEX idx_viagem_rota ON Viagem(rota_id);
