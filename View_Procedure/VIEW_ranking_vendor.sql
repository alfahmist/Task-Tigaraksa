/* ranking tagihan masing masing vendor */
CREATE VIEW vranking_vendor AS 
SELECT *, NTILE(3) OVER(PARTITION BY vendor ORDER BY T.biaya_inap desc) as ranking_waktu_inap
FROM (
SELECT nomor_polisi, vendor, driver_name, nomor_surat_jalan, waktu_checkin, waktu_checkout, DATEDIFF(DAY,waktu_checkin, waktu_checkout) * biaya_inap_per_malam as biaya_inap 
FROM kendaraan ) T

SELECT * FROM vranking_vendor