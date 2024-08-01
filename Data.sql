-- Creating the Category table
CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Creating the Hall table
CREATE TABLE Hall (
    hall_id INT AUTO_INCREMENT PRIMARY KEY,
    hall_name VARCHAR(255) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

-- Creating the Customer table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL
);

-- Creating the Booking table
CREATE TABLE Booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    hall_id INT,
    booking_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (hall_id) REFERENCES Hall(hall_id)
);

-- Creating the Organizer table
CREATE TABLE Organizer (
    organizer_id INT AUTO_INCREMENT PRIMARY KEY,
    organizer_name VARCHAR(255) NOT NULL
);

-- Creating the Event table
CREATE TABLE Event (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    hall_id INT,
    organizer_id INT,
    event_name VARCHAR(255) NOT NULL,
    event_date DATE NOT NULL,
    FOREIGN KEY (hall_id) REFERENCES Hall(hall_id),
    FOREIGN KEY (organizer_id) REFERENCES Organizer(organizer_id)
);