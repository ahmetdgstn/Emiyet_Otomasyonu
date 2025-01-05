BEGIN TRANSACTION;

BEGIN TRY
    --İl Emniyet Müdürlüğüne yeni bir trafik şube ekleme
    INSERT INTO Subeler (Sube_Kodu, Sube_Adi, Il_Em_Mudur_ID)
    VALUES (1003, 'Yeni Trafik Şubesi', 6);

    -- Eklenen şubeye personel ekleme
    INSERT INTO Personel (Per_ID, Per_Ad_Soyad, Per_goreve_bas_tarihi, Per_onceki_gorevler, Sube_Kodu)
    VALUES 
    (1200, 'Ali Demir', '2024-01-01', 'Asayiş Şubesi', 1003),
    (1201, 'Fatma Kaya', '2024-01-02', 'Kaçakçılık Şubesi', 1003);

    COMMIT TRANSACTION;

    PRINT 'Tüm işlemler başarıyla tamamlandı.';
END TRY
BEGIN CATCH
    -- Hata olursa
    ROLLBACK TRANSACTION;

    PRINT 'Hata oluştu, tüm değişiklikler geri alındı.';
END CATCH;
GO
