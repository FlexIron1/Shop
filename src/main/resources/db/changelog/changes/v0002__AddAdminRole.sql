insert into usr(id, active, password, username)
values (1, true, '$2a$08$W3dib1jVf5BYZMz1TaUYkuGep2J7v8e1EzN3YfS1fuknw6KoIRzpy', 'admin');
insert into user_role(user_id, roles)
values (1, 'ADMIN');

