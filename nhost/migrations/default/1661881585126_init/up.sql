-- CreateTable
CREATE TABLE ProjectTest (
    id TEXT NOT NULL,
    identifier TEXT NOT NULL DEFAULT '',
    name TEXT NOT NULL DEFAULT '',
    status INTEGER,
    dateReception TIMESTAMP(3),
    dateDelivery TIMESTAMP(3),
    typeEmergency INTEGER,
    altitude INTEGER,
    createdAt TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT Project_pkey PRIMARY KEY (id)
);

-- CreateIndex
CREATE UNIQUE INDEX Project_identifier_key ON ProjectTest(identifier);