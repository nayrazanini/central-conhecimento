
USE CentralConhecimento;
GO

CREATE TABLE Sistema (
	SistemaId	       INT IDENTITY (1,1) PRIMARY KEY,
	Nome		       NVARCHAR (100) NOT NULL UNIQUE,
	Descricao	       NVARCHAR (500) NULL, 
	DataCadastro       DATETIME2 NOT NULL DEFAULT SYSDATETIME ()
	)
	GO

CREATE TABLE TabelaBanco (
    TabelaBancoId  INT IDENTITY(1,1) PRIMARY KEY,
    SistemaId      INT NOT NULL,
    Nome           NVARCHAR(128) NOT NULL,
    Descricao      NVARCHAR(500) NULL,
    DataCadastro   DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT FK_TabelaBanco_Sistema
        FOREIGN KEY (SistemaId) REFERENCES Sistema (SistemaId)
);
GO

