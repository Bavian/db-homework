DROP TABLE IF EXISTS AudioTrackStore;

CREATE TABLE artist (
    artist_id INT NOT NULL,
    artist_name VARCHAR(120) NOT NULL,
    PRIMARY KEY (artist_id)
);

CREATE TABLE album (
    album_id INT NOT NULL,
    album_title varchar(120) NOT NULL,
    PRIMARY KEY (album_id)
);

CREATE TABLE track (
    track_id INT NOT NULL,
    track_name VARCHAR(200) NOT NULL,
    track_length BIGINT NOT NULL,
    track_genre VARCHAR(120) NOT NULL,
    track_price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (track_id)
);

CREATE TABLE artist_album (
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (album_id) REFERENCES album(album_id)
);

CREATE TABLE album_track (
    album_id INT NOT NULL,
    track_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album(album_id),
    FOREIGN KEY (track_id) REFERENCES track(track_id)
);

CREATE TABLE customer (
    customer_id INT NOT NULL,
    customer_name VARCHAR(60) NOT NULL,
    customer_email VARCHAR(60) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE orders (
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    track_id INT NOT NULL,
    order_date DATE NOT NULL,
    delivery_adress VARCHAR(70) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (track_id) REFERENCES track(track_id)
);
