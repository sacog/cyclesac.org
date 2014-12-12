CREATE TABLE trip (
	id      INTEGER UNSIGNED AUTO_INCREMENT,
	user_id INTEGER UNSIGNED,
	purpose VARCHAR(255),
	comfort VARCHAR(255),
	notes VARCHAR(255),
	start   TIMESTAMP,
	stop    TIMESTAMP,
	n_coord INTEGER UNSIGNED,
	PRIMARY KEY ( id ),
	UNIQUE KEY ( user_id, start )
) ENGINE=INNODB;

CREATE TABLE note (
	id        INTEGER UNSIGNED AUTO_INCREMENT,
	user_id   INTEGER UNSIGNED,
	trip_id   INTEGER UNSIGNED,
	recorded  TIMESTAMP,
	latitude  DOUBLE,
	longitude DOUBLE,
	altitude  DOUBLE,
	speed     DOUBLE,
	hAccuracy DOUBLE,
	vAccuracy DOUBLE,
	note_type TINYINT,
	details   VARCHAR(255),
	image_url VARCHAR(255),	
	PRIMARY KEY ( id ),
	UNIQUE KEY ( user_id, recorded )
) ENGINE=INNODB;

CREATE TABLE coord (
	trip_id   INTEGER UNSIGNED,
	recorded  TIMESTAMP,
	latitude  DOUBLE,
	longitude DOUBLE,
	altitude  DOUBLE,
	speed     DOUBLE,
	hAccuracy DOUBLE,
	vAccuracy DOUBLE,
	PRIMARY KEY ( trip_id, recorded )
) ENGINE=INNODB;

CREATE TABLE user (
	id        INTEGER UNSIGNED AUTO_INCREMENT,
	created   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	device    VARCHAR(32),
	app_version  VARCHAR(32),
	age       TINYINT,
	email     VARCHAR(64),
	future_survey BOOLEAN,
	gender    TINYINT,
	ethnicity TINYINT,
	income	  TINYINT,
	homeZIP   VARCHAR(32),
	workZIP   VARCHAR(32),
	cycling_freq  TINYINT default NULL,
	rider_confidence    TINYINT,
	PRIMARY KEY ( id ),
	UNIQUE KEY ( device )
) ENGINE=INNODB;

CREATE TABLE age (
	id   TINYINT,
	text VARCHAR(32),
	PRIMARY KEY ( id )
) ENGINE=INNODB;

CREATE TABLE gender (
	id   TINYINT,
	text VARCHAR(32),
	PRIMARY KEY ( id )
) ENGINE=INNODB;

CREATE TABLE ethnicity (
	id   TINYINT,
	text VARCHAR(32),
	PRIMARY KEY ( id )
) ENGINE=INNODB;

CREATE TABLE income (
	id   TINYINT,
	text VARCHAR(32),
	PRIMARY KEY ( id )
) ENGINE=INNODB;

CREATE TABLE cycling_freq (
	id   TINYINT,
	text VARCHAR(32),
	PRIMARY KEY ( id )
) ENGINE=INNODB;

CREATE TABLE rider_confidence (
	id   TINYINT,
	text VARCHAR(32),
	PRIMARY KEY ( id )
) ENGINE=INNODB;

CREATE TABLE note_type (
	id   TINYINT,
	text VARCHAR(32),
	PRIMARY KEY ( id )
) ENGINE=INNODB;

INSERT INTO age ( id, text ) VALUES ( 0, "no data" );
INSERT INTO age ( id, text ) VALUES ( 1, "Less than 18" );
INSERT INTO age ( id, text ) VALUES ( 2, "18-24" );
INSERT INTO age ( id, text ) VALUES ( 3, "25-34" );
INSERT INTO age ( id, text ) VALUES ( 4, "35-44" );
INSERT INTO age ( id, text ) VALUES ( 5, "45-54" );
INSERT INTO age ( id, text ) VALUES ( 6, "55-64" );
INSERT INTO age ( id, text ) VALUES ( 7, "65+" );

