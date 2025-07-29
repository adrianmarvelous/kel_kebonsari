-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jul 2025 pada 10.53
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kebonsari`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user`
--

CREATE TABLE `data_user` (
  `id_data_user` int(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pelayanan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_user`
--

INSERT INTO `data_user` (`id_data_user`, `nama`, `alamat`, `pelayanan`) VALUES
(1, 'Adrian Marvel', 'KEBONSARI BARU SELATAN II', 0),
(2, 'Adrian Marvel', 'KEBONSARI BARU SELATAN II', 0),
(3, 'Adrian Marvel', '', 1),
(4, 'Adrian Marvel', 'Jalan Jimerto 25 - 27 Surabaya', 1),
(5, 'Adrian Marvel', 'Jalan Jimerto 25 - 27 Surabaya', 3),
(6, 'Adrian Marvel', 'Jalan Jimerto 25 - 27 Surabaya', 5),
(7, 'Adrian Marvel', 'Jalan Jimerto 25 - 27 Surabaya', 7),
(8, 'Adrian Marvel', 'Jalan Jimerto 25 - 27 Surabaya', 1),
(9, 'Adrian Marvel', 'Jalan Jimerto 25 - 27 Surabaya', 1),
(10, 'Adrian Marvel', 'Jalan Jimerto 25 - 27 Surabaya', 1),
(11, 'Adrian Marvel', 'Jalan Jimerto 25 - 27 Surabaya', 1),
(12, 'Adrian Marvel', 'Jalan Jimerto 25 - 27 Surabaya', 4),
(13, 'Adrian Marvel', 'Jalan Jimerto 25 - 27 Surabaya', 1),
(14, 'Adrian Marvel', 'Ngagel Mulyo XVI/103', 1),
(15, 'Adrian Marvel', 'Ngagel Mulyo XVI/103', 2),
(16, 'Adrian Marvel', 'Ngagel Mulyo XVI/103', 3),
(17, 'Adrian Marvel', 'KEBONSARI BARU SELATAN II', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `nama_layanan` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `kategori`, `nama_layanan`, `video`) VALUES
(1, 'ssw alfa', 'Rangkaian Pelayanan Surat Pernyataan Belum Memiliki Rumah', '1pAj0BHBROPUzYOfd89iS1-8NDZJagh5E'),
(2, 'ssw alfa', 'Rangkaian Pelayanan Surat Pengantar Nikah', ''),
(3, 'ssw alfa', 'Rangkaian Pelayanan Surat Pernyataan Tidak Memiliki Rumah\n', ''),
(4, 'ssw alfa', 'Rangkaian Pelayanan Surat Pernyataan Belum Pernah Menikah\n', ''),
(5, 'ssw alfa', 'Pelayanan Surat Kuasa Khusus untuk Pembayaran Pensiun\n', ''),
(6, 'ssw alfa', 'Rangkaian Pelayanan Surat Pernyataan Belum Menikah Lagi bagi Janda/Duda\n', ''),
(7, 'ssw alfa', 'Pelayanan Surat Keterangan izin suami/istri/izin orang tua, atau izin wali (persyaratan pekerja migran Indonesia)\n', ''),
(8, 'ssw alfa', 'Rangkaian Pelayanan Surat Pengantar Nikah (untuk Perempuan, yang akan dipoligami\n', ''),
(9, 'ssw alfa', 'Pelayanan surat kuasa penunjukan pelimpahan nomor porsi jemaah haji meninggal dunia (persyaratan pelimpahan nomor porsi haji)\n', ''),
(10, 'ssw alfa', 'Pelayanan Surat Pernyataan, Surat Pernyataan Belum Pernah Menikah, Surat Persetujuan Orang Tua/Wali, Daftar Riwayat Hidup untuk pendaftaran sebagai TNI\n', ''),
(11, 'ssw alfa', 'Rangkaian Pelayanan Surat Pengantar Nikah (untuk Laki-Laki berstatus Kawin, yang akan berpoligami)\n', ''),
(12, 'ssw alfa', 'Pelayanan Surat Permohonan Penerbitan BPKB (untuk Kehilangan BPKPB)\n', ''),
(13, 'ssw alfa', 'Surat Keterangan Ahli Waris (SKAW) Orang Tua atau Pasangan dalam perkawinan Sebagai Pewaris (SKAW)', ''),
(14, 'ssw alfa', 'Surat Keterangan Ahli Waris (SKAW) Anak Kandung yang Belum Menikah dan Belum Punya Anak Sebagai Pewaris', ''),
(15, 'ssw alfa', 'Rangkaian Pelayanan Surat Pernyataan Penghasilan untuk Non Formal\n', ''),
(16, 'ssw alfa', 'Rangkaian Pelayanan Surat Keterangan Domisili (Lembaga Berbadan Hukum, Lembaga Berbadan Usaha, Lembaga Non Berbadan Hukum dan Lembaga Non Berbadan Usaha)\n', ''),
(17, 'KNG MANDIRI', 'Keabsahan', ''),
(18, 'KNG MANDIRI', 'Legalisir', ''),
(19, 'KNG MANDIRI', 'Akta Kelahiran', ''),
(20, 'KNG MANDIRI', 'Akta Kematian', ''),
(21, 'KNG MANDIRI', 'Akta Pengesahan Anak', ''),
(22, 'KNG MANDIRI', 'Akta Perceraian', ''),
(23, 'KNG MANDIRI', 'Akta Perkawinan', ''),
(24, 'KNG MANDIRI', 'Kutipan Kedua Akta Catatan Sipil (Cetak Ulang Akta)', ''),
(25, 'KNG MANDIRI', 'Pelaporan Kelahiran Luar Negeri', ''),
(26, 'KNG MANDIRI', 'Pelaporan Kematian Luar Negeri', ''),
(27, 'KNG MANDIRI', 'Pelaporan Perceraian Luar Negeri', ''),
(28, 'KNG MANDIRI', 'Pelaporan Perkawinan Luar Negeri', ''),
(29, 'KNG MANDIRI', 'Pengakuan Anak', ''),
(30, 'KNG MANDIRI', 'Pengangkatan Anak', ''),
(31, 'KNG MANDIRI', 'Perubahan Biodata (Akta Kelahiran)', ''),
(32, 'KNG MANDIRI', 'Perubahan Biodata Peristiwa Penting dengan Pengadilan Negeri (Kematian)', ''),
(33, 'KNG MANDIRI', 'Perubahan Nama Akta Perceraian', ''),
(34, 'KNG MANDIRI', 'Perubahan Nama Akta Perkawinan', ''),
(35, 'KNG MANDIRI', 'Salinan Akta Kelahiran (Hanya Untuk Dokumen Migrasi ke Luar Negeri)', ''),
(36, 'KNG MANDIRI', 'Surat Keterangan Perjanjian Kawin', ''),
(37, 'KNG MANDIRI', 'Surat Keterangan Sudah Menikah / Belum / Pindah Menikah', ''),
(38, 'KNG MANDIRI', 'Cetak Ulang Kartu Keluarga', ''),
(39, 'KNG MANDIRI', 'Pecah KK', ''),
(40, 'KNG MANDIRI', 'Pindah Dalam Kota', ''),
(41, 'KNG MANDIRI', 'Pindah Keluar', ''),
(42, 'KNG MANDIRI', 'Pindah Datang', ''),
(43, 'KNG MANDIRI', 'Pelayanan Jemput Bola Perekaman KTP', ''),
(44, 'KNG MANDIRI', 'Pemutakhiran Gelar', ''),
(45, 'KNG MANDIRI', 'Pengajuan KTP Elektronik', ''),
(46, 'KNG MANDIRI', 'Pengajuan KTP Orang Asing', ''),
(47, 'KNG MANDIRI', 'Perubahan Biodata', ''),
(48, 'KNG MANDIRI', 'SKTT / KK OA / Pindah Keluar OA/ Exit Permit Only (EPO)', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `persyaratan`
--

CREATE TABLE `persyaratan` (
  `id_persyaratan` int(100) NOT NULL,
  `id_layanan` int(100) NOT NULL,
  `syarat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `persyaratan`
--

INSERT INTO `persyaratan` (`id_persyaratan`, `id_layanan`, `syarat`) VALUES
(1, 1, 'KK Pemohon'),
(2, 1, 'KTP Pemohon'),
(3, 1, 'Form Permohonan Rusunawa dari Dinas Perumahan Rakyat dan Kawasan Permukiman serta Pertanahan'),
(4, 2, 'Fotokopi KK calon mempelai Suami/Istri'),
(5, 2, 'Pas foto 3x4 calon suami'),
(6, 2, 'Pas foto 3x4 calon istri'),
(7, 2, 'Fotokopi KK Orang Tua (jika KK Orang Tua berbeda dengan KK pemohon)'),
(8, 2, 'Akta Kematian Orang Tua (jika sudah meninggal dunia)'),
(9, 2, 'Akta cerai (bagi pemohon yang berstatus cerai hidup)'),
(10, 2, 'Akta Kematian dan fotokopi Buku Nikah (bagi pemohon berstatus cerai mati)'),
(11, 2, 'Surat Pernyataan (bila pemohon tidak mengetahui/memiliki data keberadaan orang tua)'),
(12, 3, 'KK Asli Pemohon'),
(13, 4, 'KK Asli Pemohon'),
(14, 4, 'Surat Pernyataan bermaterai 10.000 yang menyatakan belum pernah menikah'),
(15, 5, 'Surat Pengantar RT-RW'),
(16, 5, 'KK Asli Pemohon'),
(17, 6, 'KK Asli Pemohon'),
(18, 6, 'Fotokopi Akta Cerai/Akta Kematian'),
(19, 6, 'Surat Pernyataan bermaterai 10.000 yang menyatakan belum pernah menikah lagi'),
(20, 7, 'Surat Pengantar RT-RW'),
(21, 7, 'KTP pemberi izin (suami/istri/orang tua/wali)'),
(22, 7, 'KK pemberi izin (suami/istri/orang tua/wali)'),
(23, 7, 'KTP calon pekerja migran Indonesia'),
(24, 7, 'KK calon pekerja migran Indonesia'),
(25, 7, 'Buku nikah (bagi calon pekerja migran Indonesia yang telah menikah)'),
(26, 7, 'Surat keterangan status perkawinan (bagi calon pekerja migran Indonesia yang telah menikah)'),
(27, 7, 'Kontrak kerja diluar negeri (jika ada)'),
(28, 8, 'Fotokopi KK calon mempelai Suami/Istri'),
(29, 8, 'Pas foto 3x4 calon suami'),
(30, 8, 'Pas foto 3x4 calon istri'),
(31, 8, 'Fotokopi KK Orang Tua (jika KK Orang Tua berbeda dengan KK pemohon)'),
(32, 8, 'Akta Kematian Orang Tua (jika sudah meninggal dunia)'),
(33, 8, 'Akta cerai (bagi pemohon yang berstatus cerai hidup)'),
(34, 8, 'Akta Kematian dan fotokopi Buku Nikah (bagi pemohon berstatus cerai mati)'),
(35, 8, 'Surat Pernyataan (bila pemohon tidak mengetahui/memiliki data keberadaan orang tua)'),
(36, 8, 'Surat Pengantar Pengadilan Agama terkait Izin Poligami (Pasangan Laki-laki nya)'),
(37, 9, 'Surat Pengantar RT-RW'),
(38, 9, 'KTP Pemohon atau jemaah penerima pelimpahan nomor porsi'),
(39, 9, 'KK Pemohon atau jemaah penerima pelimpahan nomor porsi'),
(40, 9, 'Akta Kelahiran/Buku Nikah/dokumen yang dipersamakan atau bukti lain Pemohon atau jemaah penerima pelimpahan nomor porsi'),
(41, 9, 'Akta Kematian jemaah haji meninggal dunia'),
(42, 9, 'Bukti setoran awal dan/atau setoran lunas Biaya Perjalanan Ibadah Haji'),
(43, 9, 'Surat Keterangan tanggung jawab mutlak yang ditandatangani oleh jemaah haji penerima pelimpahan nomor porsi'),
(44, 10, 'Surat Pengantar RT-RW'),
(45, 10, 'KK Asli Pemohon'),
(46, 11, 'Fotokopi KK calon mempelai Suami/Istri'),
(47, 11, 'Pas foto 3x4 calon suami'),
(48, 11, 'Pas foto 3x4 calon istri'),
(49, 11, 'Fotokopi KK Orang Tua (jika KK Orang Tua berbeda dengan KK pemohon)'),
(50, 11, 'Akta Kematian Orang Tua (jika sudah meninggal dunia)'),
(51, 11, 'Akta cerai (bagi pemohon yang berstatus cerai hidup)'),
(52, 11, 'Akta Kematian dan fotokopi Buku Nikah (bagi pemohon berstatus cerai mati)'),
(53, 11, 'Surat Pernyataan (bila pemohon tidak mengetahui/memiliki data keberadaan orang tua)'),
(54, 11, 'Surat Pengantar Pengadilan Agama terkait Izin Poligami'),
(55, 12, 'Surat Pengantar RT-RW'),
(56, 12, 'Fotokopi KTP'),
(57, 12, 'Fotokopi KK Pemohon'),
(58, 12, 'Fotokopi STNK yang berkenaan'),
(59, 12, 'Fotokopi Surat Pernyataan sebagai pemilik kendaraan (watermark Ditlantas)'),
(60, 12, 'Bukti Pembelian Kendaraan (bila BPKB belum balik nama pemohon)'),
(61, 12, 'Surat Laporan Kehilangan dari Kepolisian'),
(62, 13, 'KTP/Kartu Keluarga/dokumen kependudukan Pewaris lainnya'),
(63, 13, 'Akta Kematian Pewaris'),
(64, 13, 'Buku Nikah Pewaris atau Dokumen Lain yang Dipersamakan\n\n(Dokumen Lain yang Dipersamakan yang diterbitkan oleh KUA, Catatan Sipil dan Pengadilan)'),
(65, 13, 'Akta Kematian Ahli Waris (apabila Ahli Waris meninggal dunia)\n'),
(66, 13, 'Akta Kelahiran Ahli Waris'),
(67, 13, 'KTP Ahli Waris'),
(68, 13, 'Kartu Keluarga Ahli Waris'),
(69, 13, 'KTP 2 (dua) orang saksi'),
(70, 13, 'Surat pengantar dari Ketua RT dengan diketahui oleh Ketua RW\n'),
(71, 13, 'Surat pernyataan para Ahli Waris sesuai dengan silsilah keluarga yang menyatakan sebagai Ahli Waris dan ditandatangani oleh para Ahli Waris dan 2 (dua) orang saksi serta dibubuhi meterai'),
(72, 13, '1Surat Pernyataan kebenaran semua kelengkapan dokumen menjadi tanggung jawab pemohon (download disini)'),
(73, 14, 'KTP/Kartu Keluarga/dokumen kependudukan Pewaris lainnya'),
(74, 14, 'Akta Kematian Pewaris\n'),
(75, 14, 'Akta Kelahiran/ Copy Kartu Keluarga Pewaris'),
(76, 14, 'Akta Kematian Ahli Waris (apabila Ahli Waris meninggal dunia)'),
(77, 14, 'Akta Kelahiran Ahli Waris'),
(78, 14, 'KTP Ahli Waris'),
(79, 14, 'Kartu Keluarga Ahli Waris'),
(80, 14, 'KTP 2 (dua) orang saksi'),
(81, 14, 'Surat pengantar dari Ketua RT dengan diketahui oleh Ketua RW'),
(82, 14, 'Surat pernyataan para Ahli Waris sesuai dengan silsilah keluarga yang menyatakan sebagai Ahli Waris dan ditandatangani oleh para Ahli Waris dan 2 (dua) orang saksi serta dibubuhi meterai'),
(83, 14, '1Surat Pernyataan kebenaran semua kelengkapan dokumen menjadi tanggung jawab pemohon (download disini)'),
(84, 15, 'KK Asli Pemohon'),
(85, 16, 'Dokumen legal yang prinsipnya tertera nama lembaga, penanggung jawab dan alamat lembaga; (unggah) (AD/ART atau Akta Pendirian)'),
(86, 16, 'Identitas Kependudukan Penanggung Jawab (Kartu Keluarga atau Surat Keterangan lainnya selain KTP yg menunjukkan informasi Kependudukan)'),
(87, 16, 'Fotokopi KTP Penanggung jawab'),
(88, 16, 'Foto lokasi Usaha'),
(89, 16, 'Dokumen legal penggunaan alamat usaha. (Surat Legal Usaha, misal Perjanjian Sewa, Perjanjian Kontrak)'),
(90, 17, 'Form Permohonan Akta Kelahiran / Konfirmasi Akta Kelahiran (format ada di halaman terakhir)'),
(91, 17, 'Akta Lahir/Mati/Perkawinan/Perceraian'),
(92, 17, 'KK/KTP Pemilik Akta'),
(93, 17, 'KTP Pelapor'),
(94, 17, 'SPTJM Kelahiran / Kematian bermaterai 10000'),
(95, 18, 'Akta Lahir/Akta kematian/Perkawinan/Perceraian (JPG)'),
(96, 18, 'Surat Keabsahan Dari KotaAsal (PDF/JPG) (jika aktanya terbitan LUAR SURABAYA)'),
(97, 18, 'SPTJM Bermaterai (PDF/JPG) (format ada di halaman terakhir)'),
(98, 19, 'Surat Keterangan Kelahiran dari Dokter/Bidan/Paramedis atau Surat Pertanggung Jawaban Mutlak Kebenaran Kelahiran'),
(99, 19, 'Surat Pernyataan Tanggung Jawab Mutlak Kebenaran Suami Istri'),
(100, 19, 'KTP 2 Orang saksi'),
(101, 20, 'Surat Keterangan Kematian dari Dokter atau Surat Pertanggung Jawaban Mutlak Kebenaran Kelahiran'),
(102, 20, 'Kartu Keluarga Pelapor'),
(103, 20, 'KTP 2 Orang saksi'),
(104, 21, 'Akta Kelahiran'),
(105, 21, 'Akta Perkawinan'),
(106, 21, 'Kartu Keluarga Suami'),
(107, 21, 'Kartu Keluarga Istri'),
(108, 21, 'KTP Suami'),
(109, 21, 'KTP SAKSI 1'),
(110, 21, 'KTP SAKSI 2'),
(111, 21, 'Surat Keterangan Penetapan Pengadilan, Lengkapi jika anak lahir sebelum peristiwa perkawinan agama atau kepercayaan terhadap Tuhan Yang Maha Esa'),
(112, 21, 'Paspor Atau Dokumen Perjalanan bagi WNA bagi warga berkewarganegaraan asing atau WNA'),
(113, 22, 'Akta Kawin'),
(114, 22, 'Surat Pengantar Pengadilan'),
(115, 22, 'Kartu Keluarga'),
(116, 22, 'Salinan putusan pengadilan bagian sampul'),
(117, 22, 'Salinan putusan pengadilan bagian mengadili'),
(118, 22, 'Foto 3 x 4'),
(119, 23, 'Surat Keterangan Telah Terjadinya Perkawinan dari Pemuka Agama'),
(120, 23, 'Pas Foto Pemohon 4 kali 6 Berdampingan'),
(121, 23, 'KK Bila Calon Mempelai Bukan Warga Surabaya (Opsional)'),
(122, 23, 'Lampiran Perjanjian Pernikahan (Opsional)'),
(123, 23, 'Denda (Opsional)'),
(124, 23, 'Surat Keterangan Tidak Ada Kendala Menikah dari Kantor Perwakilan Negara Asal (Bila Calon Suami / Istri WNA)'),
(125, 23, 'Passport (Opsional)'),
(126, 23, 'Akta Kematian Mantan Suami (Akta kematian pasangan bila status perkawinan cerai ma)'),
(127, 24, 'KTP'),
(128, 24, 'Kartu Keluarga'),
(129, 24, 'Akta Kelahiran (Opsional)'),
(130, 24, 'Foto Akta Kelahiran Rusak'),
(131, 24, 'Surat Kehilangan Dari Kepolisian jika akta hilang'),
(132, 24, 'Surat Pernyataan Cetak Ulang Akta (Opsional)'),
(133, 24, 'Dokumen Pendukung Perubahan Data (Opsional)'),
(134, 25, 'Akta Kelahiran Luar Negeri'),
(135, 25, 'Surat Keterangan dari KBRI / KJRI / Kemenlu'),
(136, 25, 'Surat Terjemahan Akta Kelahiran Luar Negeri yang dikeluarkan Lembaga Penerjemah (ASLI)'),
(137, 25, 'Paspor Bapak, Ibu dan Anak'),
(138, 25, 'Akta Perkawinan Orang Tua'),
(139, 26, 'AKTA KEMATIAN LUAR NEGERI'),
(140, 26, 'SURAT KETERANGAN DARI KBRI / KJRI'),
(141, 26, 'SURAT TERJEMAHAN AKTA KEMATIAN LUAR NEGERI YANG DIKELUARKAN LEMBAGA PENERJEMAH'),
(142, 26, 'PASPOR YANG MENINGGAL'),
(143, 26, 'KK Pelapor'),
(144, 27, 'KTP Suami'),
(145, 27, 'KK Suami'),
(146, 27, 'KTP Istri'),
(147, 27, 'KK Istri'),
(148, 27, 'Passport Suami'),
(149, 27, 'Passport Istri'),
(150, 27, 'Akta Cerai Suami dan Istri sesuai dengan Negara/Lembaga Penerbit Akta'),
(151, 27, 'Surat Pelaporan Di KBRI/KJRI Negara Setempat'),
(152, 27, 'Perjanjian Kawin Yang Telah Dilegalisir Notaris Yang Membuat (opsional)'),
(153, 27, 'Surat Pernyataan Tidak Dalam Keadaan Pailit (Bermaterai)'),
(154, 27, 'Surat Denda jika Lebih Dari 30 Hari Kerja (opsional)'),
(155, 27, 'Surat Berbahasa Asing'),
(156, 27, 'Diterjemahkan Oleh Penerjemah Tersumpah'),
(157, 28, 'KTP Suami'),
(158, 28, 'KK Suami'),
(159, 28, 'KTP Istri'),
(160, 28, 'KK Istri'),
(161, 28, 'Passport Suami'),
(162, 28, 'Passport Istri'),
(163, 28, 'Akta Nikah Suami dan Istri sesuai dengan Negara/Lembaga Penerbit Akta'),
(164, 28, 'Surat Pelaporan di KBRI/KJRI Negara Setempat'),
(165, 28, 'Perjanjian Kawin yang Telah Dilegalisir Notaris'),
(166, 28, 'Surat Pernyataan Tidak dalam Keadaan Pailit (Bermaterai)'),
(167, 28, 'Bukti Pembayaran Denda jika Lebih dari 30 Hari Kerja'),
(168, 28, 'Surat Berbahasa Asing Diterjemahkan Oleh Penerjemah Tersumpah'),
(169, 29, 'Surat Pengakuan Anak dari Ayah biologis yang disetujui oleh Ibu Kandung'),
(170, 29, 'Akta Kelahiran'),
(171, 29, 'Kartu Keluarga'),
(172, 29, 'KTP Ayah Biologis'),
(173, 29, 'KTP Ibu'),
(174, 29, 'Salinan Penetapan Pengadilan (Bagi Ibu berkewarganegaraan Asing) Opsional'),
(175, 30, 'Akta Kelahiran Anak'),
(176, 30, 'KTP Orang tua Angkat'),
(177, 30, 'Kartu Keluarga Orang tua Angkat'),
(178, 30, 'Salinan Penetapan Pengadilan'),
(179, 30, 'Paspor atau Dokumen Perjalanan Orang tua Angkat bagi Orang Asing (opsional)'),
(180, 31, 'Akta Kelahiran'),
(181, 31, 'Kartu Keluarga Asli'),
(182, 31, 'KTP Asli'),
(183, 31, 'Berkas Penunjang Perubahan (Ijazah Akhir Sampai Awal, Surat Nikah, dll)'),
(184, 31, 'Dokumen Penetapan PN / Presedium Kabinet / Kemenkumham'),
(185, 32, 'Kartu Keluarga'),
(186, 32, 'KTP Pemohon'),
(187, 32, 'KTP Jenazah'),
(188, 32, 'KK Jenazah'),
(189, 32, 'Akta Kematian Jenazah'),
(190, 32, 'Legalisir Penetapan Pengadilan Negeri (Jika Melalui PN)'),
(191, 33, 'KTP Suami'),
(192, 33, 'KK Suami'),
(193, 33, 'KTP Istri'),
(194, 33, 'KK Istri'),
(195, 33, 'Akta Perceraian'),
(196, 33, 'Dokumen Pendukung (Akta Kelahiran/Penetapan PN/Presidium Kabinet/Kemenkumham)'),
(197, 33, 'Dokumen Perjalanan Bagi Orang Asing'),
(198, 33, 'Bukti Denda Sebesar 500.000 jika Tanggal Putusan Pengadilan sampai dengan Pengurusan Lebih dari 30 Hari Kerja'),
(199, 34, 'KTP Suami'),
(200, 34, 'KK Suami'),
(201, 34, 'KTP Istri'),
(202, 34, 'KK Istri'),
(203, 34, 'Akta Perkawinan'),
(204, 34, 'Dokumen Pendukung Dokumen Pendukung (Akta Kelahiran / Penetapan PN / Presidium Kabinet / Kemenkumham)'),
(205, 34, 'Dokumen Perjalanan Bagi Orang Asing'),
(206, 34, 'Surat Konfirmasi Keabsahan Luar Kota (Jika Akta Luar Kota)'),
(207, 34, 'Bukti Denda Sebesar (Rp 500.000) Jika Tanggal Putusan Pengadilan sampai dengan Pengurusan Lebih Dari 30 Hari Kerja'),
(208, 35, 'Fotocopy KK'),
(209, 35, 'Fotocopy KTP'),
(210, 35, 'Fotocopy Akta Kelahiran'),
(211, 36, 'Akta Perjanjian Kawin dari Notaris yang Berkedudukan di Indonesia'),
(212, 36, 'Akta Perkawinan'),
(213, 36, 'Surat Pernyataan bahwa tidak dalam keadaan pailit'),
(214, 36, 'Keabsahan akta perkawinan jika terbitan selain Kota Surabaya'),
(215, 37, 'KTP Pelapor (wajib ada)'),
(216, 37, 'KK Pelapor (wajib ada)'),
(217, 37, 'Passpor dengan status Kawin (optional)'),
(218, 37, 'Surat pernyataan telah menikah (Permohonan Sudah Menikah) (optional)'),
(219, 37, 'Surat pernyataan bermaterai yang menyatakan belum pernah melaksanakan pencatatan perkawinan di KUA maupun catatan sipil manapun (Permohonan Pindah Menikah) (wajib ada)'),
(220, 37, 'Akta Perceraian (untuk cerai hidup) atau Akta Kematian (untuk yang cerai mati) untuk Permohonan Pindah Menikah (optional)'),
(221, 38, 'Kartu Keluarga Pelapor'),
(222, 38, 'Surat Kehilangan Dari Kepolisian'),
(223, 39, 'F102 Pecah KK dengan Klausul (download contoh dokumen F102 Pecah KK DENGAN Klausul)'),
(224, 39, 'Surat Nikah / Akta Perkawinan'),
(225, 40, 'Surat Pertanggungjawaban Mutlak Pemohon Bahwa Pemilik Rumah Tidak Keberatan penggunaan alamat dalam dokumen kependudukan'),
(226, 40, 'Surat Nikah / Akta Perkawinan'),
(227, 40, 'Formulir F103'),
(228, 40, 'Formulir F 102'),
(229, 40, 'Putusan pengadilan tentang hak asuh anak atau surat pernyataan tidak keberatan dari salah satu atau kedua orang tua ( apabila yang pindah berusia kurang dari 17 tahun dan belum menikah) (opsional)'),
(230, 41, 'Surat Nikah / Akta Perkawinan / Akta Perceraian'),
(231, 41, 'Putusan pengadilan tentang hak asuh anak atau surat pernyataan tidak keberatan dari kedua orang tua (apabila yang pindah berusia kurang dari 17 (tujuh belas) tahun dan belum menikah'),
(232, 41, 'Surat Kuasa dari Pemohon Kepada Pelapor'),
(233, 42, 'SKPWNI'),
(234, 42, 'Surat Pernyataan Pemohon Bahwa Pindah Menuju Rumah Milik Sendiri atau Milik Orang Lain'),
(235, 42, 'Akta Perkawinan / Surat Nikah'),
(236, 42, 'Seluruh akta perkawinan / surat nikah anggota keluarga yang pindah dijadikan satu file'),
(237, 42, 'Putusan pengadilan tentang hak asuh anak atau surat pernyataan tidak keberatan dari salah satu atau kedua orang tua ( apabila yang pindah berusia kurang dari 17 tahun dan belum menikah)'),
(238, 42, 'Kartu Keluarga Penjamin'),
(239, 42, 'Formulir F 102 (Wajib Jika Permohonan Diajukan Selain Menggunakan Akun Warga Mandiri)'),
(240, 43, 'Kartu Keluarga Pemohon'),
(241, 43, 'Kartu Keluarga Pelapor'),
(242, 43, 'Foto Kondisi Pemohon yang Diajukan Jebol Anduk'),
(243, 44, 'Kartu Keluarga'),
(244, 44, 'Ijazah'),
(245, 45, 'KTP'),
(246, 45, 'Surat Kehilangan Dari Kepolisian'),
(247, 45, 'Bukti Kepemilikan IKD di HP pemohon'),
(248, 46, 'Kartu Keluarga'),
(249, 46, 'Formulir F 102 (Wajib Jika Permohonan Diajukan Selain Menggunakan Akun Warga Mandiri)'),
(250, 47, 'Kartu Keluarga'),
(251, 47, 'Dokumen Pendukung Perubahan KK'),
(252, 48, 'Foto Passport'),
(253, 48, 'Foto ITAS dan Foto bukti pengantar pembayaran yang ada stempel pick up passport dari imigrasi'),
(254, 48, 'RPTKA untuk yang bekerja / Surat Keputusan dari KEMENKUMHAM untuk INVESTMENT (Opsional)'),
(255, 48, 'Surat Permohonan dari perusahaan penjamin/dari suami atau istri/WNI bagi OA yang kawin sah dengan WNI dibuktikan dengan akta perkawinan'),
(256, 48, 'Surat Pernyataan tidak keberatan penggunaan alamat dalam dokumen kependudukan dari pemilik rumah apabila OA memiliki rumah sendiri/ numpang KK/ menyewa rumah /kost :'),
(257, 48, 'Foto Orang Asing di depan rumah dengan memegang passport halaman depan'),
(258, 48, 'Pas Foto background Merah (untuk tahun kelahiran ganjil) atau Biru (Untuk tahun kelahiran genap)'),
(259, 48, 'SKTT Lama'),
(260, 48, 'Berita acara verifikasi tempat tinggal yang ditandatangani oleh oleh pemilik rumah dan mengetahui RT, serta Foto outreach lapangan petugas kelurahan dengan pemberi informasi (keluargatetangga/RT/RW/KSH) di depan rumah yang dituju'),
(261, 48, 'Hasil Cek Biometrik (Opsional)');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id_data_user`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `persyaratan`
--
ALTER TABLE `persyaratan`
  ADD PRIMARY KEY (`id_persyaratan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id_data_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
