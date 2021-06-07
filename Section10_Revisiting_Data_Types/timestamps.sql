-- Done by Carlos Amaral (2021/02/17)

-- TIMESTAMPS

CREATE TABLE comments(
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments(content)
VALUES('LOL what a cool article');

INSERT INTO comments(content)
VALUES('I found this as offensive'),
('fggfhdsf');

SELECT * FROM comments;

SELECT * FROM comments ORDER BY created_at DESC;


CREATE TABLE comments2(
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO comments2(content)
VALUES('WOW'),
('hahahah');


UPDATE comments2 SET content='THIS IS NOT GIBBERISH'
WHERE content='Wow';

SELECT * FROM comments2 ORDER BY changed_at DESC;