INSERT INTO gender ( id, text ) VALUES ( 0, "no data" );
INSERT INTO gender ( id, text ) VALUES ( 1, "Female" );
INSERT INTO gender ( id, text ) VALUES ( 2, "Male" ); 

INSERT INTO ethnicity ( id, text ) VALUES ( 0, "no data" );
INSERT INTO ethnicity ( id, text ) VALUES ( 1, "African-American" );
INSERT INTO ethnicity ( id, text ) VALUES ( 2, "Asian" );
INSERT INTO ethnicity ( id, text ) VALUES ( 3, "Caucasian/White" );
INSERT INTO ethnicity ( id, text ) VALUES ( 4, "Hispanic/Latino" );
INSERT INTO ethnicity ( id, text ) VALUES ( 5, "Native American/Alaskan" );
INSERT INTO ethnicity ( id, text ) VALUES ( 6, "Pacific Islander/Hawaiian native" );
INSERT INTO ethnicity ( id, text ) VALUES ( 7, "Other" );

INSERT INTO income ( id, text ) VALUES ( 0, "no data" );
INSERT INTO income ( id, text ) VALUES ( 1, "Less than $15,000" );
INSERT INTO income ( id, text ) VALUES ( 2, "$15,000 to $34,999" );
INSERT INTO income ( id, text ) VALUES ( 3, "$35,000 to $49,999" );
INSERT INTO income ( id, text ) VALUES ( 4, "$50,000 to $74,999" );
INSERT INTO income ( id, text ) VALUES ( 5, "$75,000 to $99,999" );
INSERT INTO income ( id, text ) VALUES ( 6, "$100,000 to $149,999" );
INSERT INTO income ( id, text ) VALUES ( 7, "$150,000 to $199,999" );
INSERT INTO income ( id, text ) VALUES ( 8, "More than $200,000" );

INSERT INTO cycling_freq ( id, text ) VALUES ( 0, "no data" );
INSERT INTO cycling_freq ( id, text ) VALUES ( 1, "Less than once a month" );
INSERT INTO cycling_freq ( id, text ) VALUES ( 2, "Several times per month" );
INSERT INTO cycling_freq ( id, text ) VALUES ( 3, "Several times per week" );
INSERT INTO cycling_freq ( id, text ) VALUES ( 4, "Daily" );

INSERT INTO rider_confidence ( id, text ) VALUES ( 0, "no data" );
INSERT INTO rider_confidence ( id, text ) VALUES ( 1, "Strong & fearless" );
INSERT INTO rider_confidence ( id, text ) VALUES ( 2, "Enthused & confident" );
INSERT INTO rider_confidence ( id, text ) VALUES ( 3, "Comfortable, but cautious" );
INSERT INTO rider_confidence ( id, text ) VALUES ( 4, "Interested, but concerned" );

INSERT INTO note_type ( id, text ) VALUES (0, 'Pavement issue');
INSERT INTO note_type ( id, text ) VALUES (1, 'Traffic signal');
INSERT INTO note_type ( id, text ) VALUES (2, 'Enforcement');
INSERT INTO note_type ( id, text ) VALUES (3, 'Bike parking');
INSERT INTO note_type ( id, text ) VALUES (4, 'Bike lane issue');
INSERT INTO note_type ( id, text ) VALUES (5, 'Note this issue');
INSERT INTO note_type ( id, text ) VALUES (6, 'Bike parking');
INSERT INTO note_type ( id, text ) VALUES (7, 'Bike shops');
INSERT INTO note_type ( id, text ) VALUES (8, 'Public restrooms');
INSERT INTO note_type ( id, text ) VALUES (9, 'Secret passage');
INSERT INTO note_type ( id, text ) VALUES (10, 'Water fountain');
INSERT INTO note_type ( id, text ) VALUES (11, 'Note this asset');