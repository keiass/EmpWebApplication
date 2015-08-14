DROP TABLE dept IF EXISTS;
CREATE TABLE dept( deptno INT PRIMARY KEY, dname VARCHAR(14), loc VARCHAR(13) );

DROP TABLE emp IF EXISTS;
CREATE TABLE emp (
    empno NUMERIC(4) PRIMARY KEY,
    ename VARCHAR(10),
    job VARCHAR(9),
    mgr NUMERIC(4),
    hiredate DATE,
    sal NUMERIC(6,1),
    comm NUMERIC(6,1),
    deptno NUMERIC(2)
);
ALTER TABLE emp ADD FOREIGN KEY (deptno) REFERENCES dept(deptno);

