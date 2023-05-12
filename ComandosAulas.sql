show databases; //Mostrar databases existentes
create database aulalab; //Criar database
use aulalab; //Usar database criado
show tables; //Mostra tabelas do database
//Criando tabelas
create table site(SiteID int primary key, nome varchar(30), tipo varchar(30), Tipo_Logradouro varchar(30), Logradouro varchar(30), Numero int, Bairro varchar(30));
create table Equipamento(EquipID int, Name varchar(30), IP  varchar(30), Modelo varchar(50), Fabricante varchar(50), Shelf varchar(30), DataAquisicao date, Site int, Numero_Serie int, primary key(EquipID, Shelf), foreign key(Site) references Site(SiteID));
create table Placa(PlacaID int, Tipo varchar(30), Slot int, BandWidth int, EquipID int, primary key(PlacaID), foreign key(EquipID) references Equipamento(EquipID));
create table Porta(PortaID int, Modelo varchar(30), Conector varchar(30), Numero int, PlacaID int, primary key(PortaID), foreign key(PlacaID) references Placa(PlacaID));
desc site; //Mostra colunas da tabela
//Inserindo dados da tabela
insert into site (SiteID, nome, tipo, Tipo_Logradouro, Logradouro, Numero, Bairro) values (0, "Franca/Centro", "Central", "Rua", "Ouvidor Freire", 33, "Centro");
insert into site (SiteID, nome, tipo, Tipo_Logradouro, Logradouro, Numero, Bairro) values (null, "Franca/LP", "Central", "Avenida", "Abrao Brickman", 2000, "Leporace");
insert into equipamento (EquipID, Name, Numero_Serie, Shelf, Fabricante, Modelo, DataAquisicao, Site, IP) values (null, "FR_CE_DSL_01", 1234, 1, "ALCATEL", "DSL_ETH_v1", '2023-05-03', 0, "10.20.30.40");
insert into equipamento (EquipID, Name, Numero_Serie, Shelf, Fabricante, Modelo, DataAquisicao, Site, IP) values (null, "FR_LP_DSL_01", 4321, 1, "HUAWEI", "DSL_ETH_v2", '2023-05-10', 0, "10.20.30.40");
select * from site; //Mostra dados da tabela
delete from site; //Deleta todos dados
delete from site where nome="Fanca/Centro"; // Deleta dados correspondentes
