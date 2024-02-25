create table g_class (
    gc_id INT NOT NULL,
    gc_name VARCHAR(30) NOT NULL,
    description VARCHAR(50) NOT NULL,
    duration INT NOT NULL,
    level INT NOT NULL,
    c_id int not null,
    PRIMARY KEY (gc_id),
    UNIQUE (gc_name),
    FOREIGN KEY (c_id) REFERENCES category 
);

create table category (
    c_id int not NULL,
    c_name VARCHAR(30) not NULL,
    PRIMARY KEY (c_id),
    UNIQUE (c_name)
);

create table instructor (
    i_id int not NULL,
    i_name VARCHAR(30) not null, 
    date_of_birth DATE not null,
    PRIMARY KEY (i_id)
);

create table hall (
    h_id int not null,
    h_name VARCHAR(30) not null,
    no_places int not null,
    PRIMARY KEY (h_id),
    UNIQUE (h_name)
);

create table can_instruct (
    gc_id int,
    i_id int,
    PRIMARY KEY (gc_id, i_id),
    FOREIGN KEY (gc_id) REFERENCES g_class,
    FOREIGN KEY (i_id) REFERENCES instructor
);

create table tt_class (
    gc_id int,
    day_of_week VARCHAR(30),
    start_time time,
    max_participants int,
    i_id int,
    h_id int, 
    PRIMARY KEY (gc_id, day_of_week, start_time)
    FOREIGN KEY (gc_id) REFERENCES g_class,
    FOREIGN KEY (i_id) REFERENCES instructor,
    FOREIGN KEY (h_id) REFERENCES hall
);
