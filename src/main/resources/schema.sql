
-- Table: t_users
CREATE TABLE t_users ( 
    uid      INTEGER     PRIMARY KEY AUTOINCREMENT
                         NOT NULL
                         UNIQUE,
    username CHAR( 20 )  NOT NULL
                         UNIQUE,
    password CHAR( 16 )  NOT NULL,
    email    CHAR        NOT NULL 
);

INSERT INTO [t_users] ([uid], [username], [password], [email]) VALUES (1, 'wanwan1', 'wanwan1', 'wanwan1');
INSERT INTO [t_users] ([uid], [username], [password], [email]) VALUES (2, 'liuwan', 'liuwan', 'liuwan');
INSERT INTO [t_users] ([uid], [username], [password], [email]) VALUES (3, 'wanzai', 'wasdwasd', '1458476478@qq.com');

-- Table: t_notes
CREATE TABLE t_notes ( 
    noteid  INTEGER PRIMARY KEY
                    NOT NULL
                    UNIQUE,
    content CHAR,
    uid     INT     NOT NULL
                    DEFAULT ( 0 ) 
);

INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (1, '����һ�� ��ͨ �� Maven ���̣��ٴ���ʾ Blade ֻ��Ҫ�㴴����ͨ�Ĺ��̣������� Tomcat ʲô��û�й�ϵ���������ֻ��J2EE����', 2);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (2, '����һ�� ��ͨ �� Maven ���̣��ٴ���ʾ Blade ֻ��Ҫ�㴴����ͨ�Ĺ��̣������� Tomcat ʲô��û�й�ϵ���������ֻ��J2EE����', 2);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (3, '����һ�� ��ͨ �� Maven ���̣��ٴ���ʾ Blade ֻ��Ҫ�㴴����ͨ�Ĺ��̣������� Tomcat ʲô��û�й�ϵ���������ֻ��J2EE����', 2);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (4, '����һ�� ��ͨ �� Maven ���̣��ٴ���ʾ Blade ֻ��Ҫ�㴴����ͨ�Ĺ��̣������� Tomcat ʲô��û�й�ϵ���������ֻ��J2EE����', 2);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (5, '����һ�� ��ͨ �� Maven ���̣��ٴ���ʾ Blade ֻ��Ҫ�㴴����ͨ�Ĺ��̣������� Tomcat ʲô��û�й�ϵ���������ֻ��J2EE����', 2);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (6, '����һ�� ��ͨ �� Maven ���̣��ٴ���ʾ Blade ֻ��Ҫ�㴴����ͨ�Ĺ��̣������� Tomcat ʲô��û�й�ϵ���������ֻ��J2EE����', 2);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (7, '����һ�� ��ͨ �� Maven ���̣��ٴ���ʾ Blade ֻ��Ҫ�㴴����ͨ�Ĺ��̣������� Tomcat ʲô��û�й�ϵ���������ֻ��J2EE����', 2);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (8, '����һ�� ��ͨ �� Maven ���̣��ٴ���ʾ Blade ֻ��Ҫ�㴴����ͨ�Ĺ��̣������� Tomcat ʲô��û�й�ϵ���������ֻ��J2EE����', 2);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (9, '����һ�� ��ͨ �� Maven ���̣��ٴ���ʾ Blade ֻ��Ҫ�㴴����ͨ�Ĺ��̣������� Tomcat ʲô��û�й�ϵ���������ֻ��J2EE����', 2);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (10, '����һ�� ��ͨ �� Maven ���̣��ٴ���ʾ Blade ֻ��Ҫ�㴴����ͨ�Ĺ��̣������� Tomcat ʲô��û�й�ϵ���������ֻ��J2EE����', 3);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (11, 'adasdasdasdasdsadsad', 3);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (12, 'adasdasdasdasdsadsad', 3);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (13, 'adasdasdasdasdsadsad', 3);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (14, 'adasdasdasdasdsadsad', 3);
INSERT INTO [t_notes] ([noteid], [content], [uid]) VALUES (15, 'adasdasdasdasdsadsad', 3);
