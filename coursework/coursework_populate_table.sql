-- Categories
INSERT INTO category VALUES (
    1, 'Muscular strength'
);

INSERT INTO category VALUES (
    2, 'Body maintenance'
);

INSERT INTO category VALUES (
    3, 'Indoor cycling'
);

-- Group exercise classes
INSERT INTO g_class VALUES (
    1, 'Strength', 'Training muscles', 45, 2, 1
);

INSERT INTO g_class VALUES (
    2, 'Basics of yoga', 'Learning yoga', 50, 1, 2
);

INSERT INTO g_class VALUES (
    3, 'Yoga 1', 'Keeping doing yoga', 50, 2, 2
);

INSERT INTO g_class VALUES (
    4, 'Pilates 1', 'Learning pilates', 60, 2, 2
);

INSERT INTO g_class VALUES (
    5, 'Basics of indoor cycling', 'Pedalling', 60, 1, 3
);

INSERT INTO g_class VALUES (
    6, 'Indoor cycling pro', 'Heavy stretches and tight spurts', 80, 4, 3
);

-- Instructors
INSERT INTO instructor VALUES (
    1, 'Elisa Markkanen', 1996-01-21
);

INSERT INTO instructor VALUES (
    2, 'Eero Ilonen', 1988-03-14
);

INSERT INTO instructor VALUES (
    3, 'Mikko Kontinen', 2000-11-01
);

-- Can instruct
INSERT INTO can_instruct VALUES (
    1, 3
);

INSERT INTO can_instruct VALUES (
    1, 5
);

INSERT INTO can_instruct VALUES (
    1, 6
);

INSERT INTO can_instruct VALUES (
    2, 2
);

INSERT INTO can_instruct VALUES (
    2, 3
);

INSERT INTO can_instruct VALUES (
    2, 4
);

INSERT INTO can_instruct VALUES (
    3, 5
);

INSERT INTO can_instruct VALUES (
    3, 6
);

--halls
INSERT INTO hall VALUES (
    1, 'Hall 1', 25
);

INSERT INTO hall VALUES (
    2, 'Cycling hall', 20
);

INSERT INTO hall VALUES (
    3, 'Hall 3', 20
);

--classes in timetable
INSERT INTO tt_class VALUES (
    3, 'Monday', '8:10:00', 10, 1, 3
);

INSERT INTO tt_class VALUES (
    3, 'Monday', '13:00:00', 15, 1, 1
);

INSERT INTO tt_class VALUES (
    3, 'Monday', '20:10:00', 10, 1, 3
);

INSERT INTO tt_class VALUES (
    3, 'Tuesday', '8:10:00', 15, 2, 1
);

INSERT INTO tt_class VALUES (
    4, 'Monday', '8:00:00', 15, 2, 1
);

INSERT INTO tt_class VALUES (
    6, 'Monday', '7:00:00', 20, 3, 2
);

INSERT INTO tt_class VALUES (
    5, 'Monday', '10:45:00', 20, 3, 2
);

INSERT INTO tt_class VALUES (
    5, 'Friday', '14:00:00', 20, 1, 2
);

