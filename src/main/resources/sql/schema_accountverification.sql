CREATE TABLE AccountVerifications
(
    id SERIAL NOT NULL PRIMARY KEY,
    user_id INT NOT NULL,
    url VARCHAR(255) NOT NULL,
--    date TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT UQ_AccountVerifications_User_Id UNIQUE (user_id),
    CONSTRAINT UQ_AccountVerifications_Url UNIQUE (url)
);