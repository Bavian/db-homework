CREATE TABLE station (
    station_id INT,
    station_name VARCHAR(100),
    train_id INT,
    PRIMARY KEY (station_id)
);

CREATE TABLE train (
    train_id INT,
    train_num VARCHAR(10),
    seats_total INT,
    PRIMARY KEY (train_id)
);

CREATE TABLE schedule (
    schedule_id INT,
    train_id INT,
    station_id INT,
    departure_time DATETIME,
    arrival_time DATETIME,
    PRIMARY KEY (schedule_id),
    FOREIGN KEY (train_id) REFERENCES train(train_id),
    FOREIGN KEY (station_id) REFERENCES station(station_id)
);

CREATE TABLE passenger (
    passenger_id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    birthday_date DATETIME,
    PRIMARY KEY (passenger_id)
);

CREATE TABLE ticket (
    ticket_id INT,
    schedule_id INT,
    passenger_id INT,
    PRIMARY KEY (ticket_id),
    FOREIGN KEY (schedule_id) REFERENCES schedule(schedule_id),
    FOREIGN KEY (passenger_id) REFERENCES passenger(passenger_id)
);
