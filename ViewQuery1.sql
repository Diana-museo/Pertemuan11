CREATE VIEW AdminPembayaran AS
SELECT a.namaAdmin, SUM(c.totalPembayaran) AS Total
FROM dbo.Admin a
JOIN dbo.Pemesanan b ON a.idAdmin = b.idAdmin
JOIN dbo.Pembayaran c ON b.idPembayaran = c.idPembayaran
GROUP BY a.namaAdmin;

SELECT * FROM AdminPembayaran
