--View untuk melihat metode pembayaran dengan metode 'Tunai'
CREATE VIEW ViewMetodePembayaran AS
SELECT idPembayaran, metodePembayaran
FROM Pembayaran
WHERE metodePembayaran = 'tunai'

SELECT * FROM ViewMetodePembayaran