use kitap
select * from kiþiler

insert into kiþiler values 
(1,'baran','yýldýz','veteriner','bursa' ,2500) ,
(2,'ahmet','güneþ','doktor','ankara' ,5000) ,
 (3,'hakan','ay','öðretmen','trabzon' ,2200) ,
(4,'ayþe','kaya','öðretmen','manisa' ,2300) , 
(5,'tekin','aslan','diyetisyen','izmir' ,2500) ,
(6,'namýk','kaplan','avukat','izmir' ,3600) ,
 (7,'emel','yýlmaz','oyuncu','aydýn' ,3300) , 
(8,'tuna','yýlmaz','oyuncu','denizli' ,3200) ,
 (9,'mehmet','öztürk','mühendis','bursa' ,2600) , 
(10,'salih','ay','veteriner','ankara' ,2400) , 
(11,'cenk','kilit','öðretmen','istanbul' ,2200) , 
(12,'atakan','þen','öðretmen','ankara' ,2000) ,
 (13,'yunus','kalýn','oyuncu','bursa' ,3500) , 
(14,'eylül','yüce','avukat','adana' ,4000) ,
 (15,'bahar','öz','eczacý','þanlýurfa' ,3700) , 
(16,'nisan','yüce','mühendis','antalya' ,2500) , 
(17,'dilek','tuna','mühendis','konya' ,2600) ,
 (18,'davut','aslan','eczacý','balýkesir' ,3200) ,
 (19,'yýldýrým','yaðmur','öðretmen','balýkesir',2100), 
(20,'hakan','yaðmur','doktor','balýkesir' ,4800) , 
(21,'ali','teke','tekniker','adana' ,2000) , 
(22,'mehmet','kale','mühendis','bursa' ,2600) , 
(23,'kaan','tuna','öðretmen','edirne' ,2300) ,
 (24,'ahmet','toprak','öðretmen','kahramanmaraþ' ,2400) ,
 (25,'veysel','çýnar','doktor','ankara' ,4500) , 
(26,'özgür','meþe','eczacý','istanbul' ,3500) ,
 (27,'cihan','çiçek','mühendis','adana' ,2700) ,
 (28,'mesut','yüce','mühendis','mersin' ,2600) , 
(29,'mehmet','papatya','öðretmen','elazýð' ,2300) , 
(30,'semih','demir','oyuncu','malatya' ,3200)


select Meslek,count(ad) as 'personel sayýsý' from kiþiler group by Meslek order by COUNT(Ad)
--her bir mesleðin, o mesleðe ait kaç kiþi olduðunu getirdi

select sehir, count(ad) as 'sayý' from kiþiler group by Sehir order by sehir 
-- her þehirdeki þehir baþýna düþen kiþi sayýsýný getirdi

select Meslek,count(ad),sum(maas) as 'Personel Sayýsý',
Sum(maas) as 'Toplam maas' from kiþiler group by meslek
-- bir meslek grubuna mensup kiþi sayýsýný ve toplamda 1.ay sonunda alacaðý maaþlar

select Meslek,count(ad),sum(maas),avg(maas) as 'Personel Sayýsý',
Sum(maas) as 'Toplam maas',
 avg(maas) as 'Ortalama maas' from kiþiler group by meslek
-- Her bir meslek grubuna mensup kiþi sayýsýný ve toplamda 1.ay sonunda alacaðý VE ortalama alacaðý maaþlar


select sehir, count(ad) as 'sayý' from kiþiler group by sehir
--þehirlerde toplam kaç tane personel var (her þehirde kaç kiþi var)


-- maaþlarýn max,min olayý görelim
select meslek,max(maas) as 'En Yüksek' ,min(maas) as 'En Düþük'  from kiþiler group by meslek


