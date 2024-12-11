--View untuk melihat nama admin yang melayani kamar yang terpesan

CREATE VIEW ViewAdminKamar AS
SELECT A.idAdmin, A.namaAdmin,k.idKamar, k.statusKamar, k.tipeKamar
FROM dbo.Admin A
JOIN Pemesanan p ON A.idAdmin = p.idAdmin
JOIN Kamar k ON p.idKamar = k.idKamar

SELECT * FROM ViewAdminKamar