-- Ceza_Log tablosu oluşturma
CREATE TABLE Ceza_Log (
    Log_ID INT IDENTITY(1,1) PRIMARY KEY,
    Ceza_numarasi INT NOT NULL,
    Islem_Tarihi DATETIME DEFAULT GETDATE(),
    Mesaj NVARCHAR(255)
);
GO

--saklı yordam Ceza tablosuna kayıt eklenirken ceza kesilen kişinin Suçlu tablosunda var olup olmadığını göre ekler. 
CREATE PROCEDURE CezaEkle
    @Ceza_numarasi INT,
    @Ceza_kesen_per_id INT,
    @Ceza_kesilen_kisi_id INT,
    @Ceza_konusu NVARCHAR(255),
    @Ceza_kesilme_Tarihi DATE,
    @Ceza_Yaptirim NVARCHAR(255)
AS
BEGIN
    
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Ceza kesilen kişinin Suçlu tablosunda var olup olmadığı bakılır
        IF NOT EXISTS (SELECT 1 FROM Suclu WHERE Suclu_ID = @Ceza_kesilen_kisi_id)
        BEGIN
            RAISERROR ('Ceza kesilen kişi Suçlu tablosunda kayıtlı değil.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Cezayı ekleme
        INSERT INTO Ceza (Ceza_numarasi, Ceza_kesen_per_id, Ceza_kesilen_kisi_id, Ceza_konusu, Ceza_kesilme_Tarihi, Ceza_Yaptirim)
        VALUES (@Ceza_numarasi, @Ceza_kesen_per_id, @Ceza_kesilen_kisi_id, @Ceza_konusu, @Ceza_kesilme_Tarihi, @Ceza_Yaptirim);


        COMMIT TRANSACTION;

        PRINT 'Ceza başarıyla eklendi.';
    END TRY
    BEGIN CATCH
        -- Hata halinde yapılanları geri alma
        ROLLBACK TRANSACTION;

        PRINT 'Ceza eklenirken bir hata oluştu.';
    END CATCH
END;
GO

--tetikleyici Ceza tablosuna yeni bir kayıt geldiğinde Ceza_Log tablosunda log kaydı oluşturur.
CREATE TRIGGER CezaEkleLog
ON Ceza
AFTER INSERT
AS
BEGIN
    INSERT INTO Ceza_Log (Ceza_numarasi, Mesaj)
    SELECT Ceza_numarasi, 'Yeni ceza kaydı eklendi.' 
    FROM Inserted;

    PRINT 'Ceza ekleme işlemi eklendi';
END;
GO

--örnek bir ceza kaydı
EXEC CezaEkle 
    @Ceza_numarasi = 10015,
    @Ceza_kesen_per_id = 1012,
    @Ceza_kesilen_kisi_id = 6,
    @Ceza_konusu = 'Hız sınırı ihlali',
    @Ceza_kesilme_Tarihi = '2024-01-20',
    @Ceza_Yaptirim = '300 TL para cezası';
