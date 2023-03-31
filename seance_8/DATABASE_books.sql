CREATE TABLE profile (
  name varchar(20),
  age integer,
  home_address varchar(100),
  phone char(10),
  home_email varchar(50),
  work_address varchar(100),
  work_position varchar(20),
  work_phone char(10),
  work_id varchar(10),
  school_id varchar(10),
  school_email varchar(50),
  school_address varchar(100)
);

INSERT INTO profile VALUES (
  'Alex Chung',
  17, 
  '73, Vista Lane, Middletown, CA 95461',
  '7073341592',
  'alex.ch@gmail.com',
  '355, Walmar Blvd., Middletown, CA 95463',
  'Push Cart Assistant',
  '7075552351',
  'PC333-123',
  '3513',
  'chung_alex@vista_high.edu',
  '30, Vista Square, Middletown, CA 95460'
);

INSERT INTO profile VALUES (
  'Bill Cole',
  16, 
  '84, Vista Court, Middletown, CA 95461',
  '7078883215',
  'bm3391@gmail.com',
  null,
  null,
  null,
  null,
  '0002',  
  'cole_bill@vista_high.edu',
  '1A, School Street, Middletown, CA 95461'
);

INSERT INTO profile VALUES (
  'Ted Kyes',
  17, 
  '101, Brown Lane, Middletown, CA 95461',
  '7072123351',
  'tkyes@yahoo.com',
  '21, Greenview Avenue, Middletown, CA 95463',
  'clerk',
  '7072813213',
  'A0-2113',
  '93113',
  'kyes_ted@vista_high.edu',
  '30, Vista Square, Middletown, CA 95460'
);
