CREATE TABLE doctor
(
    doctorId bigint NOT NULL,
    lastName VARCHAR(100),
    firstName VARCHAR(100),
    idPSdoctor bigint,
    qualification VARCHAR(100),
    address VARCHAR(100),
    telephone VARCHAR(100),
    PRIMARY KEY (doctorId),
    FOREIGN KEY (doctorId) REFERENCES users(userId)
);

CREATE TABLE pharmacist
(
    pharmacistId bigint NOT NULL,
    PRIMARY KEY (pharmacistId),
    FOREIGN KEY (pharmacistId) REFERENCES users(userId)
);

CREATE TABLE medication
(
    medicationId bigint NOT NULL,
    doctorId bigint,
    dateConsultation VARCHAR(100),
    medicationId bigint,
    duration VARCHAR(100),
    nbRenewals int,
    NR bit,
    notes VARCHAR(1000),
    PRIMARY KEY (medicationId),
    FOREIGN KEY (doctorId) REFERENCES doctor(doctorId),
    FOREIGN KEY (medicationId) REFERENCES medication(medicationId)
);

CREATE TABLE users
(
    userId bigint NOT NULL,
    username VARCHAR(100),
    password VARCHAR(100),
    PRIMARY KEY (`id`)
);