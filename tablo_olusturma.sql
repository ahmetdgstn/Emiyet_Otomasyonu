CREATE DATABASE IlEmniyetMudurluguDB;
GO

USE IlEmniyetMudurluguDB;
GO


CREATE TABLE Il_Emniyet_Mudurlugu (
    Il_Em_Mudur_ID INT PRIMARY KEY,
    Bulundugu_Sehir NVARCHAR(100) NOT NULL,
    Personel_sayisi INT NOT NULL
);


CREATE TABLE Subeler (
    Sube_Kodu INT PRIMARY KEY,
    Sube_Adi NVARCHAR(100) NOT NULL,
    Il_Em_Mudur_ID INT NOT NULL,
    FOREIGN KEY (Il_Em_Mudur_ID) REFERENCES Il_Emniyet_Mudurlugu(Il_Em_Mudur_ID)
);


CREATE TABLE Personel (
    Per_ID INT PRIMARY KEY,
    Per_Ad_Soyad NVARCHAR(150) NOT NULL,
    Per_goreve_bas_tarihi DATE NOT NULL,
    Per_onceki_gorevler NVARCHAR(MAX),
    Sube_Kodu INT NOT NULL,
    FOREIGN KEY (Sube_Kodu) REFERENCES Subeler(Sube_Kodu)
);


CREATE TABLE Denetim (
    Denetim_kodu INT PRIMARY KEY,
    Denetleyen_per_id INT NOT NULL,
    Denetlenen_per_id INT NOT NULL,
    Sube_Kodu INT NOT NULL,
    Il_Em_Mudur_ID INT NOT NULL,
    FOREIGN KEY (Denetleyen_per_id) REFERENCES Personel(Per_ID),
    FOREIGN KEY (Denetlenen_per_id) REFERENCES Personel(Per_ID),
    FOREIGN KEY (Sube_Kodu) REFERENCES Subeler(Sube_Kodu),
    FOREIGN KEY (Il_Em_Mudur_ID) REFERENCES Il_Emniyet_Mudurlugu(Il_Em_Mudur_ID)
);


CREATE TABLE Ceza (
    Ceza_numarasi INT PRIMARY KEY,
    Ceza_kesen_per_id INT NOT NULL,
    Ceza_kesilen_kisi_id INT NOT NULL,
    Ceza_konusu NVARCHAR(255) NOT NULL,
    Ceza_kesilme_Tarihi DATE NOT NULL,
    Ceza_Yaptirim NVARCHAR(255),
    FOREIGN KEY (Ceza_kesen_per_id) REFERENCES Personel(Per_ID)
);


CREATE TABLE Ihbar (
    Ihbar_ID INT PRIMARY KEY,
    Ihbar_konusu NVARCHAR(255) NOT NULL,
    Arayan_tel_no NVARCHAR(15),
    Il_Em_Mudur_ID INT NOT NULL,
    FOREIGN KEY (Il_Em_Mudur_ID) REFERENCES Il_Emniyet_Mudurlugu(Il_Em_Mudur_ID)
);


CREATE TABLE Operasyon (
    Op_ID INT PRIMARY KEY,
    Op_adi NVARCHAR(150) NOT NULL,
    Tarih DATE NOT NULL,
    Sube_Kodu INT NOT NULL,
    FOREIGN KEY (Sube_Kodu) REFERENCES Subeler(Sube_Kodu)
);


CREATE TABLE Suclu (
    Suclu_ID INT PRIMARY KEY,
    Suclu_Ad_Soyad NVARCHAR(150) NOT NULL,
    Suc_turu NVARCHAR(100) NOT NULL,
    Adli_sicil_kaydi NVARCHAR(MAX),
    Op_ID INT NOT NULL,
    FOREIGN KEY (Op_ID) REFERENCES Operasyon(Op_ID)
);
GO
