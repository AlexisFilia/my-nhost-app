-- CreateTable
CREATE TABLE Project (
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
    userId TEXT,

    CONSTRAINT Project_pkey PRIMARY KEY (id)
);

-- CreateIndex
CREATE UNIQUE INDEX Project_identifier_key ON Project(identifier);

-- AddForeignKey
ALTER TABLE Project ADD CONSTRAINT Project_user_fkey FOREIGN KEY (userId) REFERENCES users(id) ON DELETE SET NULL ON UPDATE CASCADE;
