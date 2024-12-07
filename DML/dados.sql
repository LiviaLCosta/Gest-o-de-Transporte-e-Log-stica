-- Inserção de dados na tabela Cliente
INSERT INTO Clientes (cliente_id, nome, telefone, email, endereco)
VALUES (1, 'João Silva', '99999-0001', 'joao@email.com', 'Rua A, 100, Cidade X');
INSERT INTO Clientes (cliente_id, nome, telefone, email, endereco)
VALUES (2, 'Maria Oliveira', '99999-0002', 'maria@email.com', 'Rua B, 200, Cidade Y');

-- Inserção de dados na tabela Motorista
INSERT INTO Motoristas (motorista_id, nome, cnh, telefone)
VALUES (1, 'Carlos Souza', '12345678901', '99999-1111');
INSERT INTO Motoristas (motorista_id, nome, cnh, telefone)
VALUES (2, 'Ana Pereira', '98765432100', '99999-2222');

-- Inserção de dados na tabela Veiculo
INSERT INTO Veiculos (veiculo_id, placa, modelo, capacidade_carga, status)
VALUES (1, 'ABC1234', 'Volvo FH', 30.5, 'Disponível');
INSERT INTO Veiculos (veiculo_id, placa, modelo, capacidade_carga, status)
VALUES (2, 'XYZ5678', 'Scania R440', 28.0, 'Em viagem');

-- Inserção de dados na tabela Rota
INSERT INTO Rotas (rota_id, origem, destino, distancia)
VALUES (1, 'São Paulo', 'Rio de Janeiro', 450.0);
INSERT INTO Rotas (rota_id, origem, destino, distancia)
VALUES (2, 'Belo Horizonte', 'Salvador', 500.0);

-- Inserção de dados na tabela Viagem
INSERT INTO Viagens (viagem_id, cliente_id, motorista_id, veiculo_id, rota_id, data_partida, data_chegada, status)
VALUES (1, 1, 1, 1, 1, TO_DATE('2024-12-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-12-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Em andamento');
INSERT INTO Viagens (viagem_id, cliente_id, motorista_id, veiculo_id, rota_id, data_partida, data_chegada, status)
VALUES (2, 2, 2, 2, 2, TO_DATE('2024-12-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-12-02 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Concluída');
