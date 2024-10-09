USE event;

CREATE TABLE Organizer (
    organizer_id INT AUTO_INCREMENT PRIMARY KEY,
    organizer_name VARCHAR(255) NOT NULL,
    organizer_password VARCHAR(255) NOT NULL,
    organizer_email  VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Hall (
    hall_id INT AUTO_INCREMENT PRIMARY KEY,
    hall_name VARCHAR(255) NOT NULL,
    hall_venue VARCHAR(255) NOT NULL,
    hall_price INT NOT NULL,
    hall_owner INT,
    hall_accommodation INT NOT NULL,
    hall_tags VARCHAR(255) NOT NULL,
    FOREIGN KEY (hall_owner) REFERENCES Organizer(organizer_id)
);

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    customer_password VARCHAR(255) NOT NULL,
    customer_email  VARCHAR(255) NOT NULL
);

CREATE TABLE Booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    hall_id INT,
    booking_date DATE NOT NULL,
    is_confirmed BOOLEAN,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (hall_id) REFERENCES Hall(hall_id)
);
INSERT INTO Organizer VALUES(1,'Tharun', 'Tharun4106', 'tharun4106@gmail.com');

INSERT INTO Hall VALUES(1,"TopG Palace","Keelkattalai",60000,1,500,"#AC,Big Car Parking, Wedding, Party");
INSERT INTO Hall VALUES(2,"BottomF Palace","Tambaram",250000,1,2000,"#AC,Big Car Parking, Wedding, Party, Bar");
INSERT INTO Hall VALUES(2,"Das Kalyana Mahal","Keelkattalai",180000,1,2500,"#AC,Big Car Parking, Wedding");

INSERT INTO Customer VALUES(1,"Priyajit","priya","priya@gmail.com")
INSERT INTO Booking VALUES(1,1,1,"2024-11-09",1)

