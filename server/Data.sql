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
    is_available BOOLEAN,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (hall_id) REFERENCES Hall(hall_id)
);
INSERT INTO Organizer VALUES(1,'Tharun', 'Tharun4106', 'tharun4106@gmail.com');
SELECT * FROM Organizer
INSERT INTO Hall VALUES(1,"TopG Palace","Keelkattalai",60000,1,500,"#AC,Big Car Parking, Wedding, Party");
SELECT * FROM Hall