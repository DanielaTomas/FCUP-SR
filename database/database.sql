DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Customer;

CREATE TABLE Book (
    bookId INTEGER NOT NULL,
    title NVARCHAR(120),
    CONSTRAINT PK_Book PRIMARY KEY (bookId)
);

CREATE TABLE Customer (
    CustomerId INTEGER  NOT NULL,
    FirstName NVARCHAR(40) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    Address NVARCHAR(70),
    Phone NVARCHAR(24),
    Email NVARCHAR(60) NOT NULL,
    Password NVARCHAR(40) NOT NULL,
    CONSTRAINT PK_Customer PRIMARY KEY (CustomerId)
);

INSERT INTO Book (bookId, title) VALUES (1, 'To Kill a Mockingbird');
INSERT INTO Book (bookId, title) VALUES (2, '1984');
INSERT INTO Book (bookId, title) VALUES (3, 'The Great Gatsby');
INSERT INTO Book (bookId, title) VALUES (4, 'Pride and Prejudice');
INSERT INTO Book (bookId, title) VALUES (5, 'The Catcher in the Rye');
INSERT INTO Book (bookId, title) VALUES (6, 'Animal Farm');
INSERT INTO Book (bookId, title) VALUES (7, 'Brave New World');
INSERT INTO Book (bookId, title) VALUES (8, 'The Lord of the Rings');
INSERT INTO Book (bookId, title) VALUES (9, 'The Hobbit');
INSERT INTO Book (bookId, title) VALUES (10, 'Fahrenheit 451');
INSERT INTO Book (bookId, title) VALUES (11, 'One Hundred Years of Solitude');
INSERT INTO Book (bookId, title) VALUES (12, 'Moby-Dick');
INSERT INTO Book (bookId, title) VALUES (13, 'The Chronicles of Narnia');
INSERT INTO Book (bookId, title) VALUES (14, 'The Hitchhiker''s Guide to the Galaxy');
INSERT INTO Book (bookId, title) VALUES (15, 'The Grapes of Wrath');
INSERT INTO Book (bookId, title) VALUES (16, 'War and Peace');
INSERT INTO Book (bookId, title) VALUES (17, 'The Odyssey');
INSERT INTO Book (bookId, title) VALUES (18, 'A Tale of Two Cities');
INSERT INTO Book (bookId, title) VALUES (19, 'Frankenstein');
INSERT INTO Book (bookId, title) VALUES (20, 'The Picture of Dorian Gray');
INSERT INTO Book (bookId, title) VALUES (21, 'Crime and Punishment');
INSERT INTO Book (bookId, title) VALUES (22, 'The Brothers Karamazov');
INSERT INTO Book (bookId, title) VALUES (23, 'Wuthering Heights');
INSERT INTO Book (bookId, title) VALUES (24, 'Anna Karenina');
INSERT INTO Book (bookId, title) VALUES (25, 'Don Quixote');
INSERT INTO Book (bookId, title) VALUES (26, 'The Count of Monte Cristo');
INSERT INTO Book (bookId, title) VALUES (27, 'Les Misérables');
INSERT INTO Book (bookId, title) VALUES (28, 'Gulliver''s Travels');
INSERT INTO Book (bookId, title) VALUES (29, 'Alice''s Adventures in Wonderland');
INSERT INTO Book (bookId, title) VALUES (30, 'The Adventures of Sherlock Holmes');
INSERT INTO Book (bookId, title) VALUES (31, 'Dracula');
INSERT INTO Book (bookId, title) VALUES (32, 'Jane Eyre');
INSERT INTO Book (bookId, title) VALUES (33, 'Great Expectations');
INSERT INTO Book (bookId, title) VALUES (34, 'The Scarlet Letter');
INSERT INTO Book (bookId, title) VALUES (35, 'Heart of Darkness');
INSERT INTO Book (bookId, title) VALUES (36, 'The Stranger');
INSERT INTO Book (bookId, title) VALUES (37, 'The Sun Also Rises');
INSERT INTO Book (bookId, title) VALUES (38, 'A Clockwork Orange');
INSERT INTO Book (bookId, title) VALUES (39, 'The Bell Jar');
INSERT INTO Book (bookId, title) VALUES (40, 'The Handmaid''s Tale');
INSERT INTO Book (bookId, title) VALUES (41, 'Slaughterhouse-Five');
INSERT INTO Book (bookId, title) VALUES (42, 'Catch-22');
INSERT INTO Book (bookId, title) VALUES (43, 'Lord of the Flies');
INSERT INTO Book (bookId, title) VALUES (44, 'The Road');
INSERT INTO Book (bookId, title) VALUES (45, 'The Old Man and the Sea');
INSERT INTO Book (bookId, title) VALUES (46, 'Beloved');
INSERT INTO Book (bookId, title) VALUES (47, 'The Color Purple');
INSERT INTO Book (bookId, title) VALUES (48, 'Midnight''s Children');
INSERT INTO Book (bookId, title) VALUES (49, 'The Alchemist');
INSERT INTO Book (bookId, title) VALUES (50, 'Harry Potter and the Philosopher''s Stone');

INSERT INTO Customer (CustomerId, FirstName, LastName, Address, Phone, Email, Password) VALUES (1, 'Daniela', 'Tomás', '123 Main St', '555-1234', 'daniela@example.com', '0fcf9713d4855b88e573b6ef54fa15648e2f0f03');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, Phone, Email, Password) VALUES (2, 'Diogo', 'Nunes', '456 Elm St', '555-5678', 'diogo@example.com', '0fcf9713d4855b88e573b6ef54fa15648e2f0f03');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, Phone, Email, Password) VALUES (3, 'João', 'Veloso', '789 Oak St', '555-9012', 'joao@example.com', '0fcf9713d4855b88e573b6ef54fa15648e2f0f03');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, Phone, Email, Password) VALUES (4, 'Alice', 'Brown', '101 Pine St', '555-3456', 'alice@example.com', '0fcf9713d4855b88e573b6ef54fa15648e2f0f03');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, Phone, Email, Password) VALUES (5, 'Bob', 'Wilson', '222 Cedar St', '555-7890', 'bob@example.com', '0fcf9713d4855b88e573b6ef54fa15648e2f0f03');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, Phone, Email, Password) VALUES (6, 'Carol', 'Martinez', '333 Maple St', '555-2345', 'carol@example.com', '0fcf9713d4855b88e573b6ef54fa15648e2f0f03');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, Phone, Email, Password) VALUES (7, 'Ted', 'Garcia', '444 Birch St', '555-6789', 'ted@example.com', '0fcf9713d4855b88e573b6ef54fa15648e2f0f03');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, Phone, Email, Password) VALUES (8, 'Jessica', 'Lee', '555 Walnut St', '555-1234', 'jessica@example.com', '0fcf9713d4855b88e573b6ef54fa15648e2f0f03');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, Phone, Email, Password) VALUES (9, 'David', 'Lopez', '666 Pineapple St', '555-5678', 'david@example.com', '0fcf9713d4855b88e573b6ef54fa15648e2f0f03');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, Phone, Email, Password) VALUES (10, 'Amanda', 'Nguyen', '777 Orange St', '555-9012', 'amanda@example.com', '0fcf9713d4855b88e573b6ef54fa15648e2f0f03');
