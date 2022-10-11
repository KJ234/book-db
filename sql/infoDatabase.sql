CREATE TABLE books (
    id INT NOT NULL IDENTITY PRIMARY KEY
    title varchar(MAX) NOT NULL,
	author varchar(MAX) NULL,
    ISBN varchar(25) NOT NULL
)

CREATE TABLE users (
    id INT NOT NULL IDENTITY PRIMARY KEY
    username varchar(50) NOT NULL,
	name varchar(50) NOT NULL,
)

CREATE TABLE borrowed (
    id INT NOT NULL IDENTITY PRIMARY KEY
    user_id INT NOT NULL
    book_id INT NOT NULL
    due_date date NOT NULL
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
)
