
-- Creating the Hall table
CREATE TABLE Hall (
    hall_id INT AUTO_INCREMENT PRIMARY KEY,
    hall_name VARCHAR(255) NOT NULL,
    hall_venue VARCHAR(255) NOT NULL,
    hall_price VARCHAR(255) NOT NULL,
    FOREIGN KEY (hall_owner) REFERENCES Organizer(organizer_name),
    hall_acccomodation INT NOT NULL,
    hall_tags VARCHAR(255) NOT NULL
);

-- Creating the Customer table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL
    customer_password VARCHAR(255) NOT NULL,
    customer_email  VARCHAR(255) NOT NULL
);

-- Creating the Booking table
CREATE TABLE Booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    hall_id INT,
    booking_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (hall_id) REFERENCES Hall(hall_id),
    is_confirmed BOOLEAN 
);

-- Creating the Organizer table
CREATE TABLE Organizer (
    organizer_id INT AUTO_INCREMENT PRIMARY KEY,
    organizer_name VARCHAR(255) NOT NULL,
    organizer_password VARCHAR(255) NOT NULL,
    organizer_email  VARCHAR(255) NOT NULL
);

