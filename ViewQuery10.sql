-- View untuk menampilkan 5 admin teratas yang menangani pemesanan terbanyak

CREATE VIEW ViewAdminPalingBanyakPemesanan AS
SELECT TOP 5 a.namaAdmin, COUNT(p.idPemesanan) AS jumlahPemesanan
FROM dbo.Admin a
JOIN dbo.Pemesanan p ON a.idAdmin = p.idAdmin
GROUP BY a.idAdmin, a.namaAdmin
ORDER BY jumlahPemesanan DESC;

SELECT * FROM ViewAdminPalingBanyakPemesanan;