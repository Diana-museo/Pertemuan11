-- View untuk menampilkan pemesanan kamar dengan tanggal Check In 4 Oktober 2024 - 10 Oktober 2024

CREATE VIEW ViewPemesananBerdasarkanTglCheckIn AS
SELECT 
    p.idPemesanan,
    t.namaTamu,
    k.tipeKamar,
    p.tglPemesanan,
    p.tglCheckin,
    p.tglCheckout
FROM dbo.Tamu t
JOIN dbo.Pemesanan p ON t.idTamu = p.idTamu
JOIN dbo.Kamar k ON p.idKamar = k.idKamar
WHERE p.tglPemesanan BETWEEN '2024-10-04' AND '2024-10-10';

SELECT * FROM ViewPemesananBerdasarkanTglCheckIn;