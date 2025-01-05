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

Personelin özlük bilgileri, görev başlama ve daha önceki almış olduğu görevlerin saklanmış olduğu verilerdir.

Personel ID (PK)

Personel adı soyadı

Personelin göreve başlama tarihi

Personelin önceki görevleri

4.Denetim

Emniyet içinde gerçekleşen geçmişe yönelik kontroller yapılırken bu denetlemenin silsile yoluyla takibi yapılmış olur. Ayrıca denetleme mekanizmasının çalışması sağlanmış olur.

Denetim Kodu (PK)

Denetleyen personel ID (FK)

Denetlenen personel ID (FK)

5.Ceza

Gerekli işlemi yapan personel bilgisi, ceza bilgileri ve yaptırımların kaydedildiği veriler hakkında bilgi verir. 

Ceza numarası(PK)

Ceza kesen personel id(FK)

Ceza kesilen kisi id

Ceza konusu

Ceza kesilme tarihi

Ceza Yaptırım

6.İhbar

Karşılaşılan ihlalle alakalı emniyet müdürlüğüne yapılan ihbar ve ihbara dair bilgilerin tutulduğu veri kısmı

İhbar ID (PK)

İhbar konusu

Arayan tel no

7.Operasyon

Karşılaşılan suça yönelik tasarlanan müdahaleyi özel isimle ve numarayla saklamaya yarayan veri kısmıdır.

Operasyon ID (PK)

Operasyon adı

Operasyon tarihi

8.Suçlu

Adli işlem yapılan kişilerle alakalı gerekli bilgilerin tutulduğu veri kısmıdır.

Suçlu ID (PK)

Suçlu adı soyadı

Suç türü

Adli sicil kaydı

# Tablo İlişkileri
1. İL_EMNİYET_MÜDÜRLÜĞÜ - ŞUBELER: Bir İl Emniyet Müdürlüğü birden fazla şubeye sahip olabilir.(1-N)
2. İL_EMNİYET_MÜDÜRLÜĞÜ - DENETİM: Bir İl Emniyet Müdürlüğü birden fazla denetim yapabilir.(1-N)
3. İL_EMNİYET_MÜDÜRLÜĞÜ - İHBAR: Bir İl Emniyet Müdürlüğü hiç veya birden fazla ihbar alabilir.(1-N)
4. ŞUBELER - PERSONEL: Bir şubede birden fazla personel çalışabilir.(1-N)
5. ŞUBELER - OPERASYON : Bir şube birden fazla operasyon yapabildiği gibi bir operasyona birden fazla şube katılabilir.(N-M)
6. ŞUBELER - DENETİM : Bir şube birden fazla denetim yapabildiği gibi bir denetimde birden fazla şube bulunabilir.(N-M)
7. PERSONEL - DENETİM: Bir personel birden fazla denetim gerçekleştirebilir.(1-N)
8. SUÇLU - OPERASYON: Bir operasyonda birden fazla suçlu yakalanabilir.(1-N)
9. CEZA - PERSONEL: Bir personel birden fazla ceza kesebilir.(1-N)
10. DENETİM - CEZA: Bir denetimde birden fazla ceza oluşturulabilir.(1-N)

# E_R Diyagramı (UML Notasyonuyla)


![image](https://github.com/user-attachments/assets/9296a0eb-88cd-4ba8-ac90-126b40757ca7)


# Veri tabanı şemasının SQL Server’de oluşturulması
Create Table ile veritabanı şemasını oluşturma:




