-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd; /*через оператор > вцыводятся члены клуба зарегистрированные с 1 сентября 2012 года*/
SELECT surname, firstname FROM members WHERE joindate > '2012-08-31'; 