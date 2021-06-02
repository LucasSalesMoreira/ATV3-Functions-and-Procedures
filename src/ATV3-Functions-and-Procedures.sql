# (01)
DELIMITER $$
CREATE FUNCTION insertAluno(codCurso INT, dateNasc DATE, fullCred INT, mgp DOUBLE(10,2),
                                nameAluno VARCHAR(30), emailAluno VARCHAR(50)) RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
    INSERT INTO aluno (cod_curso, dat_nasc, tot_cred, mgp, nom_alun, email) VALUES (codCurso, dateNasc, fullCred, mgp, nameAluno, emailAluno);
    RETURN nameAluno;
END
$$
DELIMITER ;

SELECT insertAluno(3, '1989-08-15', 80, 8.00, 'Adriana Lins', 'adrianapecorelli@gmail.com') AS 'Aluno(a) novo(a)';

# (02)
DELIMITER $$
CREATE PROCEDURE runWhile()
BEGIN
    DECLARE cont int default 1;
    DECLARE str VARCHAR(20) DEFAULT "";
    WHILE cont <= 5 DO
        SET str = CONCAT(str, cont, ", ");
        SET cont = cont + 1;
   END WHILE;    
   SELECT str;
END $$
DELIMITER ;

CALL runWhile();


# (03)
DELIMITER $$
CREATE PROCEDURE runRepeat()
BEGIN
    DECLARE cont INT DEFAULT 1;
    DECLARE r VARCHAR(50) DEFAULT "";
    REPEAT
        SET r = CONCAT(r, cont, ", ");
        SET cont = cont + 1;
        until cont > 9
    END REPEAT;
    SELECT r;
END $$
DELIMITER ;

CALL runRepeat();