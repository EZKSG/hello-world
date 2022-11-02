
--如果存在则删除原表
DROP TABLE IF EXISTS USERS
DROP TABLE IF EXISTS SALARY
DROP TABLE IF EXISTS SECTION

--员工表
CREATE TABLE USERS (	
  CODE VARCHAR(20) NOT NULL,
  NAME VARCHAR(50),
  SEX INTEGER,
  AGE INTEGER,
  SECTIONCODE VARCHAR(20),
  MEMO VARCHAR(500),
  DELFLG INTEGER,
  IATTENTIONCODE VARCHAR(20),
  MATTENTIONCODE VARCHAR(20),
  DATECREATE DATE,
  DATEMODIFY DATE,
  PRIMARY KEY (CODE)
)
comment 
on column USERS.SEX 
is '0：女 、1：男'
comment 
on column USERS.DELFLG 
is '0：使用可能、1：使用不可'

--工资表
CREATE TABLE SALARY (	
  CODE VARCHAR(20) NOT NULL,
  YM VARCHAR(6) NOT NULL,
  SALARY DOUBLE,
  IATTENTIONCODE VARCHAR(20),
  MATTENTIONCODE VARCHAR(20),
  DATECREATE DATE,
  DATEMODIFY DATE,
  PRIMARY KEY (CODE,YM)
)
comment 
on column SALARY.YM
is 'YYYYMM'

--部门表
CREATE TABLE SECTION (	
  CODE VARCHAR(20) NOT NULL,
  NAME VARCHAR(100),
  IATTENTIONCODE VARCHAR(20),
  MATTENTIONCODE VARCHAR(20),
  DATECREATE DATE,
  DATEMODIFY DATE,
  PRIMARY KEY (CODE)
)

--员工表
INSERT INTO USERS VALUES 
('A001', '小明', 1, 24, 'A', '', 0, 'A001', 'A001', GETDATE(), GETDATE()),
('A002', '小红', 0, 22, 'A', '', 0, 'A001', 'A001', GETDATE(), GETDATE()),
('A003', '亮亮', 1, 24, 'A', '', 0, 'A001', 'A001', GETDATE(), GETDATE()),
('A004', '张三', 1, 27, 'A', '', 0, 'A001', 'A001', GETDATE(), GETDATE()),
('A005', '李四', 1, 24, 'B', '', 0, 'A001', 'A001', GETDATE(), GETDATE()),
('A006', '小丽', 0, 24, 'B', '', 0, 'A001', 'A001', GETDATE(), GETDATE()),
('A007', '王五', 1, 24, 'A', '', 0, 'A001', 'A001', GETDATE(), GETDATE()),
('A008', '李梅', 0, 24, 'B', '', 0, 'A001', 'A001', GETDATE(), GETDATE()),
('A009', '小刘', 1, 24, 'A', '', 0, 'A001', 'A001', GETDATE(), GETDATE()),
('A0010', '小胡', 1, 24, 'A', '', 0, 'A001', 'A001', GETDATE(), GETDATE()),
('A0011', '小杨', 1, 24, 'A', '', 0, 'A001', 'A001', GETDATE(), GETDATE());

--工资表
INSERT INTO SALARY VALUES 
('A001', '202209', 5683.1200, 'A001', 'A001', GETDATE(), GETDATE()), 
('A001', '202210', 6765.2300, 'A001', 'A001', GETDATE(), GETDATE()),
('A001', '202208', 5476.7400, 'A001', 'A001', GETDATE(), GETDATE()),
('A002', '202210', 5632.8900, 'A001', 'A001', GETDATE(), GETDATE()),
('A003', '202209', 5683.0000, 'A001', 'A001', GETDATE(), GETDATE()),
('A003', '202210', 6683.0000, 'A001', 'A001', GETDATE(), GETDATE()),
('A004', '202208', 5883.0000, 'A001', 'A001', GETDATE(), GETDATE()),
('A004', '202209', 5983.6200, 'A001', 'A001', GETDATE(), GETDATE()),
('A004', '202210', 6983.3200, 'A001', 'A001', GETDATE(), GETDATE()),
('A005', '202209', 5983.0000, 'A001', 'A001', GETDATE(), GETDATE()),
('A005', '202210', 6783.0000, 'A001', 'A001', GETDATE(), GETDATE()),
('A006', '202209', 5383.4400, 'A001', 'A001', GETDATE(), GETDATE()),
('A006', '202210', 5983.0000, 'A001', 'A001', GETDATE(), GETDATE()),
('A008', '202209', 5983.0000, 'A001', 'A001', GETDATE(), GETDATE()),
('A009', '202209', 5983.0000, 'A001', 'A001', GETDATE(), GETDATE()),
('A0010', '202209', 5783.0000, 'A001', 'A001', GETDATE(), GETDATE()),
('A0011', '202209', 5796.0000, 'A001', 'A001', GETDATE(), GETDATE()),
('A0011', '202210', 6483.0000, 'A001', 'A001', GETDATE(), GETDATE());

--部门表
INSERT INTO SECTION VALUES 
('A', '项目部', 'A001', 'A001', GETDATE(), GETDATE()), 
('B', '销售部', 'A001', 'A001', GETDATE(), GETDATE());

--提交插入的数据
COMMIT