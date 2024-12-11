--View untuk melihat kamar dengan tipe 'Double' yang dibayar menggunakan metode pembayaran 'Debit'

CREATE VIEW ViewTipedanPembayaranKamar AS
SELECT p.idPemesanan, k.idKamar, k.tipeKamar, k.statusKamar, b.idPembayaran, b.metodePembayaran
FROM Kamar k
JOIN Pemesanan p ON k.idKamar = p.idKamar
JOIN Pembayaran b ON b.idPembayaran = p.idPembayaran
WHERE tipeKamar = 'Double'
AND metodePembayaran = 'debit'

SELECT * FROM ViewTipedanPembayaranKamar