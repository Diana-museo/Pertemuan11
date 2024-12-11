--View untuk melihat kamar yang 'Terpesan' atau 'Booked' beserta nama tamu

CREATE VIEW ViewKamarTerpesan AS
SELECT k.idKamar, k.statusKamar, t.namaTamu
FROM Kamar k
JOIN Pemesanan p ON k.idKamar = p.idKamar
JOIN Tamu t ON p.idTamu = t.idTamu;

SELECT * FROM ViewKamarTerpesan