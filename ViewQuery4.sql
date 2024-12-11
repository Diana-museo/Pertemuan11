-- View untuk melihat kamar yang statusnya 'Tersedia' atau 'Available'

CREATE VIEW ViewKamarTersedia AS
SELECT idKamar, statusKamar
FROM dbo.Kamar
WHERE statusKamar = 'Available';

SELECT * FROM ViewKamarTersedia;
