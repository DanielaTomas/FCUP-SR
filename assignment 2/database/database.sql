DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Customer;

CREATE TABLE Book (
    bookId INTEGER NOT NULL,
    title NVARCHAR(120) NOT NULL UNIQUE,
    author NVARCHAR(120) NOT NULL,
    /*category NVARCHAR(120),*/
    price FLOAT NOT NULL,
    descr text NOT NULL,
    stock INTEGER NOT NULL,
    CONSTRAINT PK_Book PRIMARY KEY (bookId)
);

CREATE TABLE Customer (
    customerId INTEGER  NOT NULL,
    firstName NVARCHAR(40) NOT NULL,
    lastName NVARCHAR(20) NOT NULL,
    address NVARCHAR(70),
    phone NVARCHAR(24),
    email NVARCHAR(60) NOT NULL UNIQUE,
    password NVARCHAR(40) NOT NULL,
    CONSTRAINT PK_Customer PRIMARY KEY (customerId)
);

INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (1, 'To Kill a Mockingbird', 'Harper Lee', 'A powerful story set in the American South, addressing racial injustice and moral growth through the eyes of a young girl.', 12.99, 8);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (2, '1984', 'George Orwell', 'A dystopian novel portraying a totalitarian society where government surveillance and manipulation control every aspect of life.', 9.99, 10);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'A tale of wealth, ambition, and lost love set in the Roaring Twenties, highlighting the elusive American Dream.', 11.50, 23);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (4, 'Pride and Prejudice', 'Jane Austen', 'A classic romance revolving around societal norms, misunderstandings, and the evolution of love and character.', 10.25, 31);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (5, 'The Catcher in the Rye', 'J.D. Salinger', 'A coming-of-age novel following a teenager''s rebellion and search for authenticity in a world he sees as phony.', 13.75, 45);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (6, 'Animal Farm', 'George Orwell', 'An allegorical novella depicting a farm where animals rebel against their human farmer, reflecting on political systems and power.', 8.99, 19);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (7, 'Brave New World', 'Aldous Huxley', 'A futuristic dystopian society where technological advancements lead to social control and the loss of individuality.', 11.99, 22);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (8, 'The Lord of the Rings', 'J.R.R. Tolkien', 'An epic fantasy trilogy following the quest to destroy a powerful ring, set in a richly detailed fictional world.', 20.50, 16);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (9, 'The Hobbit', 'J.R.R. Tolkien', 'A fantasy adventure about a hobbit, a wizard, and a group of dwarves on a quest to reclaim a stolen treasure.', 15.75, 36);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (10, 'Fahrenheit 451', 'Ray Bradbury', 'A dystopian tale exploring a future society where books are banned and "firemen" burn any that are found.', 12.25, 27);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (11, 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'A multi-generational saga blending magical realism, depicting the history of the Buendía family.', 14.99, 12);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (12, 'Moby-Dick', 'Herman Melville', 'An epic tale of obsession and revenge centered around Captain Ahab''s quest for the white whale.', 16.50, 48);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (13, 'The Chronicles of Narnia', 'C.S. Lewis', 'A series of fantasy novels exploring the adventures of children in the magical land of Narnia.', 18.25, 11);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (14, 'The Hitchhiker''s Guide to the Galaxy', 'Douglas Adams', 'A comedic science fiction series following the adventures of Arthur Dent through space.', 10.99, 6);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (15, 'The Grapes of Wrath', 'John Steinbeck', 'A novel depicting the struggles of Dust Bowl migrants during the Great Depression in the United States.', 11.25, 33);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (16, 'War and Peace', 'Leo Tolstoy', 'A historical novel depicting Russian society during the Napoleonic era, exploring themes of love, war, and human nature.', 22.99, 39);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (17, 'The Odyssey', 'Homer', 'An epic poem following the adventures of Odysseus as he attempts to return home after the Trojan War.', 9.50, 34);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (18, 'A Tale of Two Cities', 'Charles Dickens', 'Set in London and Paris during the French Revolution, this novel explores the contrasts between two cities and the turmoil of the time.', 13.50, 13);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (19, 'Frankenstein', 'Mary Shelley', 'A Gothic novel exploring themes of creation, ambition, and societal rejection through the story of a scientist and his monstrous creation.', 12.75, 20);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (20, 'The Picture of Dorian Gray', 'Oscar Wilde', 'A philosophical novel about the consequences of vanity and hedonism, exploring the portrait of a man that ages while he remains young and immoral.', 14.50, 40);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (21, 'Crime and Punishment', 'Fyodor Dostoevsky', 'A psychological thriller delving into the mind of a young man who commits a murder and grapples with guilt and morality.', 14.99, 32);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (22, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'A complex novel examining faith, morality, and family dynamics through the lives of three brothers.', 16.50, 41);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (23, 'Wuthering Heights', 'Emily Brontë', 'A tragic love story set on the Yorkshire moors, exploring passion, revenge, and the destructive nature of love.', 12.25, 20);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (24, 'Anna Karenina', 'Leo Tolstoy', 'A complex tale of love and society in 19th-century Russia, following the life of Anna Karenina and the consequences of her affair.', 18.75, 28);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (25, 'Don Quixote', 'Miguel de Cervantes', 'Considered one of the greatest works of fiction, this novel follows the adventures of an aging knight who sets out to revive chivalry.', 20.25, 18);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (26, 'The Count of Monte Cristo', 'Alexandre Dumas', 'A tale of revenge and redemption following a man wrongly imprisoned, who seeks vengeance against those who betrayed him.', 17.99, 37);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (27, 'Les Misérables', 'Victor Hugo', 'A sprawling novel set in France, depicting the struggles of Jean Valjean and others amidst societal injustices.', 19.50, 28);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (28, 'Gulliver''s Travels', 'Jonathan Swift', 'A satirical adventure tale following Lemuel Gulliver through lands inhabited by tiny people and giants, criticizing human nature and society.', 14.25, 2);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (29, 'Alice''s Adventures in Wonderland', 'Lewis Carroll', 'A whimsical and nonsensical story of a young girl named Alice who falls into a fantastical world full of peculiar creatures.', 13.99, 17);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (30, 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', 'A collection of detective stories featuring the brilliant detective Sherlock Holmes and his companion Dr. Watson.', 15.75, 27);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (31, 'Dracula', 'Bram Stoker', 'An iconic Gothic horror novel featuring the vampire Count Dracula and the battle between him and a group led by Professor Abraham Van Helsing.', 16.99, 55);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (32, 'Jane Eyre', 'Charlotte Brontë', 'A bildungsroman following the life of Jane Eyre, an orphaned governess, exploring themes of love, morality, and independence.', 14.50, 36);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (33, 'Great Expectations', 'Charles Dickens', 'A coming-of-age novel about an orphan named Pip, tracing his life and aspirations amidst the influences of wealth and society.', 15.25, 12);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (34, 'The Scarlet Letter', 'Nathaniel Hawthorne', 'Set in Puritan New England, the novel follows Hester Prynne, who is ostracized after bearing a child out of wedlock.', 13.75, 10);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (35, 'Heart of Darkness', 'Joseph Conrad', 'A novella exploring the darkness within human nature as seen through the journey of Charles Marlow into the Congo.', 12.50, 25);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (36, 'The Stranger', 'Albert Camus', 'A philosophical novel exploring the absurdity of life through the story of Meursault, who faces the indifference of society.', 14.75, 45);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (37, 'The Sun Also Rises', 'Ernest Hemingway', 'Set in the post-World War I era, the novel follows a group of expatriates as they navigate love, disillusionment, and the Lost Generation.', 16.25, 33);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (38, 'A Clockwork Orange', 'Anthony Burgess', 'A dystopian novel exploring free will, morality, and the nature of evil through the character of Alex in a society plagued by violence.', 17.50, 35);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (39, 'The Bell Jar', 'Sylvia Plath', 'A semi-autobiographical novel following the mental health struggles of a young woman, addressing societal pressures and identity.', 15.99, 0);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (40, 'The Handmaid''s Tale', 'Margaret Atwood', 'A speculative fiction novel depicting a totalitarian society where women are subjugated and used for reproduction.', 18.25, 19);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (41, 'Slaughterhouse-Five', 'Kurt Vonnegut', 'An anti-war novel mixing science fiction and satire, exploring the experiences of a soldier named Billy Pilgrim.', 16.50, 18);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (42, 'Catch-22', 'Joseph Heller', 'A satirical novel set during World War II, focusing on the absurdities of bureaucracy and the paradoxes of war.', 14.99, 51);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (43, 'Lord of the Flies', 'William Golding', 'A novel exploring the descent into savagery of a group of boys stranded on an uninhabited island.', 12.99, 22);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (44, 'The Road', 'Cormac McCarthy', 'A post-apocalyptic novel following a father and son''s journey through a desolate landscape, highlighting themes of survival and hope.', 19.99, 35);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (45, 'The Old Man and the Sea', 'Ernest Hemingway', 'A story of an aging Cuban fisherman''s struggle with a giant marlin, exploring themes of endurance and perseverance.', 11.50, 44);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (46, 'Beloved', 'Toni Morrison', 'A novel inspired by the true story of Margaret Garner, a slave, exploring the impact of slavery and trauma on the human psyche.', 14.25, 46);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (47, 'The Color Purple', 'Alice Walker', 'An epistolary novel following the life of Celie, an African American woman in the South, exploring themes of race, gender, and resilience.', 13.99, 16);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (48, 'Midnight''s Children', 'Salman Rushdie', 'A magical realist novel following the lives of children born at the moment of India''s independence.', 17.75, 41);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (49, 'The Alchemist', 'Paulo Coelho', 'A philosophical novel following a young Andalusian shepherd on a journey to discover his personal legend.', 12.50, 28);
INSERT INTO Book (bookId, title, author, descr, price, stock) VALUES (50, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'The first book in the Harry Potter series, following the adventures of a young wizard at Hogwarts School of Witchcraft and Wizardry.', 16.99, 38);