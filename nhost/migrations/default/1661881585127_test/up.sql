-- CreateTable
CREATE TABLE Persons (
    id TEXT NOT NULL,
    name TEXT NOT NULL DEFAULT '',
    createdAt TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT Project_pkey PRIMARY KEY (id)
);

-- CreateIndex
CREATE UNIQUE INDEX Project_identifier_key ON Persons(identifier);