-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2025 at 08:26 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `apt_barang`
--

CREATE TABLE `apt_barang` (
  `id` int UNSIGNED NOT NULL,
  `id_jenis_barang` int UNSIGNED DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `apt_barang`
--

INSERT INTO `apt_barang` (`id`, `id_jenis_barang`, `nama_barang`) VALUES
(1, 1, 'Promag Tablet'),
(2, 1, 'Panadol Biru'),
(3, 1, 'Bodrex'),
(4, 4, 'Tolak Angin Cair'),
(5, 3, 'Vitamin C IPI'),
(6, 3, 'Sangobion'),
(7, 5, 'Betadine Antiseptic Solution'),
(8, 5, 'Hansaplast Kain Elastis'),
(9, 1, 'Mylanta Cair'),
(10, 1, 'Paracetamol 500mg (Generic)'),
(11, 2, 'OBH Combi Batuk Flu'),
(12, 3, 'Redoxon Triple Action'),
(13, 3, 'CDR Effervescent'),
(14, 2, 'Insto Regular Eye Drops'),
(15, 2, 'Diapet Kapsul'),
(16, 6, 'Neurobion Forte'),
(17, 2, 'Salep Kulit 88'),
(18, 2, 'Counterpain Cream');

-- --------------------------------------------------------

--
-- Table structure for table `apt_barang_detail`
--

CREATE TABLE `apt_barang_detail` (
  `id` int NOT NULL,
  `id_barang` int UNSIGNED DEFAULT NULL,
  `kode_barang` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_satuan_barang` int UNSIGNED DEFAULT NULL,
  `satuan_barang` varchar(255) DEFAULT NULL,
  `isi_satuan_turunan` varchar(255) DEFAULT NULL,
  `urutan_satuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `apt_barang_detail`
--

INSERT INTO `apt_barang_detail` (`id`, `id_barang`, `kode_barang`, `nama_barang`, `id_satuan_barang`, `satuan_barang`, `isi_satuan_turunan`, `urutan_satuan`) VALUES
(1, 1, 'PRM001-BOX', 'Promag Tablet', 1, 'Box', '1', '1'),
(2, 1, 'PRM001-BLS', 'Promag Tablet', 10, 'Blister', '3', '2'),
(3, 1, 'PRM001-TAB', 'Promag Tablet', 3, 'Tablet', '12', '3'),
(4, 2, 'PND001-BOX', 'Panadol Biru', 1, 'Box', '1', '1'),
(5, 2, 'PND001-STP', 'Panadol Biru', 2, 'Strip', '10', '2'),
(6, 2, 'PND001-KAP', 'Panadol Biru', 13, 'Kaplet', '10', '3'),
(7, 3, 'BDX001-BOX', 'Bodrex', 1, 'Box', '1', '1'),
(8, 3, 'BDX001-STP', 'Bodrex', 2, 'Strip', '2', '2'),
(9, 3, 'BDX001-TAB', 'Bodrex', 3, 'Tablet', '10', '3'),
(10, 4, 'TLA001-BOX', 'Tolak Angin Cair', 1, 'Box', '1', '1'),
(11, 4, 'TLA001-SCH', 'Tolak Angin Cair', 5, 'Sachet', '12', '2'),
(12, 5, 'VTC001-BTL', 'Vitamin C IPI', 4, 'Botol', '1', '1'),
(13, 5, 'VTC001-TAB', 'Vitamin C IPI', 3, 'Tablet', '45', '2'),
(14, 6, 'SGB001-BOX', 'Sangobion', 1, 'Box', '1', '1'),
(15, 6, 'SGB001-STP', 'Sangobion', 2, 'Strip', '10', '2'),
(16, 6, 'SGB001-KAP', 'Sangobion', 13, 'Kaplet', '4', '3'),
(17, 7, 'BTD001-BTL', 'Betadine Antiseptic Solution', 4, 'Botol', '1', '1'),
(18, 8, 'HSP001-BOX', 'Hansaplast Kain Elastis', 1, 'Box', '1', '1'),
(19, 8, 'HSP001-PCS', 'Hansaplast Kain Elastis', 6, 'Pcs', '100', '2'),
(20, 9, 'MYL001-BTL', 'Mylanta Cair', 4, 'Botol', '1', '1'),
(21, 10, 'PRC001-BOX', 'Paracetamol 500mg (Generic)', 1, 'Box', '1', '1'),
(22, 10, 'PRC001-STP', 'Paracetamol 500mg (Generic)', 2, 'Strip', '10', '2'),
(23, 10, 'PRC001-KAP', 'Paracetamol 500mg (Generic)', 13, 'Kaplet', '10', '3'),
(24, 11, 'OBH001-BTL', 'OBH Combi Batuk Flu', 4, 'Botol', '1', '1'),
(25, 12, 'RDX001-TBE', 'Redoxon Triple Action', 7, 'Tube', '1', '1'),
(26, 12, 'RDX001-TAB', 'Redoxon Triple Action', 3, 'Tablet', '10', '2'),
(27, 13, 'CDR001-TBE', 'CDR Effervescent', 7, 'Tube', '1', '1'),
(28, 13, 'CDR001-TAB', 'CDR Effervescent', 3, 'Tablet', '10', '2'),
(29, 14, 'INS001-BTL', 'Insto Regular Eye Drops', 4, 'Botol', '1', '1'),
(30, 15, 'DIA001-BOX', 'Diapet Kapsul', 1, 'Box', '1', '1'),
(31, 15, 'DIA001-STP', 'Diapet Kapsul', 2, 'Strip', '10', '2'),
(32, 15, 'DIA001-KAP', 'Diapet Kapsul', 13, 'Kaplet', '10', '3'),
(33, 16, 'NEU001-BOX', 'Neurobion Forte', 1, 'Box', '1', '1'),
(34, 16, 'NEU001-STP', 'Neurobion Forte', 2, 'Strip', '10', '2'),
(35, 16, 'NEU001-TAB', 'Neurobion Forte', 3, 'Tablet', '10', '3'),
(36, 17, 'SLP001-POT', 'Salep Kulit 88', 14, 'Pot', '1', '1'),
(37, 18, 'CNT001-TBE', 'Counterpain Cream', 7, 'Tube', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `apt_jenis_barang`
--

CREATE TABLE `apt_jenis_barang` (
  `id` int UNSIGNED NOT NULL,
  `nama_jenis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `apt_jenis_barang`
--

INSERT INTO `apt_jenis_barang` (`id`, `nama_jenis`) VALUES
(1, 'Obat Bebas'),
(2, 'Obat Bebas Terbatas'),
(3, 'Vitamin & Suplemen'),
(4, 'Herbal'),
(5, 'Perlengkapan Medis'),
(6, 'Obat Keras'),
(7, 'Alat Kesehatan'),
(8, 'Perawatan Diri');

-- --------------------------------------------------------

--
-- Table structure for table `apt_satuan_barang`
--

CREATE TABLE `apt_satuan_barang` (
  `id` int UNSIGNED NOT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `apt_satuan_barang`
--

INSERT INTO `apt_satuan_barang` (`id`, `nama_satuan`) VALUES
(1, 'Box'),
(2, 'Strip'),
(3, 'Tablet'),
(4, 'Botol'),
(5, 'Sachet'),
(6, 'Pcs'),
(7, 'Tube'),
(10, 'Blister'),
(13, 'Kaplet'),
(14, 'Pot');

-- --------------------------------------------------------

--
-- Table structure for table `apt_stok`
--

CREATE TABLE `apt_stok` (
  `id` int UNSIGNED NOT NULL,
  `id_barang` int UNSIGNED DEFAULT NULL,
  `id_barang_detail` int DEFAULT NULL,
  `stok` varchar(255) DEFAULT NULL,
  `harga_awal` varchar(255) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `laba` varchar(255) DEFAULT NULL,
  `kadaluarsa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `apt_stok`
--

INSERT INTO `apt_stok` (`id`, `id_barang`, `id_barang_detail`, `stok`, `harga_awal`, `harga_jual`, `laba`, `kadaluarsa`) VALUES
(1, 1, 1, '6', '27000', '30000', '3000', '2027-12-01'),
(2, 1, 2, '18', '9000', '10000', '1000', '2027-12-01'),
(3, 1, 3, '216', '750', '833', '83', '2027-12-01'),
(4, 2, 4, '3', '120000', '128000', '8000', '2028-02-01'),
(5, 2, 5, '30', '12000', '12800', '800', '2028-02-01'),
(6, 2, 6, '300', '1200', '1280', '80', '2028-02-01'),
(7, 3, 7, '14', '9500', '11000', '1500', '2027-11-01'),
(8, 3, 8, '28', '4750', '5500', '750', '2027-11-01'),
(9, 3, 9, '280', '475', '550', '75', '2027-11-01'),
(10, 4, 10, '5', '49000', '52000', '3000', '2026-10-01'),
(11, 4, 11, '60', '4083', '4333', '250', '2026-10-01'),
(12, 5, 12, '18', '6000', '7500', '1500', '2028-01-01'),
(13, 5, 13, '810', '133', '167', '34', '2028-01-01'),
(14, 6, 14, '4', '88000', '95000', '7000', '2027-08-01'),
(15, 6, 15, '40', '8800', '9500', '700', '2027-08-01'),
(16, 6, 16, '160', '2200', '2375', '175', '2027-08-01'),
(17, 7, 17, '5', '55000', '60000', '5000', '-'),
(18, 8, 18, '1', '35000', '38000', '3000', '-'),
(19, 8, 19, '100', '350', '380', '30', '-'),
(20, 9, 20, '0', '0', '0', '0', ''),
(21, 10, 21, '4', '18000', '22000', '4000', '2028-05-01'),
(22, 10, 22, '40', '1800', '2200', '400', '2028-05-01'),
(23, 10, 23, '400', '180', '220', '40', '2028-05-01'),
(24, 11, 24, '6', '17000', '19000', '2000', '2026-11-01'),
(25, 12, 25, '3', '45000', '49000', '4000', '2027-07-01'),
(26, 12, 26, '30', '4500', '4900', '400', '2027-07-01'),
(27, 13, 27, '4', '43000', '47000', '4000', '2027-01-01'),
(28, 13, 28, '40', '4300', '4700', '400', '2027-01-01'),
(29, 14, 29, '0', '0', '0', '0', ''),
(30, 15, 30, '2', '70000', '75000', '5000', '2027-06-01'),
(31, 15, 31, '20', '7000', '7500', '500', '2027-06-01'),
(32, 15, 32, '200', '700', '750', '50', '2027-06-01'),
(33, 16, 33, '1', '210000', '225000', '15000', '2027-09-01'),
(34, 16, 34, '10', '21000', '22500', '1500', '2027-09-01'),
(35, 16, 35, '100', '2100', '2250', '150', '2027-09-01'),
(36, 17, 36, '3', '14000', '16000', '2000', '-'),
(37, 18, 37, '0', '0', '0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `contoh`
--

CREATE TABLE `contoh` (
  `id` int NOT NULL,
  `contoh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contoh`
--

INSERT INTO `contoh` (`id`, `contoh`) VALUES
(5, 'xcvbnm'),
(8, 'sdfghjk');

-- --------------------------------------------------------

--
-- Table structure for table `contoh_multiple`
--

CREATE TABLE `contoh_multiple` (
  `id` int NOT NULL,
  `contoh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contoh_multiple`
--

INSERT INTO `contoh_multiple` (`id`, `contoh`) VALUES
(2, 'resep obat'),
(3, 'contoh ');

-- --------------------------------------------------------

--
-- Table structure for table `contoh_multiple_detail`
--

CREATE TABLE `contoh_multiple_detail` (
  `id` int NOT NULL,
  `id_contoh_multiple` varchar(255) DEFAULT NULL,
  `contoh_multiple` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contoh_multiple_detail`
--

INSERT INTO `contoh_multiple_detail` (`id`, `id_contoh_multiple`, `contoh_multiple`) VALUES
(2, '2', 'obat1'),
(3, '2', 'obat2'),
(4, '2', 'obat3'),
(5, '3', 'snbwuvuyv'),
(6, '3', 'f,nvwjbjhvh'),
(7, '3', 'f,mwjhwjhw');

-- --------------------------------------------------------

--
-- Table structure for table `kpg_dokter`
--

CREATE TABLE `kpg_dokter` (
  `id` int UNSIGNED NOT NULL,
  `id_pegawai` varchar(255) DEFAULT NULL,
  `nama_pegawai` varchar(255) DEFAULT NULL,
  `id_poli` int DEFAULT NULL,
  `nama_poli` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kpg_dokter`
--

INSERT INTO `kpg_dokter` (`id`, `id_pegawai`, `nama_pegawai`, `id_poli`, `nama_poli`) VALUES
(19, '3', 'yudistira ', 16, 'Poli Kecantikan'),
(33, '27', 'Robert', 16, 'Poli Kecantikan'),
(34, '28', 'Dr sutrisno ', 16, 'Poli Kecantikan'),
(35, '29', 'Dr wahyudi', 16, 'Poli Kecantikan'),
(39, '35', 'Dr khaqul', 16, 'Poli Kecantikan'),
(42, '38', 'Dr laras', 15, 'Poli Gigi'),
(46, '32', 'Dr Pandu Satria', 27, 'Poli Anak'),
(64, '26', 'Dr  Aditya', 27, 'Poli Anak'),
(66, '7', 'Dr Arif ', 14, 'Poli Umum'),
(76, '19', 'Dr Zakiprian', 15, 'Poli Gigi'),
(77, '56', 'Dr Yudistira', 16, 'Poli Kecantikan'),
(78, '8', 'Dr Yasa', 14, 'Poli Umum');

-- --------------------------------------------------------

--
-- Table structure for table `kpg_jabatan`
--

CREATE TABLE `kpg_jabatan` (
  `id` int NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kpg_jabatan`
--

INSERT INTO `kpg_jabatan` (`id`, `nama`) VALUES
(2, 'Pimpinan'),
(4, 'Karyawan'),
(5, 'Dokter');

-- --------------------------------------------------------

--
-- Table structure for table `kpg_pegawai`
--

CREATE TABLE `kpg_pegawai` (
  `id` int UNSIGNED NOT NULL,
  `id_jabatan` int DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `nama_jabatan` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kpg_pegawai`
--

INSERT INTO `kpg_pegawai` (`id`, `id_jabatan`, `nama`, `no_telp`, `nama_jabatan`, `alamat`) VALUES
(7, 5, 'Dr Arif ', '0813523622', 'Dokter', 'Jln bengawan solo'),
(8, 5, 'Dr Yasa', '0813563720', 'Dokter', 'Jln iptu jamari'),
(17, 5, 'Reihan', '082364425', 'Dokter', 'Jln mojosari'),
(19, 5, 'Dr Zakiprian', '0829857298', 'Dokter', 'Jln seruji timur no 19'),
(26, 5, 'Dr  Aditya', '08382756287', 'Dokter', 'Jln bengawan solo'),
(27, 5, 'Robert', '08774992826', 'Dokter', 'Jln bengawan solo'),
(28, 5, 'Dr Sutrisno ', '08638749590', 'Dokter', 'Jln tejung timur'),
(29, 5, 'Dr Wahyudi', '084947573920', 'Dokter', 'Jln Imam Suja\'i'),
(32, 5, 'Dr Pandu Satria', '08323598293', 'Dokter', 'Jln tekung timur'),
(35, 5, 'Dr Khaqul', '0837374980', 'Dokter', 'Jln kebonsari'),
(38, 5, 'Dr Laras', '0893719890', 'Dokter', 'Jln mayor kemari sampoerna'),
(50, 4, 'Qiqi Salamah', '087247283340', 'Karyawan', 'Jln kebonsari'),
(56, 5, 'Dr Yudistira', '08372874287', 'Dokter', 'Jln sastro');

-- --------------------------------------------------------

--
-- Table structure for table `mst_diagnosa`
--

CREATE TABLE `mst_diagnosa` (
  `id` int UNSIGNED NOT NULL,
  `nama_diagnosa` varchar(100) DEFAULT NULL,
  `id_poli` int DEFAULT NULL,
  `nama_poli` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_diagnosa`
--

INSERT INTO `mst_diagnosa` (`id`, `nama_diagnosa`, `id_poli`, `nama_poli`) VALUES
(6, 'Diare', 14, 'Poli Umum'),
(7, 'cacar air', 16, 'Poli Kecantikan'),
(8, 'jerawatan', 16, 'Poli Kecantikan'),
(16, 'kepanasan', 16, 'Poli Kecantikan'),
(32, 'sel kulit mati', 16, 'Poli Kecantikan'),
(33, 'kurangnya istirahat', 16, 'Poli Kecantikan'),
(65, 'kurang minum ', 16, 'Poli Kecantikan'),
(68, 'kurang tidur', 16, 'Poli Kecantikan'),
(69, 'kelelahan', 16, 'Poli Kecantikan'),
(70, 'mata panda', 16, 'Poli Kecantikan'),
(71, 'kulit kering', 16, 'Poli Kecantikan'),
(72, 'luka susah sembuh', 16, 'Poli Kecantikan'),
(73, 'kurang olahraga', 16, 'Poli Kecantikan'),
(74, 'di gigit hewan', 16, 'Poli Kecantikan'),
(75, 'test2', 16, 'Poli Kecantikan'),
(76, 'infeksi', 16, 'Poli Kecantikan'),
(77, 'infeksi kulit', 16, 'Poli Kecantikan');

-- --------------------------------------------------------

--
-- Table structure for table `mst_pasien`
--

CREATE TABLE `mst_pasien` (
  `id` int NOT NULL,
  `no_rm` varchar(255) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `status_perkawinan` varchar(255) NOT NULL,
  `nama_wali` varchar(255) NOT NULL,
  `golongan_darah` varchar(255) NOT NULL,
  `alergi` varchar(255) NOT NULL,
  `status_operasi` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_pasien`
--

INSERT INTO `mst_pasien` (`id`, `no_rm`, `nama_pasien`, `nik`, `jenis_kelamin`, `tanggal_lahir`, `umur`, `alamat`, `pekerjaan`, `no_telp`, `status_perkawinan`, `nama_wali`, `golongan_darah`, `alergi`, `status_operasi`, `username`, `password`) VALUES
(125, 'RM00001', 'Amelia', '3509988772631', 'Perempuan', '13-06-2007', '18', 'Jln Karang Bendo', 'Belum Ada', '08749282641', 'Belum Kawin', 'Testing1', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(126, 'RM00002', 'Lili', '3540099876098', 'Perempuan', '24-01-2006', '19', 'Jln Tempeh Kidul', 'Karyawan', '08774928430', 'Belum Kawin', 'Testing2', 'A', 'Tidak Ada', 'Belum Pernah', '', ''),
(127, 'RM00003', 'Yanti', '3508849392850', 'Perempuan', '18-07-2007', '18', 'Jln Bengawan Solo', 'Belum', '0847728849', 'Belum Kawin', 'Testing3', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(128, 'RM00004', 'Vera', '35647472890', 'Perempuan', '21-07-2004', '21', 'Jln Seruji Timur', 'Karyawan', '0857372759', 'Belum Kawin', 'Testing4', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(129, 'RM00005', 'Sasa', '350663773920', 'Perempuan', '21-07-1999', '26', 'Jln Suwandak Timur', 'Karyawan', '0849947380', 'Belum Kawin', 'Testing6', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(130, 'RM00006', 'Juli', '3503998820019', 'Perempuan', '27-10-2004', '20', 'Jln Wonorejo', 'Kuliah', '08477291830', 'Belum Kawin', 'Testing6', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(131, 'RM00007', 'Pia', '35077466184320', 'Perempuan', '23-11-2005', '19', 'Jln Tekung', 'Karyawan', '083779217320', 'Belum Kawin', 'Testing7', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(132, 'RM00008', 'Ria', '350667733890', 'Perempuan', '20-07-2005', '20', 'Jln Babakan', 'Karyawati', '08499277140', 'Belum Kawin', 'Testing7', 'AB', 'Tidak Ada ', 'Belum Pernah', '', ''),
(133, 'RM00009', 'Rinta', '3506996486940', 'Perempuan', '17-11-2005', '19', 'Jln Mayor Kamari Sampoerna', 'Belum', '089947756264', 'Belum Kawin', 'Testing8', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(134, 'RM00010', 'Kiki', '35093848294830', 'Perempuan', '13-10-1999', '25', 'Jln Wonorejo', 'Karyawati', '087392834810', 'Belum Kawin', 'Testing8', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(135, 'RM00011', 'Lala', '350778899250', 'Perempuan', '20-07-2005', '20', 'Jln Seruji Timur', 'Karyawati', '0847278358380', 'Belum Kawin', 'Testing7', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(136, 'RM00012', 'Manda', '3509948385740', 'Perempuan', '23-06-2004', '21', 'Jln Musi ', 'Karyawati', '08472747940', 'Belum Kawin', 'Testing8', 'A', 'Tidak Ada', 'Belum Pernah', '', ''),
(137, 'RM00013', 'Lilith', '35098384737', 'Perempuan', '13-07-2005', '20', 'Jln Kebonsari', 'Karywati', '0813394940', 'Belum Kawin', 'Testing8', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(138, 'RM00014', 'Izzah', '35088696890', 'Perempuan', '22-06-2005', '20', 'Jln Grati', 'Karyawati', '089947757380', 'Belum Kawin', 'Testing8', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(139, 'RM00015', 'Faiqatul ', '35600939478479', 'Perempuan', '23-06-2004', '21', 'Jln Suwandak Timur ', 'Karyawati', '0877364637467', 'Belum Kawin', 'Testing9', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(140, 'RM00016', 'Nia', '35049859483998', 'Perempuan', '13-07-2005', '20', 'Jln Karangbendo', 'Pengusaha', '08947437480', 'Belum Kawin', 'Testing10', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(141, 'RM00017', 'Nunung', '356094839347', 'Perempuan', '24-11-2005', '19', 'Jln Bandung', 'Karyawati', '08326487260', 'Belum Kawin', 'Testing9', 'A', 'Tidak Ada', 'Belum Permah', '', ''),
(142, 'RM00018', 'Tita Mo', '350948398320', 'Perempuan', '17-10-2007', '17', 'Jln Randuagung', 'Siswi', '08394849290', 'Belum Kawin', 'Testing10', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(143, 'RM00019', 'Cia', '350885994739', 'Perempuan', '24-11-2004', '20', 'Jln Bengawan Solo', 'Karyawati', '0837378309', 'Belum Kawin', 'Testing11', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(144, 'RM00020', 'Nesy', '350938493892', 'Perempuan', '30-11-2005', '19', 'Jln Bengawan Solo', 'Karyawati', '0823739201', 'Belum Kawin', 'Testing12', 'B', 'Tidak Ada', 'Belum Pernah', '', ''),
(147, 'RM00022', 'Cahya ', '350329430190', 'Perempuan', '02-12-2005', '19', 'Jln Kebonsari', 'Karyawati', '0832592909', 'Belum Kawin', 'Testing1', 'A', 'Tidak Ada', 'Belum Pernah', '', ''),
(148, 'RM00023', 'Sendy', '320329420359', 'Perempuan', '26-11-2009', '15', 'Jln Kepuharjo', 'Karyswati', '08239582049', 'Belum Kawin', 'Testing1', 'A', 'Tidak Ada', 'Belum Pernah', '', ''),
(150, 'RM00024', 'Nilam', '35030289893798', 'Perempuan', '02-12-2004', '20', 'Jln Ghozali', 'Karyawati', '08298192371', 'Belum Kawin', 'Testing2', 'A', 'Tidak Ada', 'Belum Pernah', '', ''),
(153, 'RM00025', 'Coca', '30285208390289', 'Perempuan', '30-11-2005', '19', 'Rejbejbejhhj', 'Kjnkerjhejheb', '08392897298', 'Kawin', 'Jhderjrjhewjh', 'B', 'Erkjerkberjh', 'Kjbrkrhbwjh', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mst_poli`
--

CREATE TABLE `mst_poli` (
  `id` int UNSIGNED NOT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_poli`
--

INSERT INTO `mst_poli` (`id`, `kode`, `nama`) VALUES
(14, 'POU', 'Poli Umum'),
(15, 'POG', 'Poli Gigi'),
(16, 'POKC', 'Poli Kecantikan'),
(27, 'POA', 'Poli Anak');

-- --------------------------------------------------------

--
-- Table structure for table `mst_tindakan`
--

CREATE TABLE `mst_tindakan` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` varchar(100) DEFAULT NULL,
  `id_poli` int DEFAULT NULL,
  `nama_poli` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_tindakan`
--

INSERT INTO `mst_tindakan` (`id`, `nama`, `harga`, `id_poli`, `nama_poli`) VALUES
(17, 'perawatan kulit', '100,000', 16, 'Poli Kecantikan'),
(18, 'Periksa gigi', '50,000', 15, 'Poli Gigi'),
(19, 'Periksa rutin', '20,000', 14, 'Poli Umum'),
(32, 'Luka', '3000', 27, 'Poli Anak'),
(33, 'Facial', '200,000', 16, 'Poli Kecantikan'),
(45, 'mengihlangkan sel mati', '20,000', 16, 'Poli Kecantikan'),
(46, 'memutihkan kulit', '100,000', 16, 'Poli Kecantikan'),
(86, 'mengencangkan kulit', '500,000', 16, 'Poli Kecantikan'),
(89, 'melenturkan otot', '500,000', 16, 'Poli Kecantikan'),
(90, 'melembabkan kulit', '500,000', 16, 'Poli Kecantikan'),
(91, 'pijat', '100,000', 16, 'Poli Kecantikan'),
(92, 'tes saja', '12,300', 16, 'Poli Kecantikan'),
(93, 'penyembuhan luka kulit', '1000007', 16, 'Poli Kecantikan'),
(94, 'test2', '1,000,000', 16, 'Poli Kecantikan'),
(95, 'operasi', '1,000,000', 16, 'Poli Kecantikan'),
(96, 'Operasi kulit', '5005009', 16, 'Poli Kecantikan'),
(104, 'mengurangi kulit berlebih', '5000000', 16, 'Poli Kecantikan');

-- --------------------------------------------------------

--
-- Table structure for table `pol_anak`
--

CREATE TABLE `pol_anak` (
  `id` int UNSIGNED NOT NULL,
  `kode_invoice` varchar(225) DEFAULT NULL,
  `id_pasien` int DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama_pasien` varchar(225) DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `nama_dokter` varchar(225) DEFAULT NULL,
  `keluhan` varchar(225) DEFAULT NULL,
  `berat_badan` varchar(225) DEFAULT NULL,
  `tinggi_badan` varchar(225) DEFAULT NULL,
  `suhu` varchar(225) DEFAULT NULL,
  `status_imunisasi` varchar(225) DEFAULT NULL,
  `catatan` varchar(225) DEFAULT NULL,
  `tanggal` varchar(225) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pol_anak_diagnosa`
--

CREATE TABLE `pol_anak_diagnosa` (
  `id` int UNSIGNED NOT NULL,
  `id_rm_anak` int DEFAULT NULL,
  `id_diagnosa` int DEFAULT NULL,
  `diagnosa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pol_anak_tindakan`
--

CREATE TABLE `pol_anak_tindakan` (
  `id` int UNSIGNED NOT NULL,
  `id_pol_anak` int DEFAULT NULL,
  `id_tindakan` int DEFAULT NULL,
  `tindakan` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pol_gigi`
--

CREATE TABLE `pol_gigi` (
  `id` int UNSIGNED NOT NULL,
  `kode_invoice` varchar(225) DEFAULT NULL,
  `id_pasien` int DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama_pasien` varchar(225) DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `nama_dokter` varchar(225) DEFAULT NULL,
  `keluhan` varchar(225) DEFAULT NULL,
  `catatan` varchar(225) DEFAULT NULL,
  `tanggal` varchar(225) DEFAULT NULL,
  `waktu` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pol_gigi_diagnosa`
--

CREATE TABLE `pol_gigi_diagnosa` (
  `id` int UNSIGNED NOT NULL,
  `id_pol_gigi` int DEFAULT NULL,
  `id_diagnosa` int DEFAULT NULL,
  `diagnosa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pol_gigi_tindakan`
--

CREATE TABLE `pol_gigi_tindakan` (
  `id` int UNSIGNED NOT NULL,
  `id_pol_gigi` int DEFAULT NULL,
  `id_tindakan` int DEFAULT NULL,
  `tindakan` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pol_kecantikan`
--

CREATE TABLE `pol_kecantikan` (
  `id` int UNSIGNED NOT NULL,
  `kode_invoice` varchar(225) DEFAULT NULL,
  `id_pasien` int DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama_pasien` varchar(225) DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `nama_dokter` varchar(225) DEFAULT NULL,
  `keluhan` varchar(225) DEFAULT NULL,
  `jenis_treatment` varchar(225) DEFAULT NULL,
  `riwayat_alergi` varchar(225) DEFAULT NULL,
  `produk_digunakan` varchar(225) DEFAULT NULL,
  `hasil_perawatan` varchar(225) DEFAULT NULL,
  `tanggal` varchar(225) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pol_kecantikan`
--

INSERT INTO `pol_kecantikan` (`id`, `kode_invoice`, `id_pasien`, `nik`, `nama_pasien`, `id_dokter`, `nama_dokter`, `keluhan`, `jenis_treatment`, `riwayat_alergi`, `produk_digunakan`, `hasil_perawatan`, `tanggal`, `waktu`) VALUES
(83, 'KI30082025-001', 144, '350938493892', 'Nesy', 35, 'Dr khaqul', 'kulit memerah', 'lulur', 'Tidak Ada', 'lotion', 'pertama', '30-08-2025', '09:37:46'),
(86, 'Ki30082025-006', 130, '3503998820019', 'Juli', 35, 'Dr khaqul', NULL, NULL, 'Tidak Ada', NULL, NULL, '30-08-2025', '13:43:33'),
(87, 'Ki30082025-006', 138, '35088696890', 'Izzah', 35, 'Dr khaqul', NULL, NULL, 'Tidak Ada', NULL, NULL, '30-08-2025', '13:58:46'),
(88, 'Ki30082025-005', 133, '3506996486940', 'Rinta', 35, 'Dr khaqul', 'Kulit memerah', 'lulur', 'Tidak Ada', 'skincare', 'pertama', '30-08-2025', '14:10:04'),
(89, 'Ki01092025-002', 147, '350329430190', 'Cahya ', 29, 'Dr wahyudi', 'kulit memerah', 'lulur', 'Tidak Ada', 'skincare', 'pertama', '01-09-2025', '15:53:50'),
(90, 'KI16092025-001', 138, '35088696890', 'Izzah', 3, 'yudistira ', 'tidak ada', 'lulur', 'Tidak Ada', 'lotion dan skincare', 'pertama', '16-09-2025', '09:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `pol_kecantikan_detail`
--

CREATE TABLE `pol_kecantikan_detail` (
  `id` int UNSIGNED NOT NULL,
  `id_pol_kecantikan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pol_kecantikan_detail`
--

INSERT INTO `pol_kecantikan_detail` (`id`, `id_pol_kecantikan`, `status`, `foto`) VALUES
(69, '83', 'Sebelum', 'KI30082025-001(Sebelum).png'),
(70, '88', 'Sebelum', 'Ki30082025-005(Sebelum).png'),
(71, '89', 'Sebelum', 'Ki01092025-002(Sebelum).png'),
(72, '90', 'Sebelum', 'KI16092025-001(Sebelum).png');

-- --------------------------------------------------------

--
-- Table structure for table `pol_kecantikan_diagnosa`
--

CREATE TABLE `pol_kecantikan_diagnosa` (
  `id` int UNSIGNED NOT NULL,
  `id_pol_kecantikan` int DEFAULT NULL,
  `id_diagnosa` int DEFAULT NULL,
  `diagnosa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pol_kecantikan_diagnosa`
--

INSERT INTO `pol_kecantikan_diagnosa` (`id`, `id_pol_kecantikan`, `id_diagnosa`, `diagnosa`) VALUES
(290, 83, 77, 'infeksi kulit'),
(291, 83, 74, 'di gigit hewan'),
(292, 83, 16, 'kepanasan'),
(293, 88, 77, 'infeksi kulit'),
(294, 88, 74, 'di gigit hewan'),
(295, 89, 77, 'infeksi kulit'),
(296, 89, 74, 'di gigit hewan'),
(297, 90, 74, 'di gigit hewan');

-- --------------------------------------------------------

--
-- Table structure for table `pol_kecantikan_tindakan`
--

CREATE TABLE `pol_kecantikan_tindakan` (
  `id` int UNSIGNED NOT NULL,
  `id_rm_kecantikan` int DEFAULT NULL,
  `id_tindakan` int DEFAULT NULL,
  `tindakan` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pol_kecantikan_tindakan`
--

INSERT INTO `pol_kecantikan_tindakan` (`id`, `id_rm_kecantikan`, `id_tindakan`, `tindakan`, `harga`) VALUES
(259, 83, 104, 'mengurangi kulit berlebih', '5000000'),
(260, 83, 96, 'Operasi kulit', '5005009'),
(261, 83, 92, 'tes saja', '12300'),
(262, 88, 104, 'mengurangi kulit berlebih', '5000000'),
(263, 88, 45, 'mengihlangkan sel mati', '20000'),
(264, 89, 104, 'mengurangi kulit berlebih', '5000000'),
(265, 89, 91, 'pijat', '100000'),
(266, 90, 104, 'mengurangi kulit berlebih', '5000000'),
(267, 90, 90, 'melembabkan kulit', '500000');

-- --------------------------------------------------------

--
-- Table structure for table `pol_resep`
--

CREATE TABLE `pol_resep` (
  `id` int UNSIGNED NOT NULL,
  `kode_invoice` varchar(255) DEFAULT NULL,
  `kode_resep` varchar(100) DEFAULT NULL,
  `id_pasien` int DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama_pasien` varchar(255) DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `total_harga` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `nama_dokter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pol_resep`
--

INSERT INTO `pol_resep` (`id`, `kode_invoice`, `kode_resep`, `id_pasien`, `nik`, `nama_pasien`, `id_dokter`, `total_harga`, `tanggal`, `waktu`, `nama_dokter`) VALUES
(54, 'KI30082025-001', 'RSP-001', 144, '350938493892', 'Nesy', 35, '518000', '30-08-2025', '10:29:17', 'Dr khaqul'),
(55, 'Ki30082025-005', 'RSP-002', 133, '3506996486940', 'Rinta', 35, '360000', '30-08-2025', '14:13:48', 'Dr khaqul'),
(56, 'Ki01092025-002', 'RSP-003', 147, '350329430190', 'Cahya ', 29, '1101000', '02-09-2025', '14:10:37', 'Dr wahyudi'),
(57, 'KI16092025-001', 'RSP-004', 138, '35088696890', 'Izzah', 3, '175000', '16-09-2025', '10:10:57', 'yudistira ');

-- --------------------------------------------------------

--
-- Table structure for table `pol_resep_obat`
--

CREATE TABLE `pol_resep_obat` (
  `id` int UNSIGNED NOT NULL,
  `id_pol_resep` int DEFAULT NULL,
  `id_barang` int DEFAULT NULL,
  `id_barang_detail` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_satuan_barang` varchar(255) DEFAULT NULL,
  `satuan_barang` varchar(255) DEFAULT NULL,
  `urutan_satuan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `aturan_pakai` varchar(255) DEFAULT NULL,
  `sub_total_harga` varchar(255) DEFAULT NULL,
  `laba` varchar(255) DEFAULT NULL,
  `sub_total_laba` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pol_resep_obat`
--

INSERT INTO `pol_resep_obat` (`id`, `id_pol_resep`, `id_barang`, `id_barang_detail`, `nama_barang`, `id_satuan_barang`, `satuan_barang`, `urutan_satuan`, `jumlah`, `harga`, `aturan_pakai`, `sub_total_harga`, `laba`, `sub_total_laba`) VALUES
(80, 54, 16, '33', 'Neurobion Forte', '1', 'Box', '1', '2', '210000', '1x sehari', '420000', '15000', '30000'),
(81, 55, 2, '4', 'Panadol Biru', '1', 'Box', '1', '2', '120000', '1x sehari', '240000', '8000', '16000'),
(82, 56, 2, '4', 'Panadol Biru', '1', 'Box', '1', '2', '120000', '1x sehari', '240000', '8000', '16000'),
(83, 56, 16, '33', 'Neurobion Forte', '1', 'Box', '1', '3', '210000', '2x sehari', '630000', '15000', '45000'),
(84, 57, 1, '1', 'Promag Tablet', '1', 'Box', '1', '2', '27000', '1x sebelum makan', '54000', '3000', '6000'),
(85, 57, 3, '7', 'Bodrex', '1', 'Box', '1', '1', '9500', '1x dalam seminggu', '9500', '1500', '1500');

-- --------------------------------------------------------

--
-- Table structure for table `pol_resep_racikan`
--

CREATE TABLE `pol_resep_racikan` (
  `id` int UNSIGNED NOT NULL,
  `id_pol_resep` int DEFAULT NULL,
  `nama_racikan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `sub_total_harga` varchar(255) DEFAULT NULL,
  `laba` varchar(255) DEFAULT NULL,
  `sub_total_laba` varchar(255) DEFAULT NULL,
  `aturan_pakai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pol_resep_racikan`
--

INSERT INTO `pol_resep_racikan` (`id`, `id_pol_resep`, `nama_racikan`, `jumlah`, `keterangan`, `harga`, `sub_total_harga`, `laba`, `sub_total_laba`, `aturan_pakai`) VALUES
(45, 54, 'racikan 1', '2', 'sesudah makan', '61000', '122000', '7000', '14000', '1 kali sehari'),
(46, 55, 'Racikan1', '5', 'dilarang berlebihan', '98000', '490000', '6000', '30000', '2x sehari '),
(47, 56, 'racikan1', '5', 'sebelum tidur', '152000', '760000', '18000', '90000', '2 x sehari'),
(48, 57, 'racikan1', '1', 'setelah makan', '98000', '98000', '6000', '6000', '1x sehari');

-- --------------------------------------------------------

--
-- Table structure for table `pol_resep_racikan_detail`
--

CREATE TABLE `pol_resep_racikan_detail` (
  `id` int UNSIGNED NOT NULL,
  `id_pol_resep_racikan` int DEFAULT NULL,
  `id_barang` int DEFAULT NULL,
  `id_barang_detail` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_satuan_barang` varchar(255) DEFAULT NULL,
  `satuan_barang` varchar(255) DEFAULT NULL,
  `urutan_satuan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `sub_total_harga` varchar(255) DEFAULT NULL,
  `laba` varchar(255) DEFAULT NULL,
  `sub_total_laba` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pol_resep_racikan_detail`
--

INSERT INTO `pol_resep_racikan_detail` (`id`, `id_pol_resep_racikan`, `id_barang`, `id_barang_detail`, `nama_barang`, `id_satuan_barang`, `satuan_barang`, `urutan_satuan`, `jumlah`, `harga`, `sub_total_harga`, `laba`, `sub_total_laba`) VALUES
(98, 45, 11, '24', 'OBH Combi Batuk Flu', '4', 'Botol', '1', '2', '17000', '34000', '2000', '4000'),
(99, 45, 1, '1', 'Promag Tablet', '1', 'Box', '1', '1', '27000', '27000', '3000', '3000'),
(100, 46, 4, '10', 'Tolak Angin Cair', '1', 'Box', '1', '2', '49000', '98000', '3000', '6000'),
(101, 47, 4, '10', 'Tolak Angin Cair', '1', 'Box', '1', '2', '49000', '98000', '3000', '6000'),
(102, 47, 10, '21', 'Paracetamol 500mg (Generic)', '1', 'Box', '1', '3', '18000', '54000', '4000', '12000'),
(103, 48, 4, '10', 'Tolak Angin Cair', '1', 'Box', '1', '2', '49000', '98000', '3000', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `pol_umum`
--

CREATE TABLE `pol_umum` (
  `id` int UNSIGNED NOT NULL,
  `kode_invoice` varchar(225) DEFAULT NULL,
  `id_pasien` int DEFAULT NULL,
  `nik` varchar(225) DEFAULT NULL,
  `nama_pasien` varchar(255) DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `nama_dokter` varchar(225) DEFAULT NULL,
  `keluhan` varchar(225) DEFAULT NULL,
  `tekanan_darah` varchar(225) DEFAULT NULL,
  `suhu` varchar(225) DEFAULT NULL,
  `nadi` varchar(225) DEFAULT NULL,
  `catatan` varchar(225) DEFAULT NULL,
  `tanggal` varchar(225) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pol_umum_diagnosa`
--

CREATE TABLE `pol_umum_diagnosa` (
  `id` int UNSIGNED NOT NULL,
  `id_pol_umum` int DEFAULT NULL,
  `id_diagnosa` int DEFAULT NULL,
  `diagnosa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pol_umum_tindakan`
--

CREATE TABLE `pol_umum_tindakan` (
  `id` int UNSIGNED NOT NULL,
  `id_pol_umum` int DEFAULT NULL,
  `id_tindakan` int DEFAULT NULL,
  `tindakan` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rsp_antrian`
--

CREATE TABLE `rsp_antrian` (
  `id` int UNSIGNED NOT NULL,
  `kode_invoice` varchar(255) DEFAULT NULL,
  `no_antrian` varchar(50) DEFAULT NULL,
  `id_poli` int DEFAULT NULL,
  `nama_poli` varchar(255) DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `tanggal_antri` varchar(255) DEFAULT NULL,
  `waktu_antri` varchar(255) DEFAULT NULL,
  `tanggal_dipanggil` varchar(255) DEFAULT NULL,
  `waktu_dipanggil` varchar(255) DEFAULT NULL,
  `lama_menunggu` varchar(255) DEFAULT NULL,
  `status_antrian` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rsp_antrian`
--

INSERT INTO `rsp_antrian` (`id`, `kode_invoice`, `no_antrian`, `id_poli`, `nama_poli`, `id_dokter`, `tanggal_antri`, `waktu_antri`, `tanggal_dipanggil`, `waktu_dipanggil`, `lama_menunggu`, `status_antrian`, `tanggal`, `waktu`) VALUES
(190, 'KI29082025-001', 'POG-001', 15, 'Gigi', 19, '29-08-2025', '14:50:26', '29-08-2025', '15:10:04', '00:19:38', 'Konfirmasi', '29-08-2025', '15:10:04'),
(191, 'KI30082025-001', 'POKC-001', 16, 'Kecantikan', 35, '30-08-2025', '09:27:12', '30-08-2025', '09:37:43', '00:10:31', 'Konfirmasi', '30-08-2025', '09:37:43'),
(193, 'Ki30082025-003', 'POU-001', 14, 'Umum', 8, '30-08-2025', '13:06:50', '30-08-2025', '13:11:53', '00:05:03', 'Konfirmasi', '30-08-2025', '13:11:53'),
(194, 'Ki30082025-004', 'POU-002', 14, 'Umum', 8, '30-08-2025', '13:20:37', '30-08-2025', '13:20:49', '00:00:12', 'Konfirmasi', '30-08-2025', '13:20:49'),
(204, 'Ki30082025-005', 'POKC-002', 16, 'Kecantikan', 35, '30-08-2025', '14:09:48', '30-08-2025', '14:10:01', '00:00:13', 'Konfirmasi', '30-08-2025', '14:10:01'),
(205, 'Ki30082025-006', 'POU-003', 14, 'Umum', 8, '30-08-2025', '14:10:36', '30-08-2025', '14:10:45', '00:00:09', 'Konfirmasi', '30-08-2025', '14:10:45'),
(209, 'KI01092025-001', 'POU-001', 14, 'Umum', 7, '01-09-2025', '13:35:21', NULL, NULL, NULL, 'Menunggu', '01-09-2025', '13:35:21'),
(211, 'Ki01092025-002', 'POKC-001', 16, 'Kecantikan', 29, '01-09-2025', '14:02:16', '01-09-2025', '15:53:33', '01:51:17', 'Konfirmasi', '01-09-2025', '15:53:33'),
(212, 'Ki01092025-003', 'POA-001', 27, 'Anak', 32, '01-09-2025', '14:24:15', '02-09-2025', '08:59:30', '18:35:15', 'Konfirmasi', '02-09-2025', '08:59:30'),
(213, 'Ki01092025-004', 'POKC-002', 16, 'Kecantikan', 29, '01-09-2025', '14:44:47', NULL, NULL, NULL, 'Menunggu', '01-09-2025', '14:44:47'),
(214, 'Ki01092025-005', 'POU-002', 14, 'Umum', 7, '01-09-2025', '15:22:30', '02-09-2025', '09:07:49', '17:45:19', 'Konfirmasi', '02-09-2025', '09:07:49'),
(215, 'KI02092025-001', 'POU-001', 14, 'Umum', 8, '02-09-2025', '08:40:04', '02-09-2025', '09:08:30', '00:28:26', 'Konfirmasi', '02-09-2025', '09:08:30'),
(216, 'Ki02092025-002', 'POA-001', 27, 'Anak', 26, '02-09-2025', '09:18:28', '02-09-2025', '09:19:26', '00:00:58', 'Konfirmasi', '02-09-2025', '09:19:26'),
(217, 'Ki02092025-003', 'POG-001', 15, 'Gigi', 38, '02-09-2025', '09:28:57', '02-09-2025', '09:30:01', '00:01:04', 'Konfirmasi', '02-09-2025', '09:30:01'),
(218, 'Ki02092025-004', 'POG-002', 15, 'Gigi', 38, '02-09-2025', '10:16:56', '02-09-2025', '10:45:10', '00:28:14', 'Dipanggil', '02-09-2025', '10:45:10'),
(219, 'Ki02092025-005', 'POU-002', 14, 'Umum', 8, '02-09-2025', '11:16:25', NULL, NULL, NULL, 'Menunggu', '02-09-2025', '11:16:25'),
(223, 'KI16092025-001', 'POKC-001', 16, 'Poli Kecantikan', 3, '16-09-2025', '09:23:42', '16-09-2025', '09:23:47', '00:00:05', 'Konfirmasi', '16-09-2025', '09:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `rsp_booking`
--

CREATE TABLE `rsp_booking` (
  `id` int UNSIGNED NOT NULL,
  `id_pasien` int DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama_pasien` varchar(255) DEFAULT NULL,
  `id_poli` int DEFAULT NULL,
  `nama_poli` varchar(255) DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `nama_dokter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `kode_booking` varchar(255) DEFAULT NULL,
  `tanggal_booking` varchar(255) DEFAULT NULL,
  `waktu_booking` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `status_booking` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rsp_booking`
--

INSERT INTO `rsp_booking` (`id`, `id_pasien`, `nik`, `nama_pasien`, `id_poli`, `nama_poli`, `id_dokter`, `nama_dokter`, `kode_booking`, `tanggal_booking`, `waktu_booking`, `tanggal`, `waktu`, `status_booking`) VALUES
(144, 125, '3509988772631', 'Amelia', 15, 'Poli Gigi', 19, 'Dr Zakiprian', 'KB29082025-001', '29-08-2025', '14:50', '29-08-2025', '12:00', 'Disetujui'),
(146, 140, '35049859483998', 'Nia', 16, 'Poli Kecantikan', 35, 'Dr khaqul', 'KB30082025-002', '30-08-2025', '12:56', '30-08-2025', '13:00', 'Disetujui'),
(148, 131, '35077466184320', 'Pia', 14, 'Poli Umum', 7, 'Dr Arif ', 'KB08092025-001', '08-09-2025', '12:45', '08-09-2025', '13:00', 'Disetujui'),
(152, 144, '350938493892', 'Nesy', 14, 'Poli Umum', 7, 'Dr Arif ', 'KB16092025-001', '16-09-2025', '14:27', '17-09-2025', '12:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `rsp_jadwal_dokter`
--

CREATE TABLE `rsp_jadwal_dokter` (
  `id` int UNSIGNED NOT NULL,
  `id_pegawai` int DEFAULT NULL,
  `nama_pegawai` varchar(150) DEFAULT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `jam_mulai` varchar(50) DEFAULT NULL,
  `jam_selesai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rsp_jadwal_dokter`
--

INSERT INTO `rsp_jadwal_dokter` (`id`, `id_pegawai`, `nama_pegawai`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(53, 17, 'Reihan', 'Senin', '18:33', '22:33'),
(54, 17, 'Reihan', 'Selasa', '21:33', '23:33'),
(66, 19, 'Dr Zakiprian', 'Jumat', '10:01:00', '15:01:00'),
(74, 7, 'Dr Arif ', 'Senin', '07:50:59', '15:51:04'),
(75, 19, 'Dr Zakiprian', 'Senin', '17:05:50', '20:05:57'),
(77, 28, 'Dr sutrisno ', 'Kamis', '08:00:00', '15:00:00'),
(78, 29, 'Dr wahyudi', 'Kamis', '12:30:00', '15:00:00'),
(79, 29, 'Dr wahyudi', 'Jumat', '08:00:00', '15:00:00'),
(82, 35, 'Dr khaqul', 'Sabtu', '09:00:00', '15:15:30'),
(83, 35, 'Dr khaqul', 'Minggu', '09:00:00', '15:15:30'),
(84, 29, 'Dr wahyudi', 'Senin', '08:00:00', '15:27:00'),
(85, 28, 'Dr sutrisno ', 'Rabu', '08:00:00', '15:00:00'),
(88, 38, 'Dr laras', 'Selasa', '08:00:00', '15:00:00'),
(89, 38, 'Dr laras', 'Jumat', '08:00:00', '12:00:00'),
(90, 7, 'Dr Arif ', 'Rabu', '08:00:00', '15:00:00'),
(94, 32, 'Dr Pandu Satria', 'Senin', '08:00:00', '15:00:00'),
(100, 26, 'Dr  Aditya', 'Selasa', '08:00:00', '15:00:00'),
(101, 26, 'Dr  Aditya', 'Jumat', '08:00:00', '12:00:00'),
(102, 26, 'Dr  Aditya', 'Sabtu', '08:00:00', '12:00:00'),
(103, 32, 'Dr Pandu Satria', 'Minggu', '08:00:00', '15:00:00'),
(104, 8, 'Dr Yasa', 'Selasa', '08:00:00', '15:00:00'),
(105, 8, 'Dr Yasa', 'Sabtu', '08:00:00', '15:00:00'),
(117, 56, 'Dr Yudistira', 'Selasa', '08:00:00', '16:00:00'),
(118, 56, 'Dr Yudistira', 'Jumat', '08:00:00', '11:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `rsp_jenis_biaya`
--

CREATE TABLE `rsp_jenis_biaya` (
  `id` int NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rsp_jenis_biaya`
--

INSERT INTO `rsp_jenis_biaya` (`id`, `nama`) VALUES
(4, 'Gaji karyawan'),
(6, 'Biaya internet'),
(7, 'Biaya listrik & air'),
(8, 'Biaya sewa gedung');

-- --------------------------------------------------------

--
-- Table structure for table `rsp_pemasukan`
--

CREATE TABLE `rsp_pemasukan` (
  `id` int NOT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `id_jenis_biaya` varchar(255) DEFAULT NULL,
  `nama_jenis_biaya` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `nominal` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rsp_pemasukan`
--

INSERT INTO `rsp_pemasukan` (`id`, `id_user`, `nama_user`, `id_jenis_biaya`, `nama_jenis_biaya`, `keterangan`, `nominal`, `tanggal`, `waktu`) VALUES
(9, NULL, NULL, '6', 'Biaya internet', 'Pln\r\n', '3393333', '03-09-2025', '08:43:32'),
(13, NULL, NULL, '8', 'Biaya sewa gedung', 'Wefewewew', '1000000', '23-09-2025', '13:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `rsp_pembayaran`
--

CREATE TABLE `rsp_pembayaran` (
  `id` int NOT NULL,
  `kode_invoice` varchar(255) DEFAULT NULL,
  `id_pasien` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama_pasien` varchar(255) DEFAULT NULL,
  `id_dokter` varchar(255) DEFAULT NULL,
  `nama_dokter` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `biaya_tindakan` varchar(255) DEFAULT NULL,
  `biaya_resep` varchar(255) DEFAULT NULL,
  `total_invoice` varchar(255) DEFAULT NULL,
  `metode_pembayaran` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bayar` varchar(255) DEFAULT NULL,
  `kembali` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rsp_pembayaran`
--

INSERT INTO `rsp_pembayaran` (`id`, `kode_invoice`, `id_pasien`, `nik`, `nama_pasien`, `id_dokter`, `nama_dokter`, `id_user`, `nama_user`, `biaya_tindakan`, `biaya_resep`, `total_invoice`, `metode_pembayaran`, `bank`, `bayar`, `kembali`, `tanggal`, `waktu`) VALUES
(22, 'KI30082025-001', '144', '350938493892', 'Nesy', '35', 'Dr khaqul', NULL, NULL, '10017309', '518000', '10535309', 'Cash', '', '10020000', '2691', '30-08-2025', '14:40:35'),
(23, 'Ki30082025-005', '133', '3506996486940', 'Rinta', '35', 'Dr khaqul', NULL, NULL, '5020000', '360000', '5380000', 'Transfer', 'BRI', '5020000', '0', '01-09-2025', '15:51:43'),
(24, 'Ki01092025-002', '147', '350329430190', 'Cahya ', '29', 'Dr wahyudi', NULL, NULL, '5100000', '1101000', '6201000', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'KI16092025-001', '138', '35088696890', 'Izzah', '3', 'yudistira ', NULL, NULL, '5500000', '175000', '5675000', 'Cash', '', '5600000', '100000', '16-09-2025', '10:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `rsp_pengeluaran`
--

CREATE TABLE `rsp_pengeluaran` (
  `id` int NOT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `id_jenis_biaya` varchar(255) DEFAULT NULL,
  `nama_jenis_biaya` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `nominal` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rsp_pengeluaran`
--

INSERT INTO `rsp_pengeluaran` (`id`, `id_user`, `nama_user`, `id_jenis_biaya`, `nama_jenis_biaya`, `keterangan`, `nominal`, `tanggal`, `waktu`) VALUES
(2, NULL, NULL, '6', 'Biaya internet', 'Wifi 1 bulan', '500000', '30-08-2025', '14:36:41'),
(3, NULL, NULL, '4', 'Gaji karyawan', 'Gaji karyawan selama 1 bulan', '4000000', '02-09-2025', '14:57:45'),
(4, NULL, NULL, '7', 'Biaya listrik & air', 'Untuk pasokan air dan listrik', '5000000', '02-09-2025', '15:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `rsp_registrasi`
--

CREATE TABLE `rsp_registrasi` (
  `id` int UNSIGNED NOT NULL,
  `kode_invoice` varchar(255) DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `nama_dokter` varchar(255) NOT NULL,
  `id_poli` int DEFAULT NULL,
  `nama_poli` varchar(255) NOT NULL,
  `id_pasien` int DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama_pasien` varchar(255) DEFAULT NULL,
  `tanggal` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `status_registrasi` varchar(50) DEFAULT NULL,
  `id_booking` int DEFAULT NULL,
  `kode_booking` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rsp_registrasi`
--

INSERT INTO `rsp_registrasi` (`id`, `kode_invoice`, `id_dokter`, `nama_dokter`, `id_poli`, `nama_poli`, `id_pasien`, `nik`, `nama_pasien`, `tanggal`, `waktu`, `status_registrasi`, `id_booking`, `kode_booking`) VALUES
(274, 'KI29082025-001', 19, 'Dr Zakiprian', 15, 'Poli Gigi', 125, '3509988772631', 'Amelia', '29-08-2025', '14:50:26', 'Sukses', NULL, NULL),
(275, 'KI30082025-001', 35, 'Dr khaqul', 16, 'Poli Kecantikan', 144, '350938493892', 'Nesy', '30-08-2025', '09:27:12', 'Sukses', NULL, NULL),
(277, 'Ki30082025-003', 8, 'Dr Yasa', 14, 'Poli Umum', 139, '35600939478479', 'Faiqatul ', '30-08-2025', '13:06:50', 'Sukses', NULL, NULL),
(278, 'Ki30082025-004', 8, 'Dr Yasa', 14, 'Poli Umum', 136, '3509948385740', 'Manda', '30-08-2025', '13:20:37', 'Sukses', NULL, NULL),
(288, 'Ki30082025-005', 35, 'Dr khaqul', 16, 'Poli Kecantikan', 133, '3506996486940', 'Rinta', '30-08-2025', '14:09:48', 'Sukses', NULL, NULL),
(289, 'Ki30082025-006', 8, 'Dr Yasa', 14, 'Poli Umum', 137, '35098384737', 'Lilith', '30-08-2025', '14:10:36', 'Sukses', NULL, NULL),
(293, 'KI01092025-001', 7, 'Dr Arif ', 14, 'Poli Umum', 145, '350291029014314', 'Caya', '01-09-2025', '13:35:21', 'Sukses', NULL, NULL),
(296, 'Ki01092025-002', 29, 'Dr wahyudi', 16, 'Poli Kecantikan', 147, '350329430190', 'Cahya ', '01-09-2025', '14:02:16', 'Sukses', NULL, NULL),
(297, 'Ki01092025-003', 32, 'Dr Pandu Satria', 27, 'Poli Anak', 148, '320329420359', 'Sendy', '01-09-2025', '14:24:15', 'Sukses', NULL, NULL),
(298, 'Ki01092025-004', 29, 'Dr wahyudi', 16, 'Poli Kecantikan', 150, '35030289893798', 'Nilam', '01-09-2025', '14:44:47', 'Sukses', NULL, NULL),
(299, 'Ki01092025-005', 7, 'Dr Arif ', 14, 'Poli Umum', 126, '3540099876098', 'Lili', '01-09-2025', '15:22:30', 'Sukses', NULL, NULL),
(300, 'KI02092025-001', 8, 'Dr Yasa', 14, 'Poli Umum', 132, '350667733890', 'Ria', '02-09-2025', '08:40:04', 'Sukses', NULL, NULL),
(301, 'Ki02092025-002', 26, 'Dr  Aditya', 27, 'Poli Anak', 130, '3503998820019', 'Juli', '02-09-2025', '09:18:28', 'Sukses', NULL, NULL),
(302, 'Ki02092025-003', 38, 'Dr laras', 15, 'Poli Gigi', 141, '356094839347', 'Nunung', '02-09-2025', '09:28:57', 'Sukses', NULL, NULL),
(303, 'Ki02092025-004', 38, 'Dr laras', 15, 'Poli Gigi', 128, '35647472890', 'Vera', '02-09-2025', '10:16:56', 'Sukses', NULL, NULL),
(304, 'Ki02092025-005', 8, 'Dr Yasa', 14, 'Poli Umum', 134, '35093848294830', 'Kiki', '02-09-2025', '11:16:25', 'Sukses', NULL, NULL),
(308, 'KI16092025-001', 56, 'Dr Yudistira', 16, 'Poli Kecantikan', 138, '35088696890', 'Izzah', '16-09-2025', '09:23:42', 'Sukses', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apt_barang`
--
ALTER TABLE `apt_barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_apt_barang_id_jenis_barang` (`id_jenis_barang`);

--
-- Indexes for table `apt_barang_detail`
--
ALTER TABLE `apt_barang_detail`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_apt_barang_detail_id_barang` (`id_barang`),
  ADD KEY `fk_apt_barang_detail_id_satuan_barang` (`id_satuan_barang`);

--
-- Indexes for table `apt_jenis_barang`
--
ALTER TABLE `apt_jenis_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apt_satuan_barang`
--
ALTER TABLE `apt_satuan_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apt_stok`
--
ALTER TABLE `apt_stok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_apt_stok_id_barang` (`id_barang`),
  ADD KEY `fk_apt_stok_id_barang_detail` (`id_barang_detail`);

--
-- Indexes for table `contoh`
--
ALTER TABLE `contoh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contoh_multiple`
--
ALTER TABLE `contoh_multiple`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contoh_multiple_detail`
--
ALTER TABLE `contoh_multiple_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpg_dokter`
--
ALTER TABLE `kpg_dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpg_jabatan`
--
ALTER TABLE `kpg_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpg_pegawai`
--
ALTER TABLE `kpg_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_diagnosa`
--
ALTER TABLE `mst_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_pasien`
--
ALTER TABLE `mst_pasien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mst_poli`
--
ALTER TABLE `mst_poli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_tindakan`
--
ALTER TABLE `mst_tindakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_anak`
--
ALTER TABLE `pol_anak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_anak_diagnosa`
--
ALTER TABLE `pol_anak_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_anak_tindakan`
--
ALTER TABLE `pol_anak_tindakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_gigi`
--
ALTER TABLE `pol_gigi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_gigi_diagnosa`
--
ALTER TABLE `pol_gigi_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_gigi_tindakan`
--
ALTER TABLE `pol_gigi_tindakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_kecantikan`
--
ALTER TABLE `pol_kecantikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_kecantikan_detail`
--
ALTER TABLE `pol_kecantikan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_kecantikan_diagnosa`
--
ALTER TABLE `pol_kecantikan_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_kecantikan_tindakan`
--
ALTER TABLE `pol_kecantikan_tindakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_resep`
--
ALTER TABLE `pol_resep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_resep_obat`
--
ALTER TABLE `pol_resep_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_resep_racikan`
--
ALTER TABLE `pol_resep_racikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_resep_racikan_detail`
--
ALTER TABLE `pol_resep_racikan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_umum`
--
ALTER TABLE `pol_umum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_umum_diagnosa`
--
ALTER TABLE `pol_umum_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pol_umum_tindakan`
--
ALTER TABLE `pol_umum_tindakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rsp_antrian`
--
ALTER TABLE `rsp_antrian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rsp_booking`
--
ALTER TABLE `rsp_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rsp_jadwal_dokter`
--
ALTER TABLE `rsp_jadwal_dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rsp_jenis_biaya`
--
ALTER TABLE `rsp_jenis_biaya`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rsp_pemasukan`
--
ALTER TABLE `rsp_pemasukan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rsp_pembayaran`
--
ALTER TABLE `rsp_pembayaran`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rsp_pengeluaran`
--
ALTER TABLE `rsp_pengeluaran`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rsp_registrasi`
--
ALTER TABLE `rsp_registrasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apt_barang`
--
ALTER TABLE `apt_barang`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `apt_barang_detail`
--
ALTER TABLE `apt_barang_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `apt_jenis_barang`
--
ALTER TABLE `apt_jenis_barang`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `apt_satuan_barang`
--
ALTER TABLE `apt_satuan_barang`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `apt_stok`
--
ALTER TABLE `apt_stok`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `contoh`
--
ALTER TABLE `contoh`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contoh_multiple`
--
ALTER TABLE `contoh_multiple`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contoh_multiple_detail`
--
ALTER TABLE `contoh_multiple_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kpg_dokter`
--
ALTER TABLE `kpg_dokter`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `kpg_jabatan`
--
ALTER TABLE `kpg_jabatan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kpg_pegawai`
--
ALTER TABLE `kpg_pegawai`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `mst_diagnosa`
--
ALTER TABLE `mst_diagnosa`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `mst_pasien`
--
ALTER TABLE `mst_pasien`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `mst_poli`
--
ALTER TABLE `mst_poli`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `mst_tindakan`
--
ALTER TABLE `mst_tindakan`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `pol_anak`
--
ALTER TABLE `pol_anak`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pol_anak_diagnosa`
--
ALTER TABLE `pol_anak_diagnosa`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pol_anak_tindakan`
--
ALTER TABLE `pol_anak_tindakan`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pol_gigi`
--
ALTER TABLE `pol_gigi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pol_gigi_diagnosa`
--
ALTER TABLE `pol_gigi_diagnosa`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pol_gigi_tindakan`
--
ALTER TABLE `pol_gigi_tindakan`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pol_kecantikan`
--
ALTER TABLE `pol_kecantikan`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `pol_kecantikan_detail`
--
ALTER TABLE `pol_kecantikan_detail`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `pol_kecantikan_diagnosa`
--
ALTER TABLE `pol_kecantikan_diagnosa`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `pol_kecantikan_tindakan`
--
ALTER TABLE `pol_kecantikan_tindakan`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `pol_resep`
--
ALTER TABLE `pol_resep`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `pol_resep_obat`
--
ALTER TABLE `pol_resep_obat`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `pol_resep_racikan`
--
ALTER TABLE `pol_resep_racikan`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pol_resep_racikan_detail`
--
ALTER TABLE `pol_resep_racikan_detail`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `pol_umum`
--
ALTER TABLE `pol_umum`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pol_umum_diagnosa`
--
ALTER TABLE `pol_umum_diagnosa`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pol_umum_tindakan`
--
ALTER TABLE `pol_umum_tindakan`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rsp_antrian`
--
ALTER TABLE `rsp_antrian`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `rsp_booking`
--
ALTER TABLE `rsp_booking`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `rsp_jadwal_dokter`
--
ALTER TABLE `rsp_jadwal_dokter`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `rsp_jenis_biaya`
--
ALTER TABLE `rsp_jenis_biaya`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rsp_pemasukan`
--
ALTER TABLE `rsp_pemasukan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rsp_pembayaran`
--
ALTER TABLE `rsp_pembayaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rsp_pengeluaran`
--
ALTER TABLE `rsp_pengeluaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rsp_registrasi`
--
ALTER TABLE `rsp_registrasi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apt_barang`
--
ALTER TABLE `apt_barang`
  ADD CONSTRAINT `fk_apt_barang_id_jenis_barang` FOREIGN KEY (`id_jenis_barang`) REFERENCES `apt_jenis_barang` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `apt_barang_detail`
--
ALTER TABLE `apt_barang_detail`
  ADD CONSTRAINT `fk_apt_barang_detail_id_barang` FOREIGN KEY (`id_barang`) REFERENCES `apt_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_apt_barang_detail_id_satuan_barang` FOREIGN KEY (`id_satuan_barang`) REFERENCES `apt_satuan_barang` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `apt_stok`
--
ALTER TABLE `apt_stok`
  ADD CONSTRAINT `fk_apt_stok_id_barang` FOREIGN KEY (`id_barang`) REFERENCES `apt_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_apt_stok_id_barang_detail` FOREIGN KEY (`id_barang_detail`) REFERENCES `apt_barang_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
