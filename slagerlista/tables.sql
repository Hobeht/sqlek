CREATE TABLE album (
    id INT unsigned PRIMARY KEY,
    eloado VARCHAR(150) NOT NULL,
    cim VARCHAR(150) NOT NULL
);

CREATE TABLE toplista (
    albumid int REFERENCES album(id) on delete cascade,
    helyezes INT NOT NULL,
    platinadb INT,
    ev INT NOT NULL,
    kiado VARCHAR(150) NOT NULL,
    PRIMARY KEY (ev, kiado, albumid)
);
