INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown','alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown','bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green','maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course(name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.hfPS1kCAGAFFcE-tlmpWMgHaDt%26pid%3DApi&f=1','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.bkmJ0HCwhIhAt0fSd41MIgHaHa%26pid%3DApi&f=1');

INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z',1);
INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z',1);

INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso',1,'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.hfPS1kCAGAFFcE-tlmpWMgHaDt%26pid%3DApi&f=1',1,1);
INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id) VALUES ('Forum', 'Tira suas dúvidas',2,'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.hfPS1kCAGAFFcE-tlmpWMgHaDt%26pid%3DApi&f=1',2,1);
INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id) VALUES ('Lives','Lives exclusivas para a turma',3,'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.hfPS1kCAGAFFcE-tlmpWMgHaDt%26pid%3DApi&f=1',0,1);

INSERT INTO tb_section (title, description, position, img_uri,resource_id,prerequisite_id) VALUES ('Capítulo 1','Neste capítulo vamos começar',1,'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.hfPS1kCAGAFFcE-tlmpWMgHaDt%26pid%3DApi&f=1',1,null);
INSERT INTO tb_section (title, description, position, img_uri,resource_id,prerequisite_id) VALUES ('Capítulo 2','Neste capítulo vamos começar',2,'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.hfPS1kCAGAFFcE-tlmpWMgHaDt%26pid%3DApi&f=1',1,1);
INSERT INTO tb_section (title, description, position, img_uri,resource_id,prerequisite_id) VALUES ('Capítulo 3','Neste capítulo vamos começar',3,'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.hfPS1kCAGAFFcE-tlmpWMgHaDt%26pid%3DApi&f=1',1,2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment,refund_moment, available, only_update) VALUES(1,1,TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',null,true,false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment,refund_moment, available, only_update) VALUES(2,1,TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',null,true,false);

INSERT INTO tb_lesson(title,position, section_id) VALUES('Aula 1 do capítulo 1',1,1);
INSERT INTO tb_content(text_content, video_uri,id) VALUES('Material de apoio: abc','https://www.youtube.com/watch?v=sqbqoR-lMf8',1);

INSERT INTO tb_lesson(title,position, section_id) VALUES('Aula 2 do capítulo 1',2,1);
INSERT INTO tb_content(text_content, video_uri,id) VALUES('','https://www.youtube.com/watch?v=sqbqoR-lMf8',2);

INSERT INTO tb_lesson(title,position, section_id) VALUES('',3,1);
INSERT INTO tb_content(text_content, video_uri,id) VALUES('Material de apoio: abc','https://www.youtube.com/watch?v=sqbqoR-lMf8',3);

INSERT INTO tb_lesson(title,position, section_id) VALUES('Tarefa do capítulo 1',4,1);
INSERT INTO tb_task(id, description,question_count,approval_count,weight,due_date) VALUES (4,'Fazer trabalho',5,4,1.0,TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z');

INSERT INTO tb_lessons_done(lesson_id,user_id, offer_id) VALUES (1,1,1);
INSERT INTO tb_lessons_done(lesson_id,user_id, offer_id) VALUES (2,1,1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);