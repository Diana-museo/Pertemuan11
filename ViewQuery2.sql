CREATE VIEW ViewTamuKamar AS
SELECT t.namaTamu, k.tipeKamar
FROM dbo.Tamu t
JOIN dbo.Pemesanan p ON t.idTamu = p.idTamu
JOIN dbo.Kamar k ON k.idKamar = p.idKamar
WHERE t.namaTamu = 'Joko Susilo';

SELECT * FROM ViewTamuKamar;
