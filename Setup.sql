drop database if exists docsqltest;
create database if not exists docsqltest;
drop table if exists currentState;
create table currentState(
    id INT PRIMARY KEY AUTO_INCREMENT,
    collectorName VARCHAR(30) NOT NULL,
    readingOne INT NOT NULL,
    readingTwo DECIMAL(8, 2)
);
drop table if exists historicalState;
create table if not exists historicalState(
    id INT PRIMARY KEY AUTO_INCREMENT,
    collectorId INT NOT NULL,
    collectorName VARCHAR(30) NOT NULL,
    readingOne INT NOT NULL,
    readingTwo DECIMAL(8, 2),
    date DATETIME DEFAULT CURRENT_TIMESTAMP()
);