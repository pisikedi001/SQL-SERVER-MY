CREATE TABLE Yazarlar (
    yazar_id INT PRIMARY KEY IDENTITY(1,1),
    ad_soyad VARCHAR(100) NOT NULL,
    ulke VARCHAR(50)
);

-- 2. Kitaplar Tablosu
CREATE TABLE Kitaplar (
    kitap_id INT PRIMARY KEY IDENTITY(1,1),
    baslik VARCHAR(150) NOT NULL,
    yazar_id INT NOT NULL,
    kategori VARCHAR(50),
    sayfa_sayisi INT,
    yayin_yili INT,
    FOREIGN KEY (yazar_id) REFERENCES Yazarlar(yazar_id) ON DELETE CASCADE
);

CREATE TABLE Odunc_Alinanlar (
    odunc_id INT PRIMARY KEY IDENTITY(1,1),
    kitap_id INT NOT NULL,
    uye_adi VARCHAR(100) NOT NULL,
    odunc_tarihi DATE NOT NULL,
    teslim_tarihi DATE,
    FOREIGN KEY (kitap_id) REFERENCES Kitaplar(kitap_id) ON DELETE CASCADE
);

INSERT INTO Yazarlar (ad_soyad, ulke) VALUES 
('Franz Kafka', 'Çekya'),
('George Orwell', 'İngiltere'),
('Sabahattin Ali', 'Türkiye'),
('Fyodor Dostoyevski', 'Rusya'),
('Stefan Zweig', 'Avusturya'),
('Yaşar Kemal', 'Türkiye'),
('J.K. Rowling', 'İngiltere');

INSERT INTO Kitaplar (baslik, yazar_id, kategori, sayfa_sayisi, yayin_yili) VALUES 
('Dönüşüm', 1, 'Kurgu / Klasik', 100, 1915),
('Dava', 1, 'Kurgu / Roman', 220, 1925),
('1984', 2, 'Distopya', 328, 1949),
('Kürk Mantolu Madonna', 3, 'Roman', 160, 1943),
('Suç ve Ceza', 4, 'Klasik / Roman', 687, 1866),
('Budala', 4, 'Klasik', 720, 1869),
('Satranç', 5, 'Modern Klasik', 84, 1942),
('Bilinmeyen Bir Kadının Mektubu', 5, 'Novella', 64, 1922),
('İnce Memed 1', 6, 'Roman / Edebiyat', 436, 1955),
('Harry Potter ve Felsefe Taşı', 7, 'Fantastik', 274, 1997);



INSERT INTO Odunc_Alinanlar (kitap_id, uye_adi, odunc_tarihi, teslim_tarihi) VALUES 
(1, 'Ahmet Yılmaz', '2026-02-01', '2026-02-15'),
(2, 'Ali Saymaz' , '2026-02-02', '2026-02-24'),
(3, 'Ayşe Kaya', '2026-03-01', NULL); -- NULL: Henüz teslim edilmedi

SELECT 
    k.kitap_id,
    k.baslik AS [Kitap Adı],
    y.ad_soyad AS [Yazar],
    k.kategori AS [Kategori],
    k.yayin_yili AS [Yayın Yılı]
FROM Kitaplar k
INNER JOIN Yazarlar y ON k.yazar_id = y.yazar_id;



