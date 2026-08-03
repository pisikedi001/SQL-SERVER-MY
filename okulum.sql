use okulum
create table ogrenci001(
ogrno int not null primary key,
--not null: boş geçilemez
--varchar:değişken uzunluktaki değerler
ogradi varchar(15),
ogrsoyadi varchar(20),
ogradres varchar(30),
ogrsinif varchar(2),
--varchar(2):lise 9,10,11,12 max 12 2 character'den oluşuyor 
ogrilçe varchar(30) default 'seyhan',
--default: varsayılan değer, eğer boş kalırsa o alan otomatik doldurulacak.
--tinyint:0-100 arasındaki değerleri alır.Kapsar.
ogrsinav1 tinyint check(ogrsinav1>0),
--check (şart): şartı sağlamasını kontrol eder.
ogrsinav2 int,
constraint check2 check(ogrsinav2>0 and ogrsinav2<=100),
--constraint:belirli bir isimle sınırlama/kısıtlayıcı koyduk,bu ifadenin yine check'de olduğu gibi şart belirtilmesi gerekiyor.
ogrklüp varchar(20),
constraint checkklüp check(ogrklüp in('sağlık','çevre','kütüphanecilik','trafik' ))

--alter table ifadeleri: bu ifadeler ekran temizlendikten sonra ayrı ayrı uygulanmalı.
alter table ogrenci001 add devamsizlik tinyint
alter table ogrenci001 alter column ogrenciadres varchar(160)
alter table ogrenci001 drop column ogrborc

