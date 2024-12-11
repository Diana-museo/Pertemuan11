-- View untuk melihat daftar tamu yang melakukan pemesanan

CREATE VIEW ViewTamuPemesanan AS
SELECT t.idTamu, t.namaTamu, t.alamat, t.noTelepon, p.idPemesanan, p.tglPemesanan, p.tglCheckin, p.tglCheckout
FROM dbo.Tamu t
JOIN dbo.Pemesanan p ON t.idTamu = p.idTamu;

SELECT * FROM ViewTamuPemesanan;