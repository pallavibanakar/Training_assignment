CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
); 


CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rolename` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
);



CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `roles_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_roles_FK` (`users_id`),
  KEY `user_roles_roles_FK` (`roles_id`),
  CONSTRAINT `users_roles_FK` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_roles_roles_FK` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`)
);



CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


 CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `questions_id` int(11) DEFAULT NULL,
  `optionname` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `op_FK` (`questions_id`),
  CONSTRAINT `op_FK` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`)
);




 CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `assignment_name` varchar(20) DEFAULT NULL,
  `admin_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_ass_id_FK` (`admin_user_id`),
  CONSTRAINT `user_ass_id_FK` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`)
);


 CREATE TABLE `assignment_questions` (
  `id` int(11) NOT NULL,
  `assignments_id` int(11) DEFAULT NULL,
  `questions_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ass_FK` (`assignments_id`),
  KEY `ques_FK` (`questions_id`),
  CONSTRAINT `ass_FK` FOREIGN KEY (`assignments_id`) REFERENCES `assignments` (`id`),
  CONSTRAINT `ques_FK` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`)
);


 CREATE TABLE `assignment_allocation` (
  `id` int(11) NOT NULL,
  `assignments_id` int(11) DEFAULT NULL,
  `candidate_users_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `AA_FK` (`assignments_id`),
  KEY `Au_FK` (`candidate_users_id`),
  CONSTRAINT `AA_FK` FOREIGN KEY (`assignments_id`) REFERENCES `assignments` (`id`),
  CONSTRAINT `Au_FK` FOREIGN KEY (`candidate_users_id`) REFERENCES `users` (`id`)
);


CREATE TABLE `assignment_scores` (
  `id` int(11) NOT NULL,
  `assignments_id` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `AM_FK` (`assignments_id`),
  KEY `ao_FK` (`users_id`),
  CONSTRAINT `AM_FK` FOREIGN KEY (`assignments_id`) REFERENCES `assignments` (`id`),
  CONSTRAINT `ao_FK` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
);



 CREATE TABLE `candidate_submitted` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `assignments_id` int(11) DEFAULT NULL,
  `questions_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `q_FK` (`users_id`),
  KEY `A_FK` (`questions_id`),
  CONSTRAINT `A_FK` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`),
  CONSTRAINT `i_FK` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`),
  CONSTRAINT `q_FK` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
);


CREATE TABLE `options_submitted` (
  `id` int(11) NOT NULL,
  `candidate_submitted_id` int(11) DEFAULT NULL,
  `options_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CAN_FK` (`candidate_submitted_id`),
  KEY `op1_FK` (`options_id`),
  CONSTRAINT `CAN_FK` FOREIGN KEY (`candidate_submitted_id`) REFERENCES `candidate_submitted` (`id`),
  CONSTRAINT `op1_FK` FOREIGN KEY (`options_id`) REFERENCES `options` (`id`)
);




INSERT INTO users (id,username,password)
                       VALUES
                       (001, 'pallavi', 'pallavi' );

INSERT INTO users ( id, username,password )
                       VALUES
                       (002,'pavan','pavan' );

INSERT INTO users( id, username,password )
                       VALUES
                       (003, 'richa','richa' );

INSERT INTO users ( id, username,password )
                       VALUES
                       ( 004,'apoorva','apoorva');


INSERT INTO users ( id, username,password )
                       VALUES
                       ( 005,'hrishi','hrishi');


INSERT INTO roles ( id,rolename)
                       VALUES
                       ( 1,'candidate');
INSERT INTO roles ( id, rolename)
                       VALUES
                    ( 2,'admin');


INSERT INTO user_roles( id,users_id,roles_id)
                       VALUES
                       ( 0001,001,1);



INSERT INTO user_roles( id,users_id,roles_id)
                       VALUES
                       ( 0002,002,1);


INSERT INTO user_roles( id,users_id,roles_id)
                       VALUES
                       ( 0003,003,2);

INSERT INTO user_roles( id,users_id,roles_id)
                       VALUES
                       ( 0004,004,1);

INSERT INTO user_roles( id,users_id,roles_id)
                       VALUES
                       ( 0005,005,2);



INSERT INTO questions( id,question)
                       VALUES
                       ( 100,'which of these are programming paradigm?');


INSERT INTO questions( id,question)
                       VALUES
                       ( 101,'which of these are design pattern?');


INSERT INTO questions( id,question)
                       VALUES
                       ( 102,'which of these are non-relational database?');

INSERT INTO questions( id,question)
                       VALUES
                       ( 103,'which of these are relational database?');


INSERT INTO assignments( id,assignment_name,admin_user_id)
                       VALUES
                       ( 500,'design_pattern',003);

