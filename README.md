# Proje Ekibindeki Kişiler:
Atakan Ünal (210260138) 

Ahmet Dağıstanlı (230260198)

Mert Demirkol (230260200) 


# Varlık ve İlişkileri:

1=>emniyet müdürlüğü
İl emniyet müdürü id:il emniyet müdürene emniyetçe verilmiş id numarası
Şube kodu (primarykey) :kendisine bağlı tüm şubelerin kendine özgü kodu vardır
Şube Adı: Görevine göre adı olur( asayiş , narkotik vs)
Müdür id: kendisine bağlı müdürün id numarası 
Personel sayısı: tüm birimlerin toplam sayısı
Amir id: tüm birimlerdeki amirlerin id numarası 
Operasyon kodu:gelen ihbara göre operasyon yapan birimin suça verdiği numara 
Suçlu id:Suçlunun id numarası 

2=>şube müdürü 
Müdür id : müdüre emniyetçe verilmiş id numarası
Müdüre bağlı emniyet amiri id:
Amire emniyetçe verilmiş id numarası
Ad soyad : ad soyad bilgisi
Yakaladığı suçlu id: işlem yaptığı kişiler id numarasıyla kaydedilir
Görev başlangıç tarihi:o birime atandığı tarih
Önceki görev yeri: o birimden önce çalıştığı birim

3=>Emniyet amiri
Amir id:Amire emniyetçe verilmiş id numarası
Ad-soyad:kişinin bilgileri
Bağlı olduğu müdür id:polis memurunun görev yönünden bağlı olduğu müdür id numarası 
Amire bağlı personel id:polis memuruna emniyetçe verilmiş id numarası
Görev başlangıç tarihi:o birime atandığı tarih
Önceki görev yeri: o birimden önce çalıştığı birim
Yakaladığı suçlu id:işlem yaptığı kişiler id numarasıyla kaydedilir

4=>polis memuru
Personal id:personele emniyetçe verilmiş id numarası
Ad-soyad: kişinin bilgileri
Bağlı olduğu amir id:polis memurunun görev yönünden bağlı olduğu amir id numarası 
Görev başlangıç tarihi:o birime atandığı tarih
Önceki görev yeri: o birimden önce çalıştığı birim
Yakaladığı suçlu id:işlem yaptığı kişiler id numarasıyla kaydedilir

5=>ihbar:
İhbar id: gelen ihbar id numarasıyla birlikte ( konusu , ihbarcı bilgisi vb)saklanır
İhbar konusu: müdürlüğe gelen ihbar suç niteliğine göre isimlendirilir
Arayan numara: ihbarı veren kişiyle iletişim kurulabilecek numara 

6=>operasyon
Operasyon id: yapılacak operasyonun detaylarının saklandığı evraklar dosyalanarak numaralandırılır
Operasyon adı: basına duyurulan ismi
Müdür id: müdüre emniyetçe verilmiş id numarası
Amir id : Amire emniyetçe verilmiş id numarası
Personel  id : personele emniyetçe verilmiş id numarası
Yakalanan suçlu id: suçlu olarak tespit edilmiş kişiye verilmiş olan numara
Tarih: operasyon gerçekleşme tarihi( date)

7=>Suçlu
Suçlu id : yakalan kişinin id numarası 
Ad soyad : isim bilgisi 
Suç türü: hangi tarz suça karıştığı (Asayili, narkotik vs)
Yakalayan personel id:yakalayan personele emniyetçe verilmiş id numarası
Adli sicil kaydı: adli makamlardan alınmış olan suç geçmişidir

8=>Denetim
Denetim kodu: personelin benzer konularda denetlendiğini gösteren  kod
Denetleyen personel id:deneyleyen personele emniyetçe verilmiş id numarası
Denetlenen personel id:denetlenen personele emniyetçe verilmiş id numarası

9=>Ceza
Ceza numarası: denetlemeler sonucu denetleyen personelce son işlemden sonraki verilen sıra numarasıdır 
Ceza kesen personel id:ceza kesen personele emniyetçe verilmiş id numarası
Ceza kesilen personel id:ceza kesilen personele emniyetçe verilmiş id numarası
Ceza konusu : personel işlediği suçun konusu gerekli cezanın adı
Ceza yaptırımı: mevcut Ceza’nın kanunca  karşılığı gelen yaptırım

# Gereksinim ve İlişkiler:

