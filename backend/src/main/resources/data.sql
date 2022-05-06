INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'ABD/APMHuC5cu1W/JN8FyqP51/j+ypXFn96m+t9wVu4M/ucfi/8AacuXJsZ+Vb4eifDfxXePqsxxL8bJ9d37RWkYN/doP8tvuXLkdodgd/7J8Nqlyc1j/Fn94f4rly4tXRdCnqgq5cuWdXL/2Q==', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQuHKJ5x2TR51aoXA9saWsQAGGaqvZPSVpsrAsJW7lRVrIR_aS_xqw51IBAfMwHtGrooA&usqp=CAU');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-15T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-07-15T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-15T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-15T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha do curso', 1, 'ABD/APMHuC5cu1W/JN8FyqP51/j+ypXFn96m+t9wVu4M/ucfi', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'ABD/APMHuC5cu1W/JN8FyqP51/j+ypXFn96m+t9wVu4M/ucfi', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para turma', 3, 'ABD/APMHuC5cu1W/JN8FyqP51/j+ypXFn96m+t9wVu4M/ucfi', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Vamos começar', 1, 'ABD/APMHuC5cu1W/JN8FyqP51/j+ypXFn96m+t9wVu4M/ucfi', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Vamos continuar', 2, 'ABD/APMHuC5cu1W/JN8FyqP51/j+ypXFn96m+t9wVu4M/ucfi', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Vamos finalizar', 3, 'ABD/APMHuC5cu1W/JN8FyqP51/j+ypXFn96m+t9wVu4M/ucfi', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, avaliable, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-07-15T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, avaliable, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-07-15T13:00:00Z', null, true, false)