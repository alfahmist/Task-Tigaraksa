CREATE VIEW vtagihan_per_vendor AS
SELECT vendor, sum(biaya_inap_per_malam * DATEDIFF(day, waktu_checkin, waktu_checkout)) as total_tagihan
FROM dbo.kendaraan
GROUP by vendor

SELECT * FROM vtagihan_per_vendor