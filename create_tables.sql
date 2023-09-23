CREATE TABLE IF NOT EXISTS staging_events (
    artist varchar(256),
    auth varchar(256),
    firstName varchar(256),
    gender varchar(1),
    itemInSession int,
    lastName varchar(256),
    length float,
    level varchar(256),
    location varchar(256),
    method varchar(256),
    page varchar(256),
    registration float,
    sessionId int,
    song varchar(256),
    status int,
    ts bigint,
    userAgent varchar(256),
    userId varchar(256)
)

CREATE TABLE IF NOT EXISTS staging_songs (
    num_songs int,
    artist_id varchar(256),
    artist_latitude float,
    artist_longitude float,
    artist_location varchar(256),
    artist_name varchar(256),
    song_id varchar(256),
    title varchar(256),
    duration float,
    year int
)

CREATE TABLE IF NOT EXISTS songplays (
    songplay_id int identity(0,1) PRIMARY KEY,
    start_time timestamp NOT NULL SORTKEY,
    user_id varchar(256) NOT NULL,
    level varchar(256),
    song_id varchar(256),
    artist_id varchar(256),
    session_id int,
    location varchar(256),
    user_agent varchar(256)
)

CREATE TABLE IF NOT EXISTS users (
    user_id varchar(256) NOT NULL PRIMARY KEY,
    first_name varchar(256),
    last_name varchar(256),
    gender varchar(1),
    level varchar(256)
)

CREATE TABLE IF NOT EXISTS songs (
    song_id varchar(256) NOT NULL PRIMARY KEY,
    title varchar(256),
    artist_id varchar(256),
    year int,
    duration float
)

CREATE TABLE IF NOT EXISTS artists (
    artist_id varchar(256) NOT NULL PRIMARY KEY,
    name varchar(256),
    location varchar(256),
    latitude float,
    longitude float
)

CREATE TABLE IF NOT EXISTS time (
    start_time timestamp NOT NULL SORTKEY PRIMARY KEY,
    hour int,
    day int,
    week int,
    month int,
    year int,
    weekday int
)