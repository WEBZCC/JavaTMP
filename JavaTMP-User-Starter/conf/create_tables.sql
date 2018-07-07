CREATE TABLE theme (
    themeId varchar(32) NOT NULL,
    themeName varchar(255) NOT NULL,
    CONSTRAINT theme_themeId_pk PRIMARY KEY (themeId)
) ENGINE=InnoDB;

CREATE TABLE language (
    languageId varchar(4) NOT NULL,
    languageName varchar(255) NOT NULL,
    CONSTRAINT language_languageId_pk PRIMARY KEY (languageId)
) ENGINE=InnoDB;

CREATE TABLE country (
    countryId varchar(4) NOT NULL,
    countryName varchar(255) NOT NULL,
    CONSTRAINT country_countryId_pk PRIMARY KEY (countryId)
) ENGINE=InnoDB;

CREATE TABLE document (
    documentId BIGINT NOT NULL AUTO_INCREMENT,
    documentName varchar(255) NOT NULL,
    documentSize BIGINT NOT NULL,
    contentType varchar(255) NOT NULL,
    documentContent BLOB NOT NULL,
    creationDate TIMESTAMP NOT NULL,
    randomHash BIGINT NOT NULL,
    CONSTRAINT document_documentId_pk PRIMARY KEY (documentId)
) ENGINE=InnoDB;

CREATE TABLE user (
    id BIGINT NOT NULL AUTO_INCREMENT,
    userName varchar(48) NOT NULL,
    password varchar(48) NOT NULL,
    firstName varchar(30) NOT NULL,
    lastName varchar(30) NOT NULL,
    status TINYINT NOT NULL,
    birthDate DATE NOT NULL,
    countryId varchar(4) NOT NULL,
    address TEXT NOT NULL,
    email varchar(45) NOT NULL,
    lang varchar(4) NOT NULL,
    theme varchar(48) NOT NULL,
    timezone varchar(48) NOT NULL,
    profilePicDocumentId BIGINT,
    creationDate TIMESTAMP NOT NULL,
    CONSTRAINT user_id_pk PRIMARY KEY (id),
    CONSTRAINT user_userName_uni UNIQUE(userName),
    CONSTRAINT user_profilePicDocumentId_fk FOREIGN KEY (profilePicDocumentId) REFERENCES document (documentId),
    CONSTRAINT user_countryId_fk FOREIGN KEY (countryId) REFERENCES country (countryId),
    CONSTRAINT user_lang_fk FOREIGN KEY (lang) REFERENCES language (languageId),
    CONSTRAINT user_theme_fk FOREIGN KEY (theme) REFERENCES theme (themeId)
) ENGINE=InnoDB;