CREATE TABLE dbo.Beneficiario (
    ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    NumeroCarteira INT NOT NULL,
    Nome VARCHAR(2048) NOT NULL,
    DataNascimento VARCHAR(10) NOT NULL,
    Sexo VARCHAR(1) NOT NULL,
    CPF VARCHAR(11),
    NumeroRG VARCHAR(14),
    DigitoRG VARCHAR(1),
    EstadoRG VARCHAR(2),
    Email VARCHAR(2048),
    Logradouro VARCHAR(2048),
    Numero VARCHAR(2048),
    Complemento VARCHAR(2048),
    Bairro VARCHAR(2048),
    Cidade VARCHAR(2048),
    CEP VARCHAR(8),
    UF VARCHAR(2),
    TelefoneDDD VARCHAR(2),
    TelefoneNumero VARCHAR(9),
    DigitacaoInicio DATETIME,
    DigitacaoTermino DATETIME
)

CREATE TABLE dbo.PacienteSemIntegracao (
    ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    NumeroCarteiraPlanoSaude INT NOT NULL,
    Nome VARCHAR(2048) NOT NULL,
    DataNascimento VARCHAR(10) NOT NULL,
    Sexo VARCHAR(1) NOT NULL,
    CPF VARCHAR(11),
    NumeroRG VARCHAR(14),
    DigitoRG VARCHAR(1),
    EstadoRG VARCHAR(2),
    Email VARCHAR(2048),
    Logradouro VARCHAR(2048),
    Numero VARCHAR(2048),
    Complemento VARCHAR(2048),
    Bairro VARCHAR(2048),
    Cidade VARCHAR(2048),
    CEP VARCHAR(8),
    UF VARCHAR(2),
    TelefoneDDD VARCHAR(2),
    TelefoneNumero VARCHAR(9),
    DigitacaoInicio DATETIME,
    DigitacaoTermino DATETIME
)

CREATE TABLE dbo.PacienteComIntegracao (
    ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    NumeroCarteiraPlanoSaude INT NOT NULL,
    Nome VARCHAR(2048) NOT NULL,
    DataNascimento VARCHAR(10) NOT NULL,
    Sexo VARCHAR(1) NOT NULL,
    CPF VARCHAR(11),
    NumeroRG VARCHAR(14),
    DigitoRG VARCHAR(1),
    EstadoRG VARCHAR(2),
    Email VARCHAR(2048),
    Logradouro VARCHAR(2048),
    Numero VARCHAR(2048),
    Complemento VARCHAR(2048),
    Bairro VARCHAR(2048),
    Cidade VARCHAR(2048),
    CEP VARCHAR(8),
    UF VARCHAR(2),
    TelefoneDDD VARCHAR(2),
    TelefoneNumero VARCHAR(9),
    DigitacaoInicio DATETIME,
    DigitacaoTermino DATETIME
)

CREATE TABLE dbo.ClienteSemIntegracao (
    ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    NumeroCarteiraPlanoSaude INT NOT NULL,
    Nome VARCHAR(2048) NOT NULL,
    DataNascimento VARCHAR(10) NOT NULL,
    Sexo VARCHAR(1) NOT NULL,
    CPF VARCHAR(11),
    NumeroRG VARCHAR(14),
    DigitoRG VARCHAR(1),
    EstadoRG VARCHAR(2),
    Email VARCHAR(2048),
    Logradouro VARCHAR(2048),
    Numero VARCHAR(2048),
    Complemento VARCHAR(2048),
    Bairro VARCHAR(2048),
    Cidade VARCHAR(2048),
    CEP VARCHAR(8),
    UF VARCHAR(2),
    TelefoneDDD VARCHAR(2),
    TelefoneNumero VARCHAR(9),
    DigitacaoInicio DATETIME,
    DigitacaoTermino DATETIME
)

CREATE TABLE dbo.ClienteComIntegracao (
    ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    NumeroCarteiraPlanoSaude INT NOT NULL,
    Nome VARCHAR(2048) NOT NULL,
    DataNascimento VARCHAR(10) NOT NULL,
    Sexo VARCHAR(1) NOT NULL,
    CPF VARCHAR(11),
    NumeroRG VARCHAR(14),
    DigitoRG VARCHAR(1),
    EstadoRG VARCHAR(2),
    Email VARCHAR(2048),
    Logradouro VARCHAR(2048),
    Numero VARCHAR(2048),
    Complemento VARCHAR(2048),
    Bairro VARCHAR(2048),
    Cidade VARCHAR(2048),
    CEP VARCHAR(8),
    UF VARCHAR(2),
    TelefoneDDD VARCHAR(2),
    TelefoneNumero VARCHAR(9),
    DigitacaoInicio DATETIME,
    DigitacaoTermino DATETIME
)

SELECT * FROM dbo.Beneficiario;
SELECT * FROM dbo.PacienteSemIntegracao;
SELECT * FROM dbo.PacienteComIntegracao;
SELECT * FROM dbo.ClienteSemIntegracao;
SELECT * FROM dbo.ClienteComIntegracao

DELETE FROM dbo.Beneficiario;
DELETE FROM dbo.PacienteSemIntegracao;
DELETE FROM dbo.PacienteComIntegracao;
DELETE FROM dbo.ClienteSemIntegracao;
DELETE FROM dbo.ClienteComIntegracao;

DROP TABLE dbo.Beneficiario;
DROP TABLE dbo.PacienteSemIntegracao;
DROP TABLE dbo.PacienteComIntegracao;
DROP TABLE dbo.ClienteSemIntegracao;
DROP TABLE dbo.ClienteComIntegracao;

INSERT INTO dbo.Beneficiario
(NumeroCarteira, Nome, DataNascimento, Sexo, CPF, NumeroRG, DigitoRG, EstadoRG, Email, Logradouro, Numero, Complemento, Bairro, Cidade, CEP, UF, TelefoneDDD, TelefoneNumero, DigitacaoInicio, DigitacaoTermino )
VALUES
('123456','Marcio Dias','05/05/1970','M','09467001845','20227037','3','SP','marciojpdias@gmail.com','Rua São Marcos','25','Casa','Jardim Nova Era','Salto','13327394','SP','11','982563973','02/05/1970 00:00:00','02/05/1970 00:00:01')

SELECT datediff(SECOND, DigitacaoInicio, DigitacaoTermino ) AS nrSegundos,*
FROM dbo.Beneficiario

