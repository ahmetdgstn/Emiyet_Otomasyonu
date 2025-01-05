INSERT INTO Il_Emniyet_Mudurlugu (Il_Em_Mudur_ID, Bulundugu_Sehir, Personel_sayisi)
VALUES 
(4, 'Bursa', 130),
(5, 'Adana', 90),
(6, 'Antalya', 110),
(7, 'Gaziantep', 100),
(8, 'Konya', 80),
(9, 'Kayseri', 70),
(10, 'Trabzon', 60),
(11, 'Erzurum', 50),
(12, 'Eskişehir', 85),
(13, 'Mersin', 95);


INSERT INTO Subeler (Sube_Kodu, Sube_Adi, Il_Em_Mudur_ID)
VALUES 
(401, 'Kaçakçılık', 4),
(402, 'Asayiş', 4),
(501, 'Trafik', 5),
(502, 'Uyuşturucu ile Mücadele', 5),
(601, 'Siber Suçlar', 6),
(602, 'Kaçakçılık', 6),
(701, 'Asayiş', 7),
(702, 'Trafik', 7),
(801, 'Uyuşturucu ile Mücadele', 8),
(901, 'Denetleme', 9);


INSERT INTO Personel (Per_ID, Per_Ad_Soyad, Per_goreve_bas_tarihi, Per_onceki_gorevler, Sube_Kodu)
VALUES 
(1006, 'Ayşe Güneş', '2016-05-15', 'Kaçakçılık Şubesi', 401),
(1007, 'Burak Çetin', '2020-08-20', 'Asayiş Şubesi', 402),
(1008, 'Emre Ak', '2019-09-10', 'Uyuşturucu ile Mücadele', 502),
(1009, 'Canan Çelik', '2022-02-14', 'Siber Suçlar', 601),
(1010, 'Derya Uzun', '2018-11-03', 'Organize Suçlar', 602),
(1011, 'Ebru Yıldız', '2021-04-19', 'Kaçakçılık Şubesi', 701),
(1012, 'Furkan Demir', '2015-01-27', 'Trafik Şubesi', 702),
(1013, 'Gamze İnce', '2018-12-05', 'Asayiş Şubesi', 801),
(1014, 'Ahmet Dağ','2016-05-15', 'Denetleme Şubesi', 901),
(1015, 'Mert Demir', '2017-04-15', 'Denetleme Şubesi', 901);


INSERT INTO Denetim (Denetim_kodu, Denetleyen_per_id, Denetlenen_per_id, Sube_Kodu, Il_Em_Mudur_ID)
VALUES 
(5, 1014, 1006, 401, 4), 
(6, 1015, 1007, 402, 4), 
(7, 1014, 1008, 502, 5), 
(8, 1015, 1009, 601, 6),
(9, 1014, 1010, 602, 6), 
(10, 1014, 1011, 701, 7),
(11, 1015, 1012, 702, 7),
(12, 1014, 1013, 801, 8); 


INSERT INTO Ceza (Ceza_numarasi, Ceza_kesen_per_id, Ceza_kesilen_kisi_id, Ceza_konusu, Ceza_kesilme_Tarihi, Ceza_Yaptirim)
VALUES 
(10003, 1012, 3, 'Yasak park', '2024-01-05', '250 TL para cezası'),
(10004, 1012, 4, 'Ehliyetsiz araç kullanma', '2024-01-06', '1000 TL para cezası'),
(10005, 1012, 5, 'Hız sınırı aşımı', '2024-01-07', '500 TL para cezası'),
(10006, 1007, 6, 'Kavgaya karışma', '2024-01-08', 'Toplum hizmeti'),
(10007, 1011, 7, 'Vergi kaçırma', '2024-01-09', '1500 TL para cezası'),
(10008, 1013, 8, 'İzinsiz gösteri', '2024-01-10', 'Uyarı'),
(10009, 1007, 9, 'Çevre kirliliği', '2024-01-11', '300 TL para cezası'),
(10010, 1012, 10, 'Trafik ihlali', '2024-01-12', '250 TL para cezası'),
(10011, 1010, 11, 'Kamu malına zarar verme', '2024-01-13', '500 TL para cezası'),
(10012, 1009, 12, 'Huzur bozma', '2024-01-14', '1 ay gözaltı');


INSERT INTO Ihbar (Ihbar_ID, Ihbar_konusu, Arayan_tel_no, Il_Em_Mudur_ID)
VALUES 
(3, 'Şüpheli paket', '05340000000', 13),
(4, 'Trafik kazası', '05350000000', 4),
(5, 'Gürültü şikayeti', '05360000000', 5),
(6, 'Kaçak elektrik kullanımı', '05370000000', 6),
(7, 'Siber dolandırıcılık', '05380000000', 7),
(8, 'Hırsızlık', '05390000000', 8),
(9, 'Adam yaralama', '05310000001', 9),
(10, 'Uyuşturucu satışı', '05320000001', 10),
(11, 'Yangın ihbarı', '05330000001', 11),
(12, 'Kaçak yapılaşma', '05340000001', 12);


INSERT INTO Operasyon (Op_ID, Op_adi, Tarih, Sube_Kodu)
VALUES 
(3, 'Uyuşturucu Operasyonu', '2024-01-05', 502),
(4, 'Kaçakçılık Operasyonu', '2024-01-06', 602),
(5, 'Siber Güvenlik Operasyonu', '2024-01-07', 601),
(6, 'Huzur Operasyonu', '2024-01-08', 402),
(7, 'Trafik Denetim Operasyonu', '2024-01-09', 702),
(8, 'Hırsızlık Çetesi Çökertme Operasyonu', '2024-01-10', 701),
(9, 'Kamu Güvenliği Operasyonu', '2024-01-11', 901),
(11, 'Adam Kaçırma Operasyonu', '2024-01-13', 502),
(12, 'Organize Suç Operasyonu', '2024-01-14', 401);


INSERT INTO Suclu (Suclu_ID, Suclu_Ad_Soyad, Suc_turu, Adli_sicil_kaydi, Op_ID)
VALUES 
(3, 'Ahmet Yılmaz', 'Hırsızlık', 'Sabıka kaydı yok.', 3),
(4, 'Mehmet Çetin', 'Kaçakçılık', 'Daha önce ceza aldı.', 4),
(5, 'Fatma Kaya', 'Siber Dolandırıcılık', 'Sabıka kaydı yok.', 5),
(6, 'Zeynep Aslan', 'Uyuşturucu', 'Bir defa hüküm giydi.', 6),
(7, 'Burak İnce', 'Adam Kaçırma', 'Adli sicili temiz.', 7),
(8, 'Canan Uysal', 'Vergi Kaçakçılığı', 'Defalarca ceza aldı.', 8),
(9, 'Derya Çelik', 'Kamu Güvenliği Suçu', 'Sabıka kaydı yok.', 9),
(10, 'Ebru Deniz', 'Adam Yaralama', 'Sabıkalı.', 11),
(11, 'Furkan Kılıç', 'Kavga', 'Daha önce gözaltına alındı.', 11),
(12, 'Gamze Polat', 'Organize Suç', 'Sabıka kaydı temiz.', 12);
GO
