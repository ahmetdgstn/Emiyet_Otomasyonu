-- Transaction işlemi başlatılır
BEGIN TRANSACTION;

BEGIN TRY
    -- İl Emniyet Müdürlüğüne yeni bir kaçakçılık şubesi ekleme işlemi
    INSERT INTO Subeler (Sube_Kodu, Sube_Adi, Il_Em_Mudur_ID)
    VALUES (1004, 'Yeni Kaçakçılık Şubesi', 7);

    -- Eklenen şubeye personel ekleme işlemi
    INSERT INTO Personel (Per_ID, Per_Ad_Soyad, Per_goreve_bas_tarihi, Per_onceki_gorevler, Sube_Kodu)
    VALUES 
    (1200, 'Zeynep Demir', '2023-12-15', 'Trafik Şubesi', 1004), -- Çakışma durumunu tetikleyen id
    (1202, 'Mehmet Çelik', '2023-11-01', 'Denetleme Şubesi', 1004);

    -- İşlemler başarılı olursa commit edilir
    COMMIT TRANSACTION;

    PRINT 'Tüm işlemler başarıyla tamamlandı.';
END TRY
BEGIN CATCH
    -- Hata durumunda rollback işlemi gerçekleştirilir
    ROLLBACK TRANSACTION;

    PRINT 'Hata oluştu, tüm değişiklikler geri alındı.';
END CATCH;

-- Script sonu
GO