INSERT INTO assignments( id,assignment_name,admin_user_id)
                       VALUES
                       ( 501,'database',004);


INSERT INTO assignment_questions( id,assignments_id,questions_id)
                       VALUES
                       ( 600,'501',102);


INSERT INTO assignment_questions( id,assignments_id,questions_id)
                       VALUES
                       ( 601,'501',103);


INSERT INTO options( id,questions_id,optionname)
                       VALUES
                       ( 1000,102,'sql');

INSERT INTO options( id,questions_id,optionname)
                       VALUES
                       ( 1001,102,'oracel');

INSERT INTO options( id,questions_id,optionname)
                       VALUES
                       ( 1002,102,'mongodb');

INSERT INTO options( id,questions_id,optionname)
                       VALUES
                       ( 1003,102,'msdb');

INSERT INTO options( id,questions_id,optionname)
                       VALUES
                       ( 1004,103,'sql');

INSERT INTO options( id,questions_id,optionname)
                       VALUES
                       ( 1005,103,'oracel');

INSERT INTO options( id,questions_id,optionname)
                       VALUES
                       ( 1006,103,'MariaDB');

INSERT INTO options( id,questions_id,optionname)
                       VALUES
                       ( 1007,103,'Clustrix');
INSERT INTO options( id,questions_id,optionname)
                       VALUES
                       ( 1008,103,'mongodb');




INSERT INTO answers( id,questions_id,correctoption)
                       VALUES
                       ( 50,102,'mongodb');
INSERT INTO answers( id,questions_id,correctoption)
            VALUES
               (51,103,'sql');
			   INSERT INTO answers( id,questions_id,correctoption)
                       VALUES
                       ( 52,103,'oracel');
					   
INSERT INTO answers( id,questions_id,correctoption)
                       VALUES
                       ( 54,103,'clustrix');
					   				   

INSERT INTO assignment_scores( id,assignments_id,users_id,score)
                       VALUES
                       ( 200,501,001,95);
INSERT INTO assignment_scores( id,assignments_id,users_id,score)
                       VALUES
                       ( 201,501,002,93);
INSERT INTO assignment_scores( id,assignments_id,users_id,score)
                       VALUES
                       ( 202,501,004,91);
					   

INSERT INTO assignment_allocation( id,assignments_id,candidate_users_id)
                       VALUES
                       ( 2000,501,001);	
					   

INSERT INTO assignment_allocation( id,assignments_id,candidate_users_id)
                       VALUES
                       ( 2001,501,002);	

INSERT INTO assignment_allocation( id,assignments_id,candidate_users_id)
                       VALUES
                       ( 2002,501,004);			


	
INSERT INTO candidate_submitted( id,assignments_id,users_id,questions_id)
                       VALUES
                       ( 3000,501,004,102);			

INSERT INTO candidate_submitted( id,assignments_id,users_id,questions_id)
                       VALUES
                       ( 3001,501,001,103);		

INSERT INTO candidate_submitted( id,assignments_id,users_id,questions_id)
                       VALUES
                       ( 3002,501,001,102);	
					   
					   
	
INSERT INTO options_submitted( id,candidate_submitted_id,options_id)
                       VALUES
                       ( 4000,3000,1001);				

				   
	
INSERT INTO options_submitted( id,candidate_submitted_id,options_id)
                       VALUES
                       ( 4001,3001,1000);	
					   
					   
	
INSERT INTO options_submitted( id,candidate_submitted_id,options_id)
                       VALUES
                       ( 4002,3001,1001);

	
INSERT INTO options_submitted( id,candidate_submitted_id,options_id)
                       VALUES
                       ( 4003,3001,1003);
	
INSERT INTO options_submitted( id,candidate_submitted_id,options_id)
                       VALUES
                       ( 4004,3002,1002);						   

CREATE VIEW candidate_score_view AS 
(SELECT u1.id,u1.username,u1.password,as1.assignments_id,as1.score
FROM users u1,assignment_scores as1 WHERE u1.id=as1.users_id);

select * from candidate_score_view;



create or Replace VIEW candidate_answers AS
(select u2.id,u2.username,q1.question,q1.id as question_id,op.optionname from users as u2,questions as q1,candidate_submitted as cs,
options_submitted as os,options as op where os.candidate_submitted_id=cs.id AND cs.questions_id=q1.id AND os.options_id=op.id AND cs.users_id=u2.id group by question_id
);

SET @sql = NULL;

 select group_concat(distinct concat('if(cs.question = ''',question,''',optionname,NULL) as', quote(question))) into @sql from candidate_answers cs;


set @sql = concat('select id,username,',@sql,' from candidate_answers cs'); 


prepare statement from @sql;
execute statement;






