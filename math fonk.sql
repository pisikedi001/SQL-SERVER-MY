-------MATH FONKSÝYONLARI----------

--- MUTLAK DEÐER == ABS

--COUNT(sayaç)
----Yuvarlama iþlemleri
----- ceiling : verilen sayýyý bir üst deðere atar
----- floor: verilen sayýyý bir alt deðere atar.
-- TAMSAYIYA YUVARLAMA == ROUND ((Virgülden sonraki ifadeyi yuvarlama kýsmýnda da kullanýlýr))

---POWER: ÜS'SÜNÜ ALMA ÝÞLEMÝ (^) 
---SQRT: KAREKÖK'ÜNÜ ALMA ÝÞLEMÝ ()^(1/2)
--
----SUM :(SUMMARY)=TOPLAMA ÝÞELMÝ 
--
----AVG:ORTALAMA ALMAYA YARAR.

SELECT * FROM KÝTAP

select COUNT(kitapAd) as 'Kitap sayýsý' from kitap -- tabloda var olan toplam kitapsayýsýný verir.

select abs(kitapFiyat) as 'Mutlak Deðer' from kitap
select ceiling (kitapSayfa) as 'Üste Yuvarlama' from kitap
select floor (kitapSayfa) as 'Alta Yuvarlama' from kitap

--sum(alan adý)
--avg(alanadý)
select SUM(kitapSayfa) as 'Tamsayý yapma' from kitap -- tüm kitapSAYFA'larýn toplamýný yazar
select AVG(kitapSayfa) as 'Ortalama' from kitap -- tüm kitapSayfa'nýn ortalamasý

select SUM(kitapFiyat) as 'toplam' from kitap where kitapNo>15 -- cevap: toplam 
--------------------------------------------------------------------1    35

--2016-01-01 ile 2016-09-09 tarihleri arasýnda eklenen/basýlan kitaplarýn toplam fiyatýný hesaplamak.
select SUM(kitapFiyat) as 'toplam' from kitap where kitapTarih between'2016-01-01' and '2016-09-09'
--cevap : 102

--Düz matematiksel iþlemlerde de kullanýlabilirler.
select POWER(2,5) as 'Üs' 
select SQRT(16) as 'Karekök'

