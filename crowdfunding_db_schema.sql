-- Creating the 'Contacts' table
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(300),
    last_name VARCHAR(300),
    email VARCHAR(300)
);
-- Creating the 'Category' table
CREATE TABLE Category (
    category_id VARCHAR(300) PRIMARY KEY,
    category VARCHAR(300)
);
-- Creating the 'Subcategory' table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(300) PRIMARY KEY,
    subcategory VARCHAR(300)
);
-- Creating the 'Campaign' table
CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(300),
    description VARCHAR(300),
    goal INT,
    pledged INT,
    outcome VARCHAR(300),
    backers_count INT,
    country VARCHAR(300),
    currency VARCHAR(300),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(300),
    subcategory_id VARCHAR(300),
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

select * from contacts
select * from category
select * from subcategory
select * from campaign