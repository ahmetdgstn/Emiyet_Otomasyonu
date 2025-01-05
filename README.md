# Proje Ekibindeki Kişiler:
Atakan Ünal (210260138) 

Ahmet Dağıstanlı (230260198)

Mert Demirkol (230260200) 


# Varlık ve İlişkileri:

1.İl Emniyet Müdürlüğü

Emniyet Müdürlüğünün en tepesinde bulunan makam ile bulunduğu şehir ve merkezdeki personel
sayısının bilgisini verir. 

İl Emn. Müd. ID (PK)

Bulunduğu Şehir

Personel Sayısı

2.Şubeler
Emniyet Müdürlüğünce görevleri icabı isimlendirilmiş şubelere ve kodlara dair bilgiler verir.
Şube Kodu (PK)
Şube Adı
3.Personel
Personelin özlük bilgileri, görev başlama ve daha önceki almış olduğu görevlerin saklanmış
olduğu verilerdir.
Personel ID (PK)
Personel adı soyadı
Personelin göreve başlama tarihi
Personelin önceki görevleri
4.Denetim
Emniyet içinde gerçekleşen geçmişe yönelik kontroller yapılırken bu denetlemenin silsile
yoluyla takibi yapılmış olur. Ayrıca denetleme mekanizmasının çalışması sağlanmış olur.
Denetim Kodu (PK)
Denetleyen personel ID (FK)
Denetlenen personel ID (FK)
5.Ceza
Proje Gereksinimleri
Gerekli işlemi yapan personel bilgisi, ceza bilgileri ve yaptırımların kaydedildiği veriler
hakkında bilgi verir. 
Ceza numarası(PK)
Ceza kesen personel id(FK)
Ceza kesilen kisi id
Ceza konusu
Ceza kesilme tarihi
Ceza Yaptırım
6.İhbar
Karşılaşılan ihlalle alakalı emniyet müdürlüğüne yapılan ihbar ve ihbara dair bilgilerin
tutulduğu veri kısmı
İhbar ID (PK)
İhbar konusu
Arayan tel no
7.Operasyon
Karşılaşılan suça yönelik tasarlanan müdahaleyi özel isimle ve numarayla saklamaya yarayan
veri kısmıdır.
Operasyon ID (PK)
Operasyon adı
Operasyon tarihi
8.Suçlu
Adli işlem yapılan kişilerle alakalı gerekli bilgilerin tutulduğu veri kısmıdır.
Suçlu ID (PK)
Suçlu adı soyadı
Suç türü
Adli sicil kaydı
Tablo İlişkileri
1. İL_EMNİYET_MÜDÜRLÜĞÜ - ŞUBELER: Bir İl Emniyet Müdürlüğü birden fazla şubeye sahip olabilir.(1..*)
Create Table ile veritabanı şemasını oluşturma:
CREATE TABLE Il_Emniyet_Mudurlugu (
Il_Em_Mudur_ID INT PRIMARY KEY,
Bulundugu_Sehir NVARCHAR(100) NOT NULL,
Personel_sayisi INT NOT NULL); 
2. ŞUBELER - PERSONEL: Bir şubede birden fazla personel çalışabilir.(1..*)
3. PERSONEL - DENETİM: Bir personel birden fazla denetim gerçekleştirebilir.(1..*)
4. OPERASYON - ŞUBELER: Bir operasyon bir şubeye bağlıdır.(1..1)
5. SUÇLU - OPERASYON: Bir operasyonda birden fazla suçlu yer alabilir.(1..*)
6. CEZA - PERSONEL: Bir personel birden fazla ceza kesebilir.(1..*)
7. İL_EMNİYET_MÜDÜRLÜĞÜ - İHBAR: Bir İl Emniyet Müdürlüğü birden fazla ihbar alabilir.(1..*)

# E_R Diyagramı

Resmin net görünümü en alttaki pdf içerisindedir.


![Emniyet Otomasyonu](https://github.com/user-attachments/assets/73183ff1-1505-47e9-9720-7577b17ba2c9)


[Emniyet Otomasyonu.pdf](https://github.com/user-attachments/files/17629056/Emniyet.Otomasyonu.pdf)
