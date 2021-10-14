/* ranking tagihan semua kendaraan */
CREATE VIEW vranking_tagihan AS
SELECT *, RANK() OVER(ORDER BY T.biaya_inap desc) ranking_waktu_inap
FROM (
select nomor_polisi, vendor, driver_name, nomor_surat_jalan, waktu_checkin, waktu_checkout, DATEDIFF(day,waktu_checkin, waktu_checkout) * biaya_inap_per_malam as biaya_inap 
FROM kendaraan 
) T

SELECT * FROM vranking_tagihan