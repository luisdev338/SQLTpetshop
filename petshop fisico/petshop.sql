/*Dada a correção da atividade de PetShop, crie um arquivo em linguagem SQL de acordo com as solicitações abaixo não esqueça de testar no XAMPP, anexe as 5 telas capturadas, anexe o link do GitHub com as linhas de código SQL e essa atividade como comentário nas linhas de código. */

/*Crie um banco de dados utilizando a linguagem SQL
Crie as 4 tabelas de cliente, veterinário, consulta e animal, contendo em cada uma das tabelas o seu atributo com seu respectivo datatype. (Capture a tela do XAMPP)
Realize a alteração do atributo da tabela cliente de nomecliente para nomecompleto (Capture a tela do XAMPP)
Realize a alteração do datatype motivo de (200) caracteres para (500) caracteres (Captura a tela do XAMPP)
delete o atributo nomeanimal da tabela animal, depois adicionei novamente o atributo com o nome: nomeanimalzinho
realize uma pesquisa na documentação de como insere dados em uma tabela existente, insira os dados "Ana Claudia Cunha" para nome da cliente, telefone 11999998888, e cpf 1144444411 na tabela do cliente. (Capture a tela do XAMPP)
Por fim, realize a exclusão dos dados da tabela cliente
Realize a exclusão de cada uma das tabelas
Realize a exclusão do banco de dados (Capture a tela do XAMPP)*/


--Essa atividade pode ser feita em dupla, mas a entrega final é individual. 
CREATE DATABASE sistemapetshop;

CREATE TABLE petcliente(
cpf CHAR(15) PRIMARY KEY NOT NULL,
nomecompleto VARCHAR(200) NOT NULL,
telefone VARCHAR(15) NOT NULL);

CREATE TABLE petveterinario(
crm CHAR(7) PRIMARY KEY NOT NULL,
nomeveterinario VARCHAR(200) NOT NULL,
salario INT(8),
dataadmissao DATE NOT NULL
);

CREATE TABLE petanimal(
codigoanimal CHAR(8) NOT NULL,
datanascimento DATE NOT NULL,
raca CHAR(15) NOT NULL,
nome CHAR(10) NOT NULL
);

CREATE TABLE petconsulta(
dia DATE NOT NULL,
horario INT(5) NOT NULL,
motivo VARCHAR(200)NOT NULL
);


--ALTERANDO O NOME DA TABELA DO CLIENTE, alteramos de nome completo para nome cliente.
ALTER TABLE petcliente
CHANGE  COLUMN nomecompleto  nomecliente VARCHAR(200) NOT NULL;

--ALTERAR DATATYPE DO MOTIVO DE 200 PARA 500 
ALTER TABLE petconsulta
MODIFY COLUMN motivo VARCHAR(500) NOT NULL;
 
--EXCLUIR A TABALE ANIMAL
ALTER TABLE petanimal
DROP COLUMN nome;
 
--ALTERAR O NOME, PARA ANILMALZINHO
ALTER TABLE petanimal
ADD nomeanimalzinho VARCHAR (50);

--INSERINDO DADOS NO BANCO DE DADOS NOME, TELEFONE E CPF 
INSERT INTO petcliente(cpf,telefone,nomecliente)
VALUES( 1144444411,"11999998888","Ana Claudia");

--EXCLUSÃO DOS DADOS DA TABELA CLIENTES
DROP TABLE petcliente;

--EXCLUSÃO DE CADA UMA DAS TABELAS
DROP TABLE petanimal;
DROP TABLE petconsulta;
DROP TABLE petveterinario;

--EXCLUSÃO DO BANCO DE DADOS 
DROP DATABASE sistemapetshop;