İl emniyet müdürü bir çok şube kendisine bağlı olduğu için şube kodlarını oluşturup şubeleri isimlendirip her şubenin müdürünün kendi bilgisi personel sayısı şube içinde bulunan amirlerin bilgisi yapılacak operasyonların kodu ve yakalanan suçlularla alakalı tüm verilerin tutulduğu şubenin de başında olduğundan dolayı personel ve şube işlemlerini yapabildiği gibi gelen ihbarların tamamını değerlendiren birimin de kendisine bağlı olması nedeniyle gelen ihbarların nasıl işlendiği ya da nasıl birimlerce değerlendirildiğini düzenlendiği makamdır. il emniyet müdürlüğünde ihbarların değerlendirildiği tek bir birim varken buraya birçok ihbar gelir ve birden çoğa ilişki vardır. İhbarlar değerlendirilirken bir ihbara birden çok operasyon gerçekleştirilebilir.ooerasyonlar da birden çok kez olabilirken birden çok suçluya da yapılabildiği için çoktan çoğa ilişki vardır.

Şube müdürü kendi şubesi yönünden bağlı olduğu il emniyet müdürlüğünden talimat alırken şube müdürü sisteminde yakaladığı suçlunun bağlı olduğu müdürün kendisine bağlı emniyet amiri ve diğer personellerle birlikte genel itibari ile aldığı emirler doğrultusunda hareket eder. Şube müdürü il emniyet müdüründen talimat alır.burada birden çoğa ilişki vardır aralarında.

Emniyet amiri bağlı olduğu şube müdüründen aldığı talimatlar ve emirler doğrultusunda iş ve işlemler yaparken yakalanan suçlu amir ID numarası adı soyadı göreve başlama numarası daha önceki görev yerleri de takibi yapılabilir emniyet amiri şube müdürüden aldığı talimatlar doğrultusunda görev yapar ve polis memurlarına görevleri dahilinde emir verebilen makamdır.bağlı olduğu şube müdürüyle birden çoğa ilişki vardır. Talimat veren tek kişi iken talimatı alan birden çok kişi olabilir.


Polis memurları bilgilerinin tutulduğu bölümde adları soyadları göreve başladığı ve daha önceki çalıştığı birimler olmak üzere mevcutta bağlı olduğu amir bilgisi ile yakaladığı suçların ID not edilir. Polis memurlar amirinden şube müdürü ve il emniyet müdürü olmak üzere hepsinden emir alabilir. Hepsiyle birden çok ilişkisi vardır. 

Emniyet müdürlüğüne bağlı kanallarca alınan ihbarlar neticesinde operasyonlar değerlendirilerek operasyon ID operasyon adı md ID Amir ID personel ID yakalanan suçlu adi ve tarihler operasyon genel itibari ile başından sonuna kadar olan tüm veriler kaydedilir. operasyon ve suçlu arasından çoktan çoğa ilişki vardır birden çok suçluya birden çok konuda operasyon yapılabilir.


Suçlu kısmında da yakalanan suçlunun geçmiş kayıtları yakalayan personel işlediği suç türü adı soyadı ve suça ait numaralardan oluşur 

Ayrıca şube müdürü ve il emniyet müdürü genel itibari ile personeller üzerinde denetleme görevlerini ifa ederek denetim başlığı adı altında denetim kodu denetleyen personel ve denetlenen personel ID‘leri belirlenir Bir denetçi birden fazla konuda denetleme yapabilir.


Daha sonra denetlenen memurların ceza gerektiren bir konuya sebebiyet vermeleri anlaşılırsa ceza numarası cezai kesen personel ceza kesilen personel ve ceza yaptırımları olmak üzere gerekli işlemler yapılır. Burada birden çoğa ilişki vardır.bir denetçi birden fazla ceza gerektiren duruma sebebiyet veren kişiye birden çok ceza yaptırımı uygulayabilir.

Sonuç olarak yapmış olduğumuz bu projede amacımız en tepedeki il emniyet müdüründen personele varana kadar tüm denetleme mekanizmaları sağlanarak hem personelin denetlemelerle ceza gerektirecek suça karışmasını engellemek ya da karıştı ise bununla alakalı gerekli işlemi  yapar; suç ve suça karışan insanlarla alakalı genel itibarıyla veriler saklanarak ilerleyen süreçte aynı kişilerin benzer konulara karışıp karışmadığını doğru bir şekilde tespiti sağlamış olacağız.

# E_R Diyagramı

Resmin net görünümü en alttaki pdf içerisindedir.


![Emniyet Otomasyonu](https://github.com/user-attachments/assets/73183ff1-1505-47e9-9720-7577b17ba2c9)


[Emniyet Otomasyonu.pdf](https://github.com/user-attachments/files/17629056/Emniyet.Otomasyonu.pdf)
