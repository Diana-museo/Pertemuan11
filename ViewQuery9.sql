--View untuk menampilkan admin yang melayani pemesanan mulai dari tanggal '01-10-2024' pada jam kurang dari jam '12.00'
CREATE VIEW ViewAdminJamPemesan AS
SELECT a.idAdmin, a.namaAdmin, p.idPemesanan, p.tglPemesanan, p.jamPesan
FROM Admin a
JOIN Pemesanan p ON a.idAdmin = p.idAdmin
WHERE tglPemesanan >= '2024-10-01' AND jamPesan < '12:00:00'

SELECT * FROM ViewAdminJamPemesan