
-- show aylin's answers
--select * from students where name='aylin';
--select id from students where name='aylin';

--select * from answers where student_id=1;

-- what answers did aylin provide?
select * from 
	answers 
	inner join questions
	on 
		answers.question_id = questions.id
where 
	student_id=(
		select id from students 
		where name='aylin'
	);


-- how many questions did aylin answer correctly?
select count(*) from 
	answers 
	inner join questions
	on 
		answers.question_id = questions.id
		and
		answers.answer_text = questions.correct_answer
where 
	student_id=(
		select id from students 
		where name='aylin'
	);


-- how many questions did aylin answer incorrectly?
select count(*) from 
	answers 
	inner join questions
	on 
		answers.question_id = questions.id
		and
		answers.answer_text <> questions.correct_answer
where 
	student_id=(
		select id from students 
		where name='aylin'
	);


