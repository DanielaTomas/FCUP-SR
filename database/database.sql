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
    Company NVARCHAR(80),
    Address NVARCHAR(70),
    City NVARCHAR(40),
    State NVARCHAR(40),
    Country NVARCHAR(40),
    PostalCode NVARCHAR(10),
    Phone NVARCHAR(24),
    Fax NVARCHAR(24),
    Email NVARCHAR(60) NOT NULL,
    Password NVARCHAR(40) NOT NULL,
    CONSTRAINT PK_Customer PRIMARY KEY (CustomerId)
);


INSERT INTO Book (bookId, title) VALUES (1, 'AC/DC');
INSERT INTO Book (bookId, title) VALUES (2, 'Accept');
INSERT INTO Book (bookId, title) VALUES (3, 'Aerosmith');
INSERT INTO Book (bookId, title) VALUES (4, 'Alanis Morissette');
INSERT INTO Book (bookId, title) VALUES (5, 'Alice In Chains');
INSERT INTO Book (bookId, title) VALUES (6, 'Antônio Carlos Jobim');
INSERT INTO Book (bookId, title) VALUES (7, 'Apocalyptica');
INSERT INTO Book (bookId, title) VALUES (8, 'Audioslave');
INSERT INTO Book (bookId, title) VALUES (9, 'BackBeat');
INSERT INTO Book (bookId, title) VALUES (10, 'Billy Cobham');
INSERT INTO Book (bookId, title) VALUES (11, 'Black Label Society');
INSERT INTO Book (bookId, title) VALUES (12, 'Black Sabbath');
INSERT INTO Book (bookId, title) VALUES (13, 'Body Count');
INSERT INTO Book (bookId, title) VALUES (14, 'Bruce Dickinson');
INSERT INTO Book (bookId, title) VALUES (15, 'Buddy Guy');
INSERT INTO Book (bookId, title) VALUES (16, 'Caetano Veloso');
INSERT INTO Book (bookId, title) VALUES (17, 'Chico Buarque');
INSERT INTO Book (bookId, title) VALUES (18, 'Chico Science & Nação Zumbi');
INSERT INTO Book (bookId, title) VALUES (19, 'Cidade Negra');
INSERT INTO Book (bookId, title) VALUES (20, 'Cláudio Zoli');
INSERT INTO Book (bookId, title) VALUES (21, 'Various Books');
INSERT INTO Book (bookId, title) VALUES (22, 'Led Zeppelin');
INSERT INTO Book (bookId, title) VALUES (23, 'Frank Zappa & Captain Beefheart');
INSERT INTO Book (bookId, title) VALUES (24, 'Marcos Valle');
INSERT INTO Book (bookId, title) VALUES (25, 'Milton Nascimento & Bebeto');
INSERT INTO Book (bookId, title) VALUES (26, 'Azymuth');
INSERT INTO Book (bookId, title) VALUES (27, 'Gilberto Gil');
INSERT INTO Book (bookId, title) VALUES (28, 'João Gilberto');
INSERT INTO Book (bookId, title) VALUES (29, 'Bebel Gilberto');
INSERT INTO Book (bookId, title) VALUES (30, 'Jorge Vercilo');
INSERT INTO Book (bookId, title) VALUES (31, 'Baby Consuelo');
INSERT INTO Book (bookId, title) VALUES (32, 'Ney Matogrosso');
INSERT INTO Book (bookId, title) VALUES (33, 'Luiz Melodia');
INSERT INTO Book (bookId, title) VALUES (34, 'Nando Reis');
INSERT INTO Book (bookId, title) VALUES (35, 'Pedro Luís & A Parede');
INSERT INTO Book (bookId, title) VALUES (36, 'O Rappa');
INSERT INTO Book (bookId, title) VALUES (37, 'Ed Motta');
INSERT INTO Book (bookId, title) VALUES (38, 'Banda Black Rio');
INSERT INTO Book (bookId, title) VALUES (39, 'Fernanda Porto');
INSERT INTO Book (bookId, title) VALUES (40, 'Os Cariocas');
INSERT INTO Book (bookId, title) VALUES (41, 'Elis Regina');
INSERT INTO Book (bookId, title) VALUES (42, 'Milton Nascimento');
INSERT INTO Book (bookId, title) VALUES (43, 'A Cor Do Som');
INSERT INTO Book (bookId, title) VALUES (44, 'Kid Abelha');
INSERT INTO Book (bookId, title) VALUES (45, 'Sandra De Sá');
INSERT INTO Book (bookId, title) VALUES (46, 'Jorge Ben');
INSERT INTO Book (bookId, title) VALUES (47, 'Hermeto Pascoal');
INSERT INTO Book (bookId, title) VALUES (48, 'Barão Vermelho');
INSERT INTO Book (bookId, title) VALUES (49, 'Edson, DJ Marky & DJ Patife Featuring Fernanda Porto');
INSERT INTO Book (bookId, title) VALUES (50, 'Metallica');
INSERT INTO Book (bookId, title) VALUES (51, 'Queen');
INSERT INTO Book (bookId, title) VALUES (52, 'Kiss');
INSERT INTO Book (bookId, title) VALUES (53, 'Spyro Gyra');
INSERT INTO Book (bookId, title) VALUES (54, 'Green Day');
INSERT INTO Book (bookId, title) VALUES (55, 'David Coverdale');
INSERT INTO Book (bookId, title) VALUES (56, 'Gonzaguinha');
INSERT INTO Book (bookId, title) VALUES (57, 'Os Mutantes');
INSERT INTO Book (bookId, title) VALUES (58, 'Deep Purple');
INSERT INTO Book (bookId, title) VALUES (59, 'Santana');
INSERT INTO Book (bookId, title) VALUES (60, 'Santana Feat. Dave Matthews');
INSERT INTO Book (bookId, title) VALUES (61, 'Santana Feat. Everlast');
INSERT INTO Book (bookId, title) VALUES (62, 'Santana Feat. Rob Thomas');
INSERT INTO Book (bookId, title) VALUES (63, 'Santana Feat. Lauryn Hill & Cee-Lo');
INSERT INTO Book (bookId, title) VALUES (64, 'Santana Feat. The Project G&B');
INSERT INTO Book (bookId, title) VALUES (65, 'Santana Feat. Maná');
INSERT INTO Book (bookId, title) VALUES (66, 'Santana Feat. Eagle-Eye Cherry');
INSERT INTO Book (bookId, title) VALUES (67, 'Santana Feat. Eric Clapton');
INSERT INTO Book (bookId, title) VALUES (68, 'Miles Davis');
INSERT INTO Book (bookId, title) VALUES (69, 'Gene Krupa');
INSERT INTO Book (bookId, title) VALUES (70, 'Toquinho & Vinícius');
INSERT INTO Book (bookId, title) VALUES (71, 'Vinícius De Moraes & Baden Powell');
INSERT INTO Book (bookId, title) VALUES (72, 'Vinícius De Moraes');
INSERT INTO Book (bookId, title) VALUES (73, 'Vinícius E Qurteto Em Cy');
INSERT INTO Book (bookId, title) VALUES (74, 'Vinícius E Odette Lara');
INSERT INTO Book (bookId, title) VALUES (75, 'Vinicius, Toquinho & Quarteto Em Cy');
INSERT INTO Book (bookId, title) VALUES (76, 'Creedence Clearwater Revival');
INSERT INTO Book (bookId, title) VALUES (77, 'Cássia Eller');
INSERT INTO Book (bookId, title) VALUES (78, 'Def Leppard');
INSERT INTO Book (bookId, title) VALUES (79, 'Dennis Chambers');
INSERT INTO Book (bookId, title) VALUES (80, 'Djavan');
INSERT INTO Book (bookId, title) VALUES (81, 'Eric Clapton');
INSERT INTO Book (bookId, title) VALUES (82, 'Faith No More');
INSERT INTO Book (bookId, title) VALUES (83, 'Falamansa');
INSERT INTO Book (bookId, title) VALUES (84, 'Foo Fighters');
INSERT INTO Book (bookId, title) VALUES (85, 'Frank Sinatra');
INSERT INTO Book (bookId, title) VALUES (86, 'Funk Como Le Gusta');
INSERT INTO Book (bookId, title) VALUES (87, 'Godsmack');
INSERT INTO Book (bookId, title) VALUES (88, 'Guns N'' Roses');
INSERT INTO Book (bookId, title) VALUES (89, 'Incognito');
INSERT INTO Book (bookId, title) VALUES (90, 'Iron Maiden');
INSERT INTO Book (bookId, title) VALUES (91, 'James Brown');
INSERT INTO Book (bookId, title) VALUES (92, 'Jamiroquai');
INSERT INTO Book (bookId, title) VALUES (93, 'JET');
INSERT INTO Book (bookId, title) VALUES (94, 'Jimi Hendrix');
INSERT INTO Book (bookId, title) VALUES (95, 'Joe Satriani');
INSERT INTO Book (bookId, title) VALUES (96, 'Jota Quest');
INSERT INTO Book (bookId, title) VALUES (97, 'João Suplicy');
INSERT INTO Book (bookId, title) VALUES (98, 'Judas Priest');
INSERT INTO Book (bookId, title) VALUES (99, 'Legião Urbana');
INSERT INTO Book (bookId, title) VALUES (100, 'Lenny Kravitz');
INSERT INTO Book (bookId, title) VALUES (101, 'Lulu Santos');
INSERT INTO Book (bookId, title) VALUES (102, 'Marillion');
INSERT INTO Book (bookId, title) VALUES (103, 'Marisa Monte');
INSERT INTO Book (bookId, title) VALUES (104, 'Marvin Gaye');
INSERT INTO Book (bookId, title) VALUES (105, 'Men At Work');
INSERT INTO Book (bookId, title) VALUES (106, 'Motörhead');
INSERT INTO Book (bookId, title) VALUES (107, 'Motörhead & Girlschool');
INSERT INTO Book (bookId, title) VALUES (108, 'Mônica Marianno');
INSERT INTO Book (bookId, title) VALUES (109, 'Mötley Crüe');
INSERT INTO Book (bookId, title) VALUES (110, 'Nirvana');
INSERT INTO Book (bookId, title) VALUES (111, 'O Terço');
INSERT INTO Book (bookId, title) VALUES (112, 'Olodum');
INSERT INTO Book (bookId, title) VALUES (113, 'Os Paralamas Do Sucesso');
INSERT INTO Book (bookId, title) VALUES (114, 'Ozzy Osbourne');
INSERT INTO Book (bookId, title) VALUES (115, 'Page & Plant');
INSERT INTO Book (bookId, title) VALUES (116, 'Passengers');
INSERT INTO Book (bookId, title) VALUES (117, 'Paul D''Ianno');
INSERT INTO Book (bookId, title) VALUES (118, 'Pearl Jam');
INSERT INTO Book (bookId, title) VALUES (119, 'Peter Tosh');
INSERT INTO Book (bookId, title) VALUES (120, 'Pink Floyd');
INSERT INTO Book (bookId, title) VALUES (121, 'Planet Hemp');
INSERT INTO Book (bookId, title) VALUES (122, 'R.E.M. Feat. Kate Pearson');
INSERT INTO Book (bookId, title) VALUES (123, 'R.E.M. Feat. KRS-One');
INSERT INTO Book (bookId, title) VALUES (124, 'R.E.M.');
INSERT INTO Book (bookId, title) VALUES (125, 'Raimundos');
INSERT INTO Book (bookId, title) VALUES (126, 'Raul Seixas');
INSERT INTO Book (bookId, title) VALUES (127, 'Red Hot Chili Peppers');
INSERT INTO Book (bookId, title) VALUES (128, 'Rush');
INSERT INTO Book (bookId, title) VALUES (129, 'Simply Red');
INSERT INTO Book (bookId, title) VALUES (130, 'Skank');
INSERT INTO Book (bookId, title) VALUES (131, 'Smashing Pumpkins');
INSERT INTO Book (bookId, title) VALUES (132, 'Soundgarden');
INSERT INTO Book (bookId, title) VALUES (133, 'Stevie Ray Vaughan & Double Trouble');
INSERT INTO Book (bookId, title) VALUES (134, 'Stone Temple Pilots');
INSERT INTO Book (bookId, title) VALUES (135, 'System Of A Down');
INSERT INTO Book (bookId, title) VALUES (136, 'Terry Bozzio, Tony Levin & Steve Stevens');
INSERT INTO Book (bookId, title) VALUES (137, 'The Black Crowes');
INSERT INTO Book (bookId, title) VALUES (138, 'The Clash');
INSERT INTO Book (bookId, title) VALUES (139, 'The Cult');
INSERT INTO Book (bookId, title) VALUES (140, 'The Doors');
INSERT INTO Book (bookId, title) VALUES (141, 'The Police');
INSERT INTO Book (bookId, title) VALUES (142, 'The Rolling Stones');
INSERT INTO Book (bookId, title) VALUES (143, 'The Tea Party');
INSERT INTO Book (bookId, title) VALUES (144, 'The Who');
INSERT INTO Book (bookId, title) VALUES (145, 'Tim Maia');
INSERT INTO Book (bookId, title) VALUES (146, 'Titãs');
INSERT INTO Book (bookId, title) VALUES (147, 'Battlestar Galactica');
INSERT INTO Book (bookId, title) VALUES (148, 'Heroes');
INSERT INTO Book (bookId, title) VALUES (149, 'Lost');
INSERT INTO Book (bookId, title) VALUES (150, 'U2');

INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (1, 'Luís', 'Gonçalves', 'Embraer - Empresa Brasileira de Aeronáutica S.A.', 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', '12227-000', '+55 (12) 3923-5555', '+55 (12) 3923-5566', 'luisg@embraer.com.br', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (2, 'Leonie', 'Köhler', 'Theodor-Heuss-Straße 34', 'Stuttgart', 'Germany', '70174', '+49 0711 2842222', 'leonekohler@surfeu.de', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (3, 'François', 'Tremblay', '1498 rue Bélanger', 'Montréal', 'QC', 'Canada', 'H2G 1A7', '+1 (514) 721-4711', 'ftremblay@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (4, 'Bjørn', 'Hansen', 'Ullevålsveien 14', 'Oslo', 'Norway', '0171', '+47 22 44 22 22', 'bjorn.hansen@yahoo.no', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, Country, PostalCode, Phone, Fax, Email, Password) VALUES (5, 'František', 'Wichterlová', 'JetBrains s.r.o.', 'Klanova 9/506', 'Prague', 'Czech Republic', '14700', '+420 2 4172 5555', '+420 2 4172 5555', 'frantisekw@jetbrains.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (6, 'Helena', 'Holý', 'Rilská 3174/6', 'Prague', 'Czech Republic', '14300', '+420 2 4177 0449', 'hholy@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (7, 'Astrid', 'Gruber', 'Rotenturmstraße 4, 1010 Innere Stadt', 'Vienne', 'Austria', '1010', '+43 01 5134505', 'astrid.gruber@apple.at', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (8, 'Daan', 'Peeters', 'Grétrystraat 63', 'Brussels', 'Belgium', '1000', '+32 02 219 03 03', 'daan_peeters@apple.be', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (9, 'Kara', 'Nielsen', 'Sønder Boulevard 51', 'Copenhagen', 'Denmark', '1720', '+453 3331 9991', 'kara.nielsen@jubii.dk', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (10, 'Eduardo', 'Martins', 'Woodstock Discos', 'Rua Dr. Falcão Filho, 155', 'São Paulo', 'SP', 'Brazil', '01007-010', '+55 (11) 3033-5446', '+55 (11) 3033-4564', 'eduardo@woodstock.com.br', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (11, 'Alexandre', 'Rocha', 'Banco do Brasil S.A.', 'Av. Paulista, 2022', 'São Paulo', 'SP', 'Brazil', '01310-200', '+55 (11) 3055-3278', '+55 (11) 3055-8131', 'alero@uol.com.br', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (12, 'Roberto', 'Almeida', 'Riotur', 'Praça Pio X, 119', 'Rio de Janeiro', 'RJ', 'Brazil', '20040-020', '+55 (21) 2271-7000', '+55 (21) 2271-7070', 'roberto.almeida@riotur.gov.br', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (13, 'Fernanda', 'Ramos', 'Qe 7 Bloco G', 'Brasília', 'DF', 'Brazil', '71020-677', '+55 (61) 3363-5547', '+55 (61) 3363-7855', 'fernadaramos4@uol.com.br', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (14, 'Mark', 'Philips', 'Telus', '8210 111 ST NW', 'Edmonton', 'AB', 'Canada', 'T6G 2C7', '+1 (780) 434-4554', '+1 (780) 434-5565', 'mphilips12@shaw.ca', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (15, 'Jennifer', 'Peterson', 'Rogers Canada', '700 W Pender Street', 'Vancouver', 'BC', 'Canada', 'V6C 1G8', '+1 (604) 688-2255', '+1 (604) 688-8756', 'jenniferp@rogers.ca', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (16, 'Frank', 'Harris', 'Google Inc.', '1600 Amphitheatre Parkway', 'Mountain View', 'CA', 'USA', '94043-1351', '+1 (650) 253-0000', '+1 (650) 253-0000', 'fharris@google.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (17, 'Jack', 'Smith', 'Microsoft Corporation', '1 Microsoft Way', 'Redmond', 'WA', 'USA', '98052-8300', '+1 (425) 882-8080', '+1 (425) 882-8081', 'jacksmith@microsoft.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (18, 'Michelle', 'Brooks', '627 Broadway', 'New York', 'NY', 'USA', '10012-2612', '+1 (212) 221-3546', '+1 (212) 221-4679', 'michelleb@aol.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, Password) VALUES (19, 'Tim', 'Goyer', 'Apple Inc.', '1 Infinite Loop', 'Cupertino', 'CA', 'USA', '95014', '+1 (408) 996-1010', '+1 (408) 996-1011', 'tgoyer@apple.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (20, 'Dan', 'Miller', '541 Del Medio Avenue', 'Mountain View', 'CA', 'USA', '94040-111', '+1 (650) 644-3358', 'dmiller@comcast.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (21, 'Kathy', 'Chase', '801 W 4th Street', 'Reno', 'NV', 'USA', '89503', '+1 (775) 223-7665', 'kachase@hotmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (22, 'Heather', 'Leacock', '120 S Orange Ave', 'Orlando', 'FL', 'USA', '32801', '+1 (407) 999-7788', 'hleacock@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (23, 'John', 'Gordon', '69 Salem Street', 'Boston', 'MA', 'USA', '2113', '+1 (617) 522-1333', 'johngordon22@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (24, 'Frank', 'Ralston', '162 E Superior Street', 'Chicago', 'IL', 'USA', '60611', '+1 (312) 332-3232', 'fralston@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (25, 'Victor', 'Stevens', '319 N. Frances Street', 'Madison', 'WI', 'USA', '53703', '+1 (608) 257-0597', 'vstevens@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (26, 'Richard', 'Cunningham', '2211 W Berry Street', 'Fort Worth', 'TX', 'USA', '76110', '+1 (817) 924-7272', 'ricunningham@hotmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (27, 'Patrick', 'Gray', '1033 N Park Ave', 'Tucson', 'AZ', 'USA', '85719', '+1 (520) 622-4200', 'patrick.gray@aol.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (28, 'Julia', 'Barnett', '302 S 700 E', 'Salt Lake City', 'UT', 'USA', '84102', '+1 (801) 531-7272', 'jubarnett@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (29, 'Robert', 'Brown', '796 Dundas Street West', 'Toronto', 'ON', 'Canada', 'M6J 1V1', '+1 (416) 363-8888', 'robbrown@shaw.ca', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (30, 'Edward', 'Francis', '230 Elgin Street', 'Ottawa', 'ON', 'Canada', 'K2P 1L7', '+1 (613) 234-3322', 'edfrancis@yachoo.ca', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (31, 'Martha', 'Silk', '194A Chain Lake Drive', 'Halifax', 'NS', 'Canada', 'B3S 1C5', '+1 (902) 450-0450', 'marthasilk@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (32, 'Aaron', 'Mitchell', '696 Osborne Street', 'Winnipeg', 'MB', 'Canada', 'R3L 2B9', '+1 (204) 452-6452', 'aaronmitchell@yahoo.ca', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (33, 'Ellie', 'Sullivan', '5112 48 Street', 'Yellowknife', 'NT', 'Canada', 'X1A 1N6', '+1 (867) 920-2233', 'ellie.sullivan@shaw.ca', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, Phone, Email, Password) VALUES (34, 'João', 'Fernandes', 'Rua da Assunção 53', 'Lisbon', 'Portugal', '+351 (213) 466-111', 'jfernandes@yahoo.pt', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, Phone, Email, Password) VALUES (35, 'Madalena', 'Sampaio', 'Rua dos Campeões Europeus de Viena, 4350', 'Porto', 'Portugal', '+351 (225) 022-448', 'masampaio@sapo.pt', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (36, 'Hannah', 'Schneider', 'Tauentzienstraße 8', 'Berlin', 'Germany', '10789', '+49 030 26550280', 'hannah.schneider@yahoo.de', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (37, 'Fynn', 'Zimmermann', 'Berger Straße 10', 'Frankfurt', 'Germany', '60316', '+49 069 40598889', 'fzimmermann@yahoo.de', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (38, 'Niklas', 'Schröder', 'Barbarossastraße 19', 'Berlin', 'Germany', '10779', '+49 030 2141444', 'nschroder@surfeu.de', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (39, 'Camille', 'Bernard', '4, Rue Milton', 'Paris', 'France', '75009', '+33 01 49 70 65 65', 'camille.bernard@yahoo.fr', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (40, 'Dominique', 'Lefebvre', '8, Rue Hanovre', 'Paris', 'France', '75002', '+33 01 47 42 71 71', 'dominiquelefebvre@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (41, 'Marc', 'Dubois', '11, Place Bellecour', 'Lyon', 'France', '69002', '+33 04 78 30 30 30', 'marc.dubois@hotmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (42, 'Wyatt', 'Girard', '9, Place Louis Barthou', 'Bordeaux', 'France', '33000', '+33 05 56 96 96 96', 'wyatt.girard@yahoo.fr', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (43, 'Isabelle', 'Mercier', '68, Rue Jouvence', 'Dijon', 'France', '21000', '+33 03 80 73 66 99', 'isabelle_mercier@apple.fr', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (44, 'Terhi', 'Hämäläinen', 'Porthaninkatu 9', 'Helsinki', 'Finland', '00530', '+358 09 870 2000', 'terhi.hamalainen@apple.fi', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Email, Password) VALUES (45, 'Ladislav', 'Kovács', 'Erzsébet krt. 58.', 'Budapest', 'Hungary', 'H-1073', 'ladislav_kovacs@apple.hu', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, Phone, Email, Password) VALUES (46, 'Hugh', 'O''Reilly', '3 Chatham Street', 'Dublin', 'Dublin', 'Ireland', '+353 01 6792424', 'hughoreilly@apple.ie', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (47, 'Lucas', 'Mancini', 'Via Degli Scipioni, 43', 'Rome', 'RM', 'Italy', '00192', '+39 06 39733434', 'lucas.mancini@yahoo.it', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (48, 'Johannes', 'Van der Berg', 'Lijnbaansgracht 120bg', 'Amsterdam', 'VV', 'Netherlands', '1016', '+31 020 6223130', 'johavanderberg@yahoo.nl', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (49, 'Stanisław', 'Wójcik', 'Ordynacka 10', 'Warsaw', 'Poland', '00-358', '+48 22 828 37 39', 'stanisław.wójcik@wp.pl', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (50, 'Enrique', 'Muñoz', 'C/ San Bernardo 85', 'Madrid', 'Spain', '28015', '+34 914 454 454', 'enrique_munoz@yahoo.es', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (51, 'Joakim', 'Johansson', 'Celsiusg. 9', 'Stockholm', 'Sweden', '11230', '+46 08-651 52 52', 'joakim.johansson@yahoo.se', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (52, 'Emma', 'Jones', '202 Hoxton Street', 'London', 'United Kingdom', 'N1 5LH', '+44 020 7707 0707', 'emma_jones@hotmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (53, 'Phil', 'Hughes', '113 Lupus St', 'London', 'United Kingdom', 'SW1V 3EN', '+44 020 7976 5722', 'phil.hughes@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (54, 'Steve', 'Murray', '110 Raeburn Pl', 'Edinburgh ', 'United Kingdom', 'EH4 1HH', '+44 0131 315 3300', 'steve.murray@yahoo.uk', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, Password) VALUES (55, 'Mark', 'Taylor', '421 Bourke Street', 'Sidney', 'NSW', 'Australia', '2010', '+61 (02) 9332 3633', 'mark.taylor@yahoo.au', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (56, 'Diego', 'Gutiérrez', '307 Macacha Güemes', 'Buenos Aires', 'Argentina', '1106', '+54 (0)11 4311 4333', 'diego.gutierrez@yahoo.ar', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, Phone, Email, Password) VALUES (57, 'Luis', 'Rojas', 'Calle Lira, 198', 'Santiago', 'Chile', '+56 (0)2 635 4444', 'luisrojas@yahoo.cl', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (58, 'Manoj', 'Pareek', '12,Community Centre', 'Delhi', 'India', '110017', '+91 0124 39883988', 'manoj.pareek@rediff.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, Password) VALUES (59, 'Puja', 'Srivastava', '3,Raj Bhavan Road', 'Bangalore', 'India', '560001', '+91 080 22289999', 'puja_srivastava@yahoo.in', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');