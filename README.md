# Banco de Dados para Gestão de Transporte e Logística

## Objetivo
Este banco de dados visa gerenciar informações sobre viagens de transporte, incluindo clientes, motoristas, veículos, rotas e status das viagens.

## Tabelas e Relacionamentos

- *Cliente*: Armazena informações sobre os clientes (nome, telefone, email e endereço).
- *Motorista*: Armazena informações sobre motoristas (nome, cnh e telefone).
- *Veiculo*: Armazena informações sobre veículos (placa, modelo, capacidade de carga e status).
- *Rota*: Armazena informações sobre rotas (origem, destino e distância).
- *Viagem*: Armazena informações sobre as viagens, vinculando clientes, motoristas, veículos e rotas.

### Relacionamentos
- A tabela *Viagem* possui chaves estrangeiras para as tabelas *Cliente, **Motorista, **Veiculo* e *Rota*.
- As relações são feitas através dos seguintes campos:
  - cliente_id em Viagem referencia cliente_id em Cliente.
  - motorista_id em Viagem referencia motorista_id em Motorista.
  - veiculo_id em Viagem referencia veiculo_id em Veiculo.
  - rota_id em Viagem referencia rota_id em Rota.

## Como Executar os Scripts

### 1. Criação das Tabelas (DDL)
Execute o arquivo estrutura.sql no Oracle SQL Developer ou no SQL*Plus para criar as tabelas e os índices necessários.
@estrutura.sql
2. Inserção de Dados (DML)
Execute o arquivo dados.sql para inserir dados de exemplo nas tabelas.
@dados.sql
3. Consultas
Após a execução dos scripts, você pode executar consultas para verificar a integridade dos dados e os relacionamentos entre as tabelas. Exemplos:
SELECT * FROM Viagem;
SELECT * FROM Cliente WHERE cliente_id = 1;
SELECT * FROM Motorista;
Observações
Certifique-se de que o Oracle tenha privilégios para criar tabelas e índices.
O banco de dados está configurado para garantir a consistência referencial, com as chaves estrangeiras e restrições definidas.

### Explicações sobre o DDL:
- *Tabelas*: Cada tabela foi criada com seus respectivos campos e tipos de dados.
- *Restrições*: 
  - NOT NULL foi usado para garantir que dados essenciais como nome, telefone, etc., sejam fornecidos.
  - UNIQUE foi utilizado para garantir que campos como email e CNH sejam únicos.
  - CHECK foi utilizado para garantir que valores como capacidade de carga e distância sejam positivos.
- *Índices*: Índices foram criados nas tabelas que possuem chaves estrangeiras para melhorar a performance das consultas.

### Validação no Oracle:
- Teste esses scripts no Oracle SQL Developer ou no SQL*Plus.
- Certifique-se de que todas as tabelas são criadas corretamente e que as inserções de dados são realizadas sem erros.

### Autores
- Erick Alves da Silva - RA:183433
- Livia Lima Costa - RA:182034
- Raphael Cerqueira da Costa Santana - RA:181906
