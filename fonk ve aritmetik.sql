-- select 20+4 --toplama iþlemi 
--isim vermek için yanýna as '' konur.
-- : açýklama satýrýný temsil eder.
/*
select 20+4 as 'Toplama'
select 20-4 as 'Çýkarma'
select 20*4 as 'Çarpma'
select 20/4 as 'Bölme ' 
-- eðer bölme iþlemi 40/16 olduðnda 2,5 olduðu gibi küsüratlý çýksaydý tamsayý kýsmý alýnýrdý
-- bu iþlemleri hep birlikte yazabiliriz.
*/
 select 20+4 as 'Toplama', 20-4 as 'Fark', 20*4 as 'Çarpým', 20/4 as 'Bölüm'  

 ---------- Fonksiyonlar ---------------

 select * from kitap
 -- kitap tablosundaki kitapFiyatlarýna 3 tl zam yapalým ve ayný zamanda eski+yeni kitaplarý görelim
 select kitapAd,kitapFiyat,kitapFiyat+3 as 'Yeni Fiyat' from kitap
 
 --kitap tablosundaki tüm kitapAd ve kitapYazarýný þu þekilde gösterelim :
 -- kitapAd - kitapYazar 
 select kitapAd +'--'+ kitapYazar as 'Kitaplýk' from kitap 

  select * from kitap
 --substring (1.parametre,                  2.parametre,         3.parametre)
 --substring (üstünde deðiþiklik yapýlacak, baþlangýþ pozisyonu, toplam uzunluk/kaça kadar) old. ifade eder.


 select SUBSTRING (kitapAd,1,5) from kitap
 --kitap adlý tablodan kitapAd'ýný 1.karakterden 5. karaktere kadar yazan fonksiyonu yazýnýz...
 -- ek olarak kolon ismi eklersek : select SUBSTRING (kitapAd,1,5) as 'Fonksiyon-1' from kitap
 
 --baþlangýcý belirsiz
 select LEFT(kitapAd,5) as 'Soldan Yazým' from kitap
 -- kitap adlý tablo'nun KitapAd'larýný SOLDAN ÝLK 5 Karakterini yazdýran fonksiyonu yazýnýz...


 --baþlangýcý belirsiz ama son harfi baþlangýç kabul eder.
 select RIGHT(kitapAd,4) as 'Saðdan Yazým'  from kitap
  -- kitap adlý tablo'nun KitapAd'larýný SAÐDAN SON 4 Karakterini yazdýran fonksiyonu yazýnýz..
  --her kitabýn saðdan son 4 karakterini aldý.
  
  ----- TO:-e/-a doðru anlamý
  -----UPPER: BÜYÜK HARFLE YAZILIR.	
  ----LOWER: küçük harfle yazýlýr.
  
  select * from kitap

  select UPPER(kitapAd) from kitap --((AÞK,ALÝM,BÝLÝM,LALE,KEFARET....))
  
  select LOWER(kitapAd) as 'Küçük harf' from kitap --((aþk,alim,bilim,lale,kefaret...))

  ------LEN(): lenght'den geliyor kelime uzunluðu ya da kaç karakter olduðunu belirtir.
  --LEN(expression nvarchar(1), RETURNS int) þeiklinde yazýlar geliyorsa doðru yoldasýn.

  --kitap adlý tablodan kitapAD ve kitapAd 'daki karakter uznluklarýný bulma
  select kitapAd, LEN(kitapAd) as 'CHARACTER SAYISI' from kitap

----REPLACE  (1.parametre,   2.parametre,   3.parametre)
--REPLACE (deðiþecek yer , ÝSÝM/KARAKTER, deðiþen ifade) old. ifade eder.

select kitapAd,REPLACE(KitapYazar, 'Merlin', 'M') from kitap
-- çoðunlukla kýsaltmalarda kullanýlýr.

--belirlenen ifadeyi tersten yazmayý saðlayan fonksiyon: REVERSE
select REVERSE(kitapAd) as 'Tersten'from kitap 
