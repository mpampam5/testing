-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2019 at 10:51 AM
-- Server version: 10.2.29-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u8328389_chetaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `telepon`, `email`, `created`, `modified`) VALUES
(3, 'Costumer Service Complain', '082292735747', 'cscheetahbintang5@gmail.com', NULL, NULL),
(4, 'CS_Samsam', '082292735799', 'Khusus_Deposit@fibonacci.com', NULL, NULL),
(5, 'CS_Audia', '082292735788', 'Khusus_Deposit@fibonacci.com', NULL, NULL),
(6, 'CS_Firmansyah', '082292735749', 'Khusus_Deposit@fibonacci.com', NULL, NULL),
(7, 'CS_Supriadi', '082292735748', 'Khusus_Deposit@fibonacci.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_person`
--

CREATE TABLE `auth_person` (
  `id_auth` int(11) NOT NULL,
  `id_person` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `token` varchar(150) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `auth_person`
--

INSERT INTO `auth_person` (`id_auth`, `id_person`, `username`, `password`, `token`, `created`, `modified`) VALUES
(185, 188, 'indrafounder', '$2y$10$1GstOXETCqacVTocdzo.0OLeih2rUAeQ.LBEqteiiDOyOxoNZGjFq', 'T09rbUwzWE1SOG5Vak5wdGtJUy9JZz09', '2019-11-29 23:50:17', NULL),
(186, 189, 'indracof', '$2y$10$gNf5CuoU1IWIPV4nVSqKN.cRh0DYcCDjEzUhOc9X3/TQ5DX00jGZq', 'cjIzVnh4OWpHa3FWWmJsUHdsOFRUUT09', '2019-11-29 23:54:37', NULL),
(187, 190, 'rosicof', '$2y$10$wg8IkHLgQ98MQ89wJgLnAOCbuTChZkSUFcWzrszeRmaTfjk55AnbO', 'RDdNaGZ0NEZoSS9OTFE5cDZCM3ZDZz09', '2019-11-29 23:58:17', NULL),
(188, 191, 'yusufcof', '$2y$10$YErtTrYfF1Z22hxalE9X5uDhy9So0LBGWhsHmppLYSsUS92f.aM8O', 'Vm8zOTVDQkkwYTc0b0RKdHc3TGtMUT09', '2019-11-30 00:04:04', NULL),
(189, 192, 'franscof', '$2y$10$rvNc0c6qdmOVErUy0cI8MOfshbLO.AFPzDrLLSc8x/rQFbWW/kNwW', 'WFZkenFyb2VBa2t5UjNvc3daZjdNUT09', '2019-11-30 00:08:06', NULL),
(190, 193, 'damariscof', '$2y$10$uzVfLfvQWsj7nhRiH60geuFmAX1qjctzNsCLD1476aKUPUJ2xzr9S', 'RFB5bWZOaU5XRy9rNzVQb2hSZjNtUT09', '2019-11-30 00:09:58', NULL),
(191, 194, 'martinusagn', '$2y$10$1Ow68pAAzC49RCDsaee7ie1YrZ69v06P1PZPYyuZ5vb5EYg0Hs1yK', 'KzBhL1NxQzZQc1hDU2dwaW1NVHJwUT09', '2019-11-30 00:13:25', NULL),
(192, 195, 'mustadirhamagn', '$2y$10$KuIeVtYQr0cG8Y4Ja.IQbOw8bU3JDZrr8sFzpx.v4DbjXoaRNof2W', 'SHVNYStTVXYwVTI0NFE1OFQyem5LZz09', '2019-11-30 00:17:28', NULL),
(193, 196, 'yoelnardagn', '$2y$10$4pkvmusIz/6m.07yRgxXA..oET9IJl4uvIblS4JSO1y4foVJkTBtO', 'WjdjTm1iQ1l1RjJxUEp1Y1NKWWgvZz09', '2019-11-30 00:19:35', NULL),
(194, 197, 'darniatiagn', '$2y$10$CZ2JEXxyuv8.CHjV3gxFnOownoR3N9ft3S/iWk43CqxhVNh9h7hku', 'T3dUTDFmMGZjeEp3QTg1R2RVaU1kZz09', '2019-11-30 00:22:20', NULL),
(195, 198, 'lukasagn', '$2y$10$cb1aCwfuthtIIuelKx8Yt.7zFAWk0T6CLHrNhT/MlsYFdUcH7Nrzq', 'aUJKSm4vQ01LTTdjazlKN2ozSVV1Zz09', '2019-11-30 00:24:54', NULL),
(196, 199, 'irvanagn', '$2y$10$Nu3ucK.Ttn3qGwmLCoMVg./2UWQ0fdqpUfItkt9/MPg9wJeF4xmA6', 'WVFMK2F4TlQzVGxpUjJKVzNSRFc5QT09', '2019-11-30 00:26:32', NULL),
(197, 200, 'syalmiagn', '$2y$10$vqs0tsb1FDq.W9eQQ.WrlutygkcSW.wBhR9ModgptbIpat10ayIpe', 'bnFMd09iMGNlTHBEa2xCdUlOWjdRZz09', '2019-11-30 00:28:31', NULL),
(198, 201, 'ikbalagn', '$2y$10$J7JlKp1bCOH2VHl8FFOW0uqDaV7bOh2HFHzv/mx1Ekv4bomDW7hCS', 'TGpVclNmSnEyQjh2Z2swSlBrUjRmQT09', '2019-11-30 00:32:34', NULL),
(199, 202, 'ariniagn', '$2y$10$5EEn5OshbTxGtIgojxJm/uKQScpYKXoe2ot.D9ADIF/7TzX3eT6dW', 'MXNIVDEyR084ci9lZXQ4eXd1ZUVwUT09', '2019-11-30 00:35:16', NULL),
(200, 203, 'irmaagn', '$2y$10$cERHWMlNhMT2f3/yPaqVtuqak1DxsMZs4.KX/P5NdzeG3OyTD/4MC', 'NjBCUnVWMG9ONHlLL1dkTEZ2dUNyZz09', '2019-11-30 00:37:00', NULL),
(201, 204, 'musliminagn', '$2y$10$ccXz00J/Pg3T1.TRfYIcxOniUYxrgMvf5URz1JFfClVOFJKcV7.p.', 'NVk0T3AxZU1LR3ptR1pHV04rai85UT09', '2019-11-30 00:38:44', NULL),
(202, 205, 'nikodemusagn', '$2y$10$5TYLqTUN4DGoB3aXCukIY.F1PAxE0nMFwMmuYKS1yk9JfbBxUJAmS', 'WmVOQ0lsSEhqa0JvYVpBOCs3K2tQdz09', '2019-11-30 00:53:04', NULL),
(203, 206, 'damarisagn', '$2y$10$iquna1jOzs14i/7d4nBqoeCTvke3IUhsbCTd/CgPXE4e43d9xuZN2', 'aWNScVYwQVN6b2RiVjNvQW9EdnFnZz09', '2019-11-30 00:58:29', NULL),
(204, 207, 'amriniagn', '$2y$10$yganSyIwEoUqwk3IWEH1Ce2grpVTfjR6vWdAGtEtfbhwXwqkRSHB6', 'ai8rcFFaazRZRzUybnVwWHpsMG5vdz09', '2019-11-30 01:00:10', NULL),
(205, 208, 'veryagn', '$2y$10$F5h7TxEHHQCTMOU1A7NAv.jTFBr7Ct7t83w2XMI6z3NcrbQrAlrc6', 'cGhZN3hlZTVaRnhxQzNCUDlucHRJQT09', '2019-11-30 01:00:32', NULL),
(206, 209, 'samuelagn', '$2y$10$oLSyj9tms2BBWxs1lqGJ0uhvP6lTJUY0qRdLxlXCF7KcbT0lwOyNG', 'MG5nZ2NxVDZvOERsN05yNzJvZ3F1Zz09', '2019-11-30 01:03:01', NULL),
(207, 210, 'michaelagn', '$2y$10$g9IfBH6LNvnzSAHa9RaqPeC0ZHXnjslBtC5ePE/9wEaf5/IEZXSsq', 'ZE1OYVppbGcrYVdtYUlaTWQ4UTJ0UT09', '2019-11-30 01:07:42', NULL),
(208, 211, 'cheetahfounder', '$2y$10$TNITHGQ5BUdRpH1XPt5L5uDq.mm4BgaXAGWHg7nSwsqCBHOWUb/Wi', 'eDJFaEpDUjFoQ21SUnJiZndSZ2lJQT09', '2019-11-30 01:09:52', NULL),
(209, 212, 'berthaagn', '$2y$10$IeUdwdbpC7JHAc5MmBptXeRrbMfH6eLjdJhW4qddeXLC00b6qawX6', 'QXFXZWlFZW1wZHk0TWsyNURNSWF3dz09', '2019-11-30 01:10:47', NULL),
(210, 213, 'romaagn', '$2y$10$MUn5sznMpgP11nJbsQwifeSYU99jcCH0h5gfgkkB6DnB9w5Bf5YyS', 'MTVhR2kvVzkrZThPU3diN1YvdlFBUT09', '2019-11-30 01:12:58', NULL),
(211, 214, 'esteragn', '$2y$10$m5WR6u6ZTSpG.Bjvqii3AeXVlCW1zqD3I66eMNgtDDsInEEn3fMSC', 'dGk1TzN4MzFwWGk3TmlqY1N5R2FjUT09', '2019-11-30 01:15:20', NULL),
(212, 215, 'lintinagn', '$2y$10$bUtvEvy9YQmLLaomh4eZWOiB/TBDZoeUUDmLwJCOsyWMTbJOy2HfO', 'bDZVVWFqd1pYWk5qeTBZQ3RSZHFsUT09', '2019-11-30 01:17:17', NULL),
(213, 216, 'hayatiagn', '$2y$10$5aqFMbyM4e.KIJHVdwYCwuE665VCfhQdvwLsp7LNatwjC77lZ2HRe', 'TDVubUt6NnVFRG1IeW5TQi8xM1BpZz09', '2019-11-30 01:19:08', NULL),
(214, 217, 'siroagn', '$2y$10$kxDQfaNx7U.U7Fe7zKI0nes3UlW0gt30xQxVGtxzomkkcK.iLUMuq', 'QTBZZVIxajFqOFI0MVlhbkQ0RTB6Zz09', '2019-11-30 01:21:41', NULL),
(215, 218, 'marianaagn', '$2y$10$3q8R8kuJoZDSMzy3shfeZ.kTYK166LGEbWupLVQP9coMa5QO8GVIe', 'Q1d3MDI2NTlWaGlaNm5MVjJqM1dYdz09', '2019-11-30 01:24:29', NULL),
(216, 219, 'aryantiagn', '$2y$10$jMxkQMxUqpsSrkeWujUW6OohU1bZXD/trnNzt4CQoINrzj5nuvD1K', 'TFE2bXJpV0g5cXcwKzQvVXppeGVEdz09', '2019-11-30 01:27:07', NULL),
(217, 220, 'fransiskaagn', '$2y$10$tXMV8nrB9N9eEkVBpYmpVuGSo2qxyj0KwJGgiGt32Mjl/kFb2uf9O', 'cjhaVkNZT3VSNGVtK1l4cENxaXlBUT09', '2019-11-30 01:29:47', NULL),
(218, 221, 'annaagn', '$2y$10$Va.4AK1LqqkOgR4I97ElAu2VC2woPLNwJ7kD1xB1JoZgu7HL.sBsu', 'S1FwSlNGUlVwclVpbTVlVDluYUV2dz09', '2019-11-30 01:31:27', NULL),
(219, 222, 'evitaagn', '$2y$10$vJB3B1JHXLqKAPcRtli2RuoLvHutyMeXl8MauHAO/lQMI2jfZC0Yi', 'Z0c4bnJaVWhXM0JOc0p2bkhCUFNDUT09', '2019-11-30 01:34:10', NULL),
(220, 223, 'yantiagn', '$2y$10$cUj9EUOeA4PoZoMBkhFSl.1Pja1Zj3n5yUOhPmlSNNEqqdL33sQEy', 'eTB5K2d5U2owQzYwemtJYkhFbWJFQT09', '2019-11-30 01:37:01', NULL),
(221, 224, 'hasbyhero111', '$2y$10$i1DPqYBkwOUPCC.wUetn1..UM8jRbMhEM0nX9Grq.2NfUb.oioC..', 'NDkxcW4xSloxNWg0d2J0WE9YMU1zZz09', '2019-11-30 01:38:20', NULL),
(222, 225, 'mekiyagn', '$2y$10$iiUE5D9G8f/194v51OkkruHYeijoDnkvByxmPvUtqFN.sD7j4ycn2', 'aDJ6RDFQNEh0UWpDelpjbzZWeG1DQT09', '2019-11-30 01:39:29', NULL),
(223, 226, 'tikuagn', '$2y$10$2AkPT67fF.qZ3U6EkVYh8eRfVDwrlr1Bo1jR2VNNS/2mrmYWEm16.', 'ejR5YmJ3TU1QMEtmc2QxZzdQUzJvUT09', '2019-11-30 01:41:03', NULL),
(224, 227, 'joisagn', '$2y$10$1XyBEh7naaNbzJFRobYLweJR9YdQ.W8W8iqjArYOtxJ5fMuYneVkC', 'NVdZK1VwRkYySzdJVUdpd2lGYlJ0UT09', '2019-11-30 01:43:09', NULL),
(225, 228, 'indraagn', '$2y$10$.5hwqhFZFSryBW02Lo892.m9eROheXFZkUJv23SWKx3ydPhgACt2.', 'MHN0eUVYa3A3VnYxNFpydmRqQ2hFQT09', '2019-11-30 01:45:02', NULL),
(226, 229, 'bandiagn', '$2y$10$apb7b0iWqCr9FIi2SX8.0.QghHTQIhVMpgTFS/fsLYgcsQ4NZmDAC', 'U3VEZUJXUURsNDVXcVF2SWpsN0JSdz09', '2019-11-30 01:45:33', NULL),
(227, 230, 'karniatiagn', '$2y$10$tA0M/tAuASzNO20I414O9egbHpnN8nVyywgCsgDCUHfmcE4ddWD.K', 'NjJtclcrT2FiMjVNQWVMUm5nR1dGZz09', '2019-11-30 01:47:47', NULL),
(228, 231, 'damitaagn', '$2y$10$0cDTZiGwKEmCBFrbwjnJ5uVN6Jlmpzr.Z0RUI7yXGzhQT3bU.Cfjy', 'TTN0WU5WYno2ZHpaRlBvWWR6UGZ6Zz09', '2019-11-30 01:49:48', NULL),
(229, 232, 'yunusagn', '$2y$10$E0C1nJrkAxNRyAaAoA1ToOH8qUzdaWNlR3tlrDiVBwPl9Br.odYhe', 'QjgvNkJJYjBIcjdNMmVHdVZxNnNZQT09', '2019-11-30 01:52:01', NULL),
(230, 233, 'rafaelagency', '$2y$10$7dYIqxmwa0wx5bfl4PqAROQ6ioeBsc0YsIifnuHgkYSIz301OYI9G', 'a1pPRVhzWXJQeVFtWlV0VmZ5SzgwZz09', '2019-11-30 02:08:00', NULL),
(231, 234, 'martinusriraagn', '$2y$10$qZIO.ERcyq166o0lMB1ywOSKqQBVR8Pv3JSxrVGLc62U.holj1Yya', 'QjNtUTN0YnlMNEozWnNleHdtaDZPUT09', '2019-11-30 02:14:22', NULL),
(232, 235, 'syaefulcof', '$2y$10$kpgWmw6KkoUEeM4.MkUPZeN5thYTTg3nbizoa9qO/SXxylNFAAR92', 'VVhzcVNKRytGSlc0V0d1YU1yVnQ3UT09', '2019-11-30 02:17:07', NULL),
(233, 236, 'sakkeagn', '$2y$10$rAS9kAAN474eXFjuNupIAO5OImTnUVOSjD9ym6nK09JjokKhaGw46', 'cStqRkNud0JhKzRqcjZJMEtDd2p1dz09', '2019-11-30 02:18:54', NULL),
(234, 237, 'agustinaagn', '$2y$10$.bc..x43CBPatC9CELy5QeqrirjkOtrdH6fLToz3HzK.CllQwkBDS', 'MXUyMXM3WmkrQVU1R0k5ZE8zOURHdz09', '2019-11-30 02:20:51', NULL),
(235, 238, 'markusagn', '$2y$10$/94mHiUYBUI5A8Rrtvzc8.au3wTgWzJjRwiQtunMbRoZaVkgsffUi', 'ZDA0VHZpM1IyUTdXVXdVYmZEUlB5dz09', '2019-11-30 02:22:55', NULL),
(236, 239, 'zulkiflyagn', '$2y$10$ZOuTLfA.d1lTv8aNIWTOt.s4lfLh9sSvCvy4ZupXqeWp7U6/2NIoq', 'QVZEUERJNEZybXBEdmN3MzErOFdGdz09', '2019-11-30 02:25:35', NULL),
(237, 240, 'fransagn', '$2y$10$ScsEwOMW0pfLqpq5nJydmOltN5J1n9d1ae5yrbF2Va4bOsaotbNue', 'aEYyb1BleXo5M0hkd09uMHFrdGFmUT09', '2019-11-30 02:40:28', NULL),
(238, 241, 'sudirmanfounder', '$2y$10$4jbGxc9w9hhvvnulquKMHO.ik9S/U/SsEYmiWzyO/I1l1FTxErbdS', 'RHlhUGdyS1NBNDZhVFh1Vm8reEx0QT09', '2019-11-30 02:56:57', NULL),
(239, 242, 'sudirmancof', '$2y$10$5BvV2jzaMg9MD7EQVyL0R.MB6FjnAwzdlT975MqxkYYEJ4C/8RVP2', 'N0FXYXVUOE9lTXZCOUh5T1lNOHNCZz09', '2019-11-30 02:59:49', NULL),
(240, 243, 'ananagn', '$2y$10$77BQPnJBtM9rfb5GgDMrV.EfIG.VmE0EIrW/gutzNQG7uXtiucENu', 'bWkyTFQydHZnOHdvZnJNaW1ycm5LZz09', '2019-11-30 03:12:38', NULL),
(241, 244, 'alfinagn', '$2y$10$Qc63eJrAPk1nVcVaNUtxs.j4lkvWI8mIr7c0WLM./H6lOh6bV2Fji', 'QytSdmdLV1ZxM3pYL0swUEppTjV6UT09', '2019-11-30 03:27:25', NULL),
(242, 245, 'rusdiagn', '$2y$10$Yi4KK0Ge1PtmhxULmZ91fOLuhveo6sYAToLGgj5/SGY1JbNbVoGHC', 'bjRlV0VLODBKMHd4TVo2VUViV1dXdz09', '2019-11-30 03:29:13', NULL),
(243, 246, 'syamsinaragn', '$2y$10$VJwJluNIGXH6gtX4TW6LJ.ytFqVx2TBUwE9WGPhSHZQDqxNXxuhr6', 'WjFJL3VNZm9xNFFCUWYrdHN5L2ZBdz09', '2019-11-30 03:30:44', NULL),
(244, 247, 'adolfina01', '$2y$10$Rnvborfc28ZcNyavVFmfged5L.p9jjpdAvRVax0Y7TVjdLjCt0MOG', 'NURRSFZmMStIVHBzYUh6MS9ENDV2dz09', '2019-11-30 06:50:40', NULL),
(245, 248, 'yosafat1219', '$2y$10$xn1V8DMoiyfj1csDIis3ue1riW40CWLZLv0Bv0YRnxv5PaJ/djV2a', 'Q3BZSC8xL0RLejVha3pFTzlHaTd4QT09', '2019-11-30 11:16:08', NULL),
(246, 249, 'evacof', '$2y$10$Zmk7DAQ.yvS9bK0xY7LV6ewadbAorBFeiZiMTXpWiCtdRHEDRU9Vq', 'MzRLRUNOU0F5N0NNTnNnR3dGdERzdz09', '2019-11-30 13:52:48', NULL),
(247, 250, 'ridwanagn', '$2y$10$enaBHmJRt995EG.SdHw50upQjWkVu11yOV29Xf.USvLPGWh9JHtb6', 'cWExTWt4dUVXMnNvWlM1bmpqMXg1UT09', '2019-11-30 13:56:03', NULL),
(248, 251, 'marlinafounder', '$2y$10$wQAnW6pWpB2OfWW/ZyOcxOkVoOnDOUtwYlTWBHso3sk..62jdcHTm', 'MzlIdUE0SjUvZjF3VzdtdEFTclJmUT09', '2019-11-30 14:02:06', NULL),
(249, 252, 'marlinacof', '$2y$10$bI66G85q8RRZZkfmzrlCDe5DjflrBYuH3YcVzod2e5erBkzUSbjyi', 'RzdBV3N1MTUvcVkwMHZzVjFETHpkQT09', '2019-11-30 14:05:38', NULL),
(250, 253, 'marlinaagn', '$2y$10$EIz3DiWPmuDpCNuzFhPEa.rYAQzyPqv63ex4P5VEBePZlB3xvtgVG', 'YmVmYjc4Y3FhZitMaHhSZnFUbjcwdz09', '2019-11-30 14:10:51', NULL),
(251, 254, 'feybiagn', '$2y$10$uyE1q7DjSB5yUm6pYpjcwOBjOqfd0YE4adOGc..YbeBqZ6ge56Sje', 'aTJWMml2L0N4VVoxZjdYTzFZK2tqdz09', '2019-11-30 14:15:45', NULL),
(252, 255, 'brendaagn', '$2y$10$DDEpglJFXB335jma6mc0quziAq9Hxt71xVMPBF1ZVTZ0g7F9ANHXS', 'dWc3Mml3WURudUpCK2R0UWt4MkFIQT09', '2019-11-30 14:19:11', NULL),
(253, 256, 'stenlyagn', '$2y$10$nljgvDOhtO3G1mR1pBE9U.YKkeFZEp7SxoYWbWhfN8kfjpUL7a5Ry', 'TUtVZEtsNjAzTVhVeWs4dUk0b2NNZz09', '2019-11-30 14:21:45', NULL),
(254, 257, 'jefryagn', '$2y$10$HWx7REkboB.VYCbJzTDTxeigInkqaKGSSyYrvqBvoi3H5rn6CyUrq', 'VmJEby9vVFJoV21TWXN1QzEwVitidz09', '2019-11-30 14:23:16', NULL),
(255, 258, 'stelaagn', '$2y$10$EU4jr8TvHL15hL/tUWb6M.IPgikJ3znEJt.DIHRkkq5P55aAFeZU.', 'cFhqUG1MRnpLdGZjenZFazlXMTladz09', '2019-11-30 14:24:53', NULL),
(256, 259, 'imaagn', '$2y$10$69Be/qlwJqIQvNR45piKs.ozkiS5Cj.y3.aE4gu49XxQoyY8Hqv9.', 'TitUL1J1cmFJdnliemkzTjhSaEQ3UT09', '2019-11-30 14:28:27', NULL),
(257, 260, 'frettyagn', '$2y$10$Wi1W2SWuXjqgIgBSEVW.OOWySZmWaKoElc/8EGLCAS1QOsLFQbi..', 'M3Z0VU5QOFpPRVpFeHZsMXBCa0RaUT09', '2019-11-30 14:59:45', NULL),
(258, 261, 'lennijagn', '$2y$10$sKlBBOobjNvoS7DxxUinGOfK9W09MytdGMYcX7VNguebNRsOT721W', 'WUpuQVFyQnlUZUF3RFUxT2h5SFk4dz09', '2019-11-30 15:07:13', NULL),
(259, 262, 'tjandraagn', '$2y$10$hkx3xm8CFt1SUAED0wYks.7gu6n6p5f1IuwrZsn8cy5UJ77b6O.im', 'bnZJSFVNTWhvVU5zNU1IcVhVTWRFUT09', '2019-11-30 15:15:05', NULL),
(260, 263, 'yance', '$2y$10$w.lRHI.V/HADk/C/3k3SDuwV1NQgp4AKtiFLEPZU.zdo7u0ls.yOm', 'dWRaQ0h3MmhFL0x1S1FJaW9NM3NOQT09', '2019-11-30 15:22:16', NULL),
(261, 264, 'adrysumampouw73', '$2y$10$WX8YiTVZkjkI5srNzzPME.RUZBNu7PFF94UHnXb2qRwlEuxFyrzQm', 'L25vWFAvUW1sQ0pTNHFqSkpiTWtRdz09', '2019-11-30 15:24:52', NULL),
(262, 265, 'yuzakcof', '$2y$10$VzsoDldL753.Ha5bqn/AyOPDglX4ZQregBLaNZtUImJJXBZp99gDS', 'c1RIRnZWenpBVXBRUEVtajhucjgvQT09', '2019-11-30 15:34:09', NULL),
(263, 266, 'mayaagn', '$2y$10$GresLT.CQX1bqbfjOTQ/C.S0aryC4TQOWU9bI3cmZtxUClRMnp6sW', 'MGFReWRKajNMeStFT3dlU2dTbWx4dz09', '2019-11-30 15:35:03', NULL),
(264, 267, 'yuzakagn', '$2y$10$/8V/p1F6aPfPzbB70oLl1uZoRAdHSkC9rXZQroX4Zg9lwoLxtF.t2', 'WGFOYWp1ME5kYitXQXFMa3JSdC9TQT09', '2019-11-30 15:38:22', NULL),
(265, 268, 'ledyagn', '$2y$10$NaunsyTkOPhy8i1s2cw2jeRzXQ6IzfA3IrBv9UsII3/vY..opabV.', 'bGR6SHZ0RDg5ZStMZ0ZJdmtUNDFQUT09', '2019-11-30 15:42:11', NULL),
(266, 269, 'edwinagn', '$2y$10$VREM5mux9o2hebI3Y4RqxOGkXXhNiQdFw/MVm.wtbQNQYQQ9b.ABC', 'QW1NRHk3UHdZUUNDRTNVS2lFWFYyQT09', '2019-11-30 15:42:14', NULL),
(267, 270, 'miryammd', '$2y$10$hZ5/kctR1tErYVSrXufCmeevqgZqMAJDsBmY6hpFTYZ1D95s15mTy', 'K01FYW5peHdEMkdock84dVBjdGNJQT09', '2019-11-30 15:42:34', NULL),
(268, 271, 'simonagn', '$2y$10$S3Z7AHi2dmTVgFi2Ubx5JuofIDFuMy6EFFxZueS6GO/iYiq2hpVim', 'T0t6ekJUbUl6SkRCTk15WmN1ZG1ldz09', '2019-11-30 15:48:21', NULL),
(269, 272, 'hamzahmkscof', '$2y$10$FCPVLm2L16OZf0mBpMtgQ.ngIwTq.8X2vAZRAbFkaazRU6x50g0De', 'bER5YmZEaTlzaFlJUWs2aGtYY0x2dz09', '2019-11-30 15:49:37', NULL),
(270, 273, 'syamsulagn', '$2y$10$sF4OyDuJW3CcffWvdbucau0c4/Qjl/02hNb3j5dzHLZICAZNlJlc.', 'cWFzc3l2b2JJK09ORUNGZ0grcFVadz09', '2019-11-30 15:52:39', NULL),
(271, 274, 'mulyantoagn', '$2y$10$koJ1ZtV7NxdtriAj/YRmfuhmYBt49rOspQbkqliAALkiRIRgYeSL2', 'NEowajV2ZEtDMGcwa09iVEM5UGV6Zz09', '2019-11-30 15:52:53', NULL),
(272, 275, 'malselinaagn', '$2y$10$KYbtbjWIf4vaNgWJZcFfK.K7ViExs2lRkrFAYaL0v0Z.uHnW5PY4W', 'VS9mV2gwTDI4ZDc1dUlwbmxMMHV4QT09', '2019-11-30 15:54:49', NULL),
(273, 276, 'raizaagn', '$2y$10$eNsJop5cM7AfKjEN9J4yM.c3lLvr/OwBnX0X4V5GOBdU8zZrpCxIO', 'bmVFaUlpaEd1SEJkZnJPYVA1TDhVZz09', '2019-11-30 15:56:43', NULL),
(274, 277, 'januartyagn', '$2y$10$jdmZNdSDiDcoIJFjApnXouL7EgD9tKPQTYWMjZMXU8FxI9c6Yaeaq', 'QmtLVGtQN0xFV05PM28vVEthWHVpQT09', '2019-11-30 15:57:50', NULL),
(275, 278, 'eunikeagn', '$2y$10$4kmxYcLsqekw0NkajXh6muflMBy.gccR.oiMjf492efjf3SKzuSba', 'Yk4yYVFYWmd6bnlDMGRYdFJTejBTUT09', '2019-11-30 16:03:23', NULL),
(276, 279, 'raumanenagn', '$2y$10$8mg9hyW0G8yGnupURmyJB.gH4ijaIaSoJgXBKWLjEgvB3igB6EBT2', 'OFg1dW1wVmREamNnY1RGemRnYnNLZz09', '2019-11-30 16:03:25', NULL),
(277, 280, 'coryatiagn', '$2y$10$saptAzY6ynpZ.BHqZahivOxzFDYXLwQ1LEida9iB0ceikSjf0f/Ii', 'Q21MT1pIZUZjYk80TFhIamYrVUkydz09', '2019-11-30 16:07:24', NULL),
(278, 281, 'lexiagn', '$2y$10$jmJWZIbgTnhGC.v7j4DpYexA1ypxJvmL8Dr5wEt4KsU8AFWLHilbm', 'Y2FpSi8zRGI1SGxwS2N1WWpYT3hJQT09', '2019-11-30 16:10:02', NULL),
(279, 282, 'agustina01', '$2y$10$.Tka1WmlVzUhouxgYnXPiO/TYWWG8/UiCsUhxnEaDXkDxsROqA5Ky', 'VU8xSXF5YjN1N0tjVEJyZ29wMXVVQT09', '2019-11-30 16:28:09', NULL),
(280, 283, 'noviagn', '$2y$10$rPxAE3tCP9XVagi2OdX.IO6xXhYLo3XlqzfIUAioaPybtte9bI41i', 'OTE3VDNheFF4TWtPMXhycndBdUFsZz09', '2019-11-30 16:41:24', NULL),
(281, 284, 'silvaagn', '$2y$10$mj3C4xaMPJmLkAXpwgSrduC.aV6rlVagexUQ91pmibGupLEZc4XQS', 'UVNIblNCcTVRSnlwVi9QUmgva2Vkdz09', '2019-11-30 16:43:22', NULL),
(282, 285, 'joniagn', '$2y$10$WEm.RXURXj/i7GwC1kPXcemVw1tfyFJ55Vo/faaQDSpM4i19huuJO', 'VkRnQkpSQlA0Q3NhaXUxOWI3aHdHUT09', '2019-11-30 16:45:21', NULL),
(283, 286, 'anitaagn', '$2y$10$GFtbYXYwUnyQq8w5Fbn3QeURcEkl1BPiNjYWrnZdQyBZgRiCv3f26', 'ZmNkRzRVNXFUcEpjY3lCb24zUkRiQT09', '2019-11-30 16:47:10', NULL),
(284, 287, 'heriantoagn', '$2y$10$AhCeHr5/Kg9u/8vFIMTXXe1K8EgMeh4nX5qI6tnp7M3CkZ7gPJL6y', 'M2NITEI4SVhXWHNKQitmK2x3U29MZz09', '2019-11-30 16:49:28', NULL),
(285, 288, 'naniagn', '$2y$10$cVunBbqyLx/UkJbxc5cbiu9P1AVd6wQNVtx7upY/MFVkmCTaNyPgO', 'NHdLWnlCcHA0a004WU9SYXlobXJkUT09', '2019-11-30 16:51:12', NULL),
(286, 289, 'hamzahmksagn', '$2y$10$jU88CPQne4QgTOyGU/Pycu6sCSwjBPemy7/9y/tLMUshwmPl3s.3m', 'YytHaDkxYTdrSEpnMnZaZTRRQkZkdz09', '2019-11-30 16:52:28', NULL),
(287, 290, 'reboertagn', '$2y$10$ap3mxtdHG64nqbBziqmZUeONxflpSFobbboafxcf3a9qgOQoXUD06', 'VThXQUZQczZySENIc2lvVzV0ZzZidz09', '2019-11-30 16:53:26', NULL),
(288, 291, 'marufagn', '$2y$10$lC/.tfgXEOTyU5cEILgeA.YoEYEtrnOPwK7mC0c6zTt3XB4nWp2Re', 'NzB2Y29OUThEcWQrNFdUa0UrTzQ2QT09', '2019-11-30 16:56:59', NULL),
(289, 292, 'aprilinaagn', '$2y$10$5r0H2qNo3QWpKvOsD4jEOO7cly9Mp6ZZ/0aGaoz.Q6GtajM8H8MkO', 'NElDdGRVUHRCZERLbHZ5QTNXeU5CZz09', '2019-11-30 16:58:30', NULL),
(290, 293, 'nurhaeni', '$2y$10$mYcqGMYWov/tGDPhztU7rux/N4/QhXo6A99QX3/HTtKzQWSBs1cHC', 'OTRVUTVWUnJlek1VZXBjeC80bEJIdz09', '2019-11-30 17:07:37', NULL),
(291, 294, 'haerilagency', '$2y$10$imhioQH8oKdVBWAJ3VHAZOOQ/dwFWz8APAl9by2ue8oLVXU6AbOXe', 'OWpreGlqUHVPM1AxUU9oNitVSlY1QT09', '2019-11-30 17:23:36', NULL),
(292, 295, 'jamaluddincof', '$2y$10$sieF6XBYzDjqMWhXNfPW0eDXWz557U.IyTgoObQrNCE25qrVX/AX.', 'clp2RDlWdlkvV3p2djgrNjBRMzN6Zz09', '2019-11-30 17:43:07', NULL),
(293, 296, 'mukhtaragn', '$2y$10$BRtNUAe9QZx/LFj8ODqI4eB.k13Mb30Chh4Mk5Fu3i14nzhiOp4KC', 'UU5UVnp4VmZXMWJYRG9yazlJUjhtdz09', '2019-11-30 17:46:03', NULL),
(294, 297, 'zainagn', '$2y$10$E2nKhIicvA0ZrLkJ1b32eeT1/VkOtkfJQs7.jl7h3azbtY3vrNWXS', 'SjJuY08wQTc1Wml4RERiSUkwZHBPdz09', '2019-11-30 17:50:57', NULL),
(295, 298, 'baharuddinagn', '$2y$10$nkN4uzjnDUedO0AHZ3QtcOXbjHROtHIFrs0EjJIS7.GhAQKBmtJUq', 'ZUIzR3BDb2RyM1NnRkM1MTZrNEswdz09', '2019-11-30 17:54:22', NULL),
(296, 299, 'youngchris', '$2y$10$g2OGBpC720MEWW8ztiYdf.PlUAciT9nhtmABoaypT0/4rxCLa11rm', 'WTA2eGdIcVlrZEhPeS92WHR5YnMzdz09', '2019-11-30 17:58:05', NULL),
(297, 300, 'mabsyudagn', '$2y$10$PHyTmy.zWJ0Q8mNHRAjis.w8PieGZkVd4hVY/Dq4m5nN64UGrwQxG', 'c2U2U0hEVlkyWkszY3Q4RGNSeUNYQT09', '2019-11-30 17:59:11', NULL),
(298, 301, 'rijalagn', '$2y$10$TZacQFko3qVK1dIzr.rd6OxL3bIaWPqNNUyO34i3XpGweho4gbR1q', 'QlphWWtubzhOZjlyWTBycVkrUUF2Zz09', '2019-11-30 18:01:16', NULL),
(299, 302, 'solekahcof', '$2y$10$zYzXR692dJtfHr5MW0YQHuw6JrQQtNWzs0TTql6k6W6NMY15MNUSq', 'MVcwcXhBWWJIZ1JYeFVCS3lLaGswQT09', '2019-11-30 18:04:19', NULL),
(300, 303, 'ettyagn', '$2y$10$J0ohiJeqgGp4w8Bm3W/C8.NveBpvX5rv3CIKhrWgMciqSwLWAceWq', 'QUdaWUhxZktJcGg5cmduc3IrUXIvUT09', '2019-11-30 18:09:07', NULL),
(301, 304, 'sadriagn', '$2y$10$vvlhyi1lFwmdaH4M0o26luKvZhb64teIx0hQuTmG/sF.BFgN3i.bS', 'MFgwQjkvS08zNlM4TlJDdEZha1V2dz09', '2019-11-30 18:17:28', NULL),
(302, 305, 'evaagn', '$2y$10$aO4wjy3/7Hb19nmyXanpEuNPxh3n0Lonxxzm6EKXGU4tRzcJi.Kd2', 'aVErZ0hmM1d6V0RUVnZCa1JqLzNsZz09', '2019-11-30 18:53:06', NULL),
(303, 306, 'ribkacof', '$2y$10$Aq8rBKst2pBzhJR0DMwEr.d2/Wq64XrEq8mNMb4RVPB/ugj2Zri/2', 'RlV1ZSt2NHpNc3lWUTBZYXZ4MDFpQT09', '2019-11-30 20:24:40', NULL),
(304, 307, 'almeera22', '$2y$10$7fZmSzREzndD2HwaeD4BYuuogfiqFUgaVAJKP3XJkCHvLX90pxNhq', 'MlQvS0lNNkZSSGtrTytoVFIwUFFCZz09', '2019-11-30 20:24:46', NULL),
(305, 308, 'itacof', '$2y$10$JUJDBokyf7.GwndRwTvmWuLmb4UMq3gGrn30LpRwBwmVFbtMYfrjm', 'WFJwaEdVaTdwb3lPdThDUFhEMWM5QT09', '2019-11-30 20:26:31', NULL),
(306, 309, 'ribkaagn', '$2y$10$sl4Xv.i2E923qwdIF.aaxO1cTViKtAiogN6eXHRovvQWjl9ngtZZm', 'VS9PRVVqdDRxdktXM1h6RXdLeUxUZz09', '2019-11-30 20:28:48', NULL),
(307, 310, 'alyssa22', '$2y$10$EjhZLDkQm1b7OatZhwYtLu5oZndutCOSIng5fof8cD3xOL9CPSelm', 'Z2V3aVFTS3VORTdaLzU4NWNLcC9tQT09', '2019-11-30 20:29:03', NULL),
(308, 311, 'rahmanagn', '$2y$10$cGUZ/mlkji1z2AquYtaTN.lmRqWpL./W/d7m8gGVtgAJdrtBxGnM.', 'aCtVaVhDczRTVE8rWjllaWMyT3Fudz09', '2019-11-30 20:29:35', NULL),
(309, 312, 'hasmaagn', '$2y$10$QRhKo579tbmqNb5V8McalO4gEgvcR5aigfyzEITjNCsbYhGIyozCa', 'Vy9oWnYrTFNrT1JXeVgvTitxMWRGZz09', '2019-11-30 20:32:05', NULL),
(310, 313, 'theresiaagn', '$2y$10$/V8a2LGr1K2bxP3y..WP3OzNUhkzoxaJEOFIRi4K6/V1xTLwWvSgu', 'cFZtc2tNK3ZUdjk5cHlyUUE5M0lVQT09', '2019-11-30 20:33:14', NULL),
(311, 314, 'yustinaagn', '$2y$10$Kuqf5eclwWEo8F60DJtljeq/JvZTeypUCFlvmEipj1sjg8gCggcCC', 'NEN1SWdkYURsU0k4S0Vpd0h6NkFKdz09', '2019-11-30 20:36:23', NULL),
(312, 315, 'baheriahcof', '$2y$10$ie9WYiuKuynxi51UY2UsAuZZVnO2CPNIQANXTkH9QhGpLN7XJvra6', 'TDlTUTZ0K3hUNnVwRlpuZWpiNU1vZz09', '2019-11-30 20:37:37', NULL),
(313, 316, 'fennyagency', '$2y$10$pn6rTTS/er5vF0ZVKz2AOu3kfUmdvsIy9RHt29jt4jSg..tXruvhS', 'SmRuN3hPWGg2SDZLcmtlQkNHekgrQT09', '2019-11-30 20:38:06', NULL),
(314, 317, 'ranakagn', '$2y$10$gYbp5CBYu0f3y9lEAyffoOTyb8cCXU0MBfmv1rYEMBVDsQlI/IsaC', 'N2QvODRITVdsZVNXWXVXTkRTUkY0UT09', '2019-11-30 20:38:56', NULL),
(315, 318, 'ritaagn', '$2y$10$N6DQmab7RzVUUZQeTrEL2.TMfZ8ApY3DbRVnN7Ri86Hmvl2Ecci9O', 'U0JqYlY5SGhWNFFrSTJreEtaR01Ldz09', '2019-11-30 20:42:18', NULL),
(316, 319, 'baheriahagn', '$2y$10$ELFzEiKNR67Tz7mp8cHmLuY.hZM1NSpWWNBQ3DSno/n8c9t0XqjWm', 'N1J2RHJyL250SVFPT3RQRUw0aDl6UT09', '2019-11-30 20:43:22', NULL),
(317, 320, 'rustamagn', '$2y$10$ltXdNViZNTtYFJD3WZ75yumfPxHK/EetwVn913V/80XGQhyaKDW66', 'RTJHa2s2ajc5ZWlPQjc2OXp3cWcwUT09', '2019-11-30 20:44:16', NULL),
(318, 321, 'piteragn', '$2y$10$MDNZIEgwu2gAS7LQLFUkX.OeuHF52ZhotNkyWrarx2eb2BAQKgY.6', 'V2RVdnZRMHM1aWVqYzJ3bE5SQUh4QT09', '2019-11-30 20:47:20', NULL),
(319, 322, 'rahelagn', '$2y$10$rr04Wktl1XRZF95/Uh6bruyEN6oJdMEb9KANwo1V7gUUmJT7nJWve', 'NmNIa3RLQkhkT1g2TUtwT1NhSkt0UT09', '2019-11-30 20:49:45', NULL),
(320, 323, 'yessyagn', '$2y$10$/jWXnYZ.Oy6Isqw6BMtB9ufLJpWjMtcOPz9qEbTuJ0TulDQc6AuF2', 'N2t0dDBlSlRRVThDSlAzNHl5Y21ZZz09', '2019-11-30 20:53:09', NULL),
(321, 324, 'veronicacof', '$2y$10$5eZmmEEn9eHBrMurXZ.Zi.dfotR6MDSe6R7cZ5Pw.0PpP78WQmfoi', 'NmhvZmtKcmQrVnc3Q0lFSVY4cmRBQT09', '2019-11-30 20:53:17', NULL),
(322, 325, 'theopilusagn', '$2y$10$NXHXukZeIOjsjyzJwd0a1OWtGD0ryAGYL5VyPgS4NkoxU2irhezWS', 'eHg2cDh2UmdEbzRIeWw4WXoxaXYvZz09', '2019-11-30 20:56:24', NULL),
(323, 326, 'pasarrinagn', '$2y$10$4bist9H0YD4MitmEqtagh.DYU6imG6sbs7GvBuD6BAGv87oqkM0JW', 'RkJlVlNJY0xkdld3Wm42eC9FUnQydz09', '2019-11-30 21:09:20', NULL),
(324, 327, 'maemunaagn', '$2y$10$NrBBsJU//as4H9M8jZYx4eDQsb2kkxg5F8lqSrqxhCXUz.uLC9Fu2', 'ZXNseVVOdk5WRzh5dEVMRjJBWHM1dz09', '2019-11-30 21:09:24', NULL),
(325, 328, 'floraagn', '$2y$10$EtM0BlGZV5QKWW7RK/ZA0OrwSMjCNI0opVBPohBE1wYAy.BiYhOJ.', 'RFZoVkw0eCs2WUZqVmRmLzZVdUVZdz09', '2019-11-30 21:12:00', NULL),
(326, 329, 'yacolinaagn', '$2y$10$F/MuWn0Dt5NGRgtGzcu.5e96CuQhjXUrL8ESiOIBFbdFHSaWnkw6S', 'MHN0bDdNOFVvSzc5SXBFN3NvWXdsZz09', '2019-11-30 21:18:09', NULL),
(327, 330, 'aguscof', '$2y$10$Z6BayUM.MyfLWGlvDK.x3uP6VP3w0WFeeEX5jSAPM9ulyF58Ijw5W', 'UVNmbCtTSkxrTUx5S0lZWjhsYVZRdz09', '2019-11-30 21:18:22', NULL),
(328, 331, 'shofyagn', '$2y$10$3dm7A6t6j/AuVkdhiAiXUewJFxI7aEloknrena6x113Tw9ILAuqZm', 'NS8xNE84OGJZd201Ty96Q2ZnTVBhUT09', '2019-11-30 21:20:44', NULL),
(329, 332, 'esternariagn', '$2y$10$FHiX3CyvlvTZSGXRLNV22etXAsljFQXbZKr/Wu1b.VfROwHf.2yvW', 'TzQ1RW5ia1ZRSkJDWTFDbWFHMUp1dz09', '2019-11-30 21:21:13', NULL),
(330, 333, 'mulyadiagn', '$2y$10$ALHZJnl2cjPQKilxJOHuUOrDvuKAOt9IiSksncynj7MERcuavSDNC', 'aTV3MkRvcU9IMHZvZGpsckVBR2p4QT09', '2019-11-30 21:23:55', NULL),
(331, 334, 'agusagn', '$2y$10$Bc1/qiz0iCsWup0Zi6jpwuicKRlgONUcN90ATIILJABK8DA2cF7J.', 'Y0F6dUJ2TzRtVnlpYzBvYXZkTGhodz09', '2019-11-30 21:26:15', NULL),
(332, 335, 'torpinagn', '$2y$10$a/NJKg19ULiBS9TNJ0GjS.4TgcKLZe7CJD596YIFnJGlbq36qx2GG', 'T2ROK3hCMzc2c05qTnhLakpDTVprUT09', '2019-11-30 21:56:20', NULL),
(333, 336, 'paillinagn', '$2y$10$E8tPhAHv6eY.w3v0.KHGIeyuwIgPIZV36RPNcIuVnq3c1WjlHJviS', 'VTJYRzEwTDFlbDZmR3AzRXh0VktGUT09', '2019-11-30 21:59:45', NULL),
(334, 337, 'butetagn', '$2y$10$6IsZ2AuD5chTAZldrmZ6Puy7TKmyvIHPaNUOyGfsL8EC6e6Dc7/Gu', 'TEMrRzUrd0JyL0ZpakNmODk1eFMxZz09', '2019-11-30 22:01:41', NULL),
(335, 338, 'jarwocof', '$2y$10$n/ucc8bm0R.GiqyvmsISkuQM4NPt.8/KVFIZ6MCT3zxYqaxIk3MgO', 'TzZSZ1gwZERmZndFN1hqbUE4OW5TZz09', '2019-11-30 22:03:37', NULL),
(336, 339, 'adrianiagn', '$2y$10$J4/LQWh.SSA.0GTSU4Dulef0KLDrSf28v9LTzhHCcOfMZdWUV.0eK', 'Rlg0Q1pwS29mVUNXQ2xML0wwN2lzdz09', '2019-11-30 22:04:07', NULL),
(337, 340, 'aditiaagency', '$2y$10$hGufvGb0gf4ijcziW3ejOeBHIe9md6NaqORIteIuK6anDroQQ866.', 'ZGV2RzRWeWpacUxEWWlYakkvYi9mZz09', '2019-11-30 22:04:23', NULL),
(338, 341, 'jarwoagn', '$2y$10$mP12Jk6/7TRP48OgBv/m1uKFWeJyYGGeO4HM2uA71eYIVim45sNte', 'bTNqUkY3dWJVK0N3dHpYLzc4eWU2QT09', '2019-11-30 22:06:38', NULL),
(339, 342, 'serinaagn', '$2y$10$uJh8Y5fSDhpCGq24NgaoQ.X7f1Nx00wGVpcdV1k0l8ajDHyAhF/7C', 'bThkTlVocVYxT3JPYk1vZWdKUExOUT09', '2019-11-30 22:08:12', NULL),
(340, 343, 'fariziaagn', '$2y$10$GZMFAlgHPO.8ddCekDCF2.AKXA3IsSaSuG9/RVtblqASPizA5mYeG', 'NTRnQmlRR3p3RWg1MXVya29vdVlzZz09', '2019-11-30 22:08:35', NULL),
(341, 344, 'dianagn', '$2y$10$cA9watz/J/g./iRxt1mEt.xIZbPGZSFYIATPzllvFrh.5GkPWY.Qq', 'MkJIYTdycVREQk1RaWtQeG1ta0puUT09', '2019-11-30 22:10:39', NULL),
(342, 345, 'satriyofounder', '$2y$10$jbwoPfwh/negWifVvbXRbex25hHUlWQXm1giPIZTfKLjoZyymJZ82', 'SzhHQVpIUUltbk13SmhrSjJpaVVEUT09', '2019-11-30 22:11:56', NULL),
(343, 346, 'robertusagn', '$2y$10$i57k4CP0LHDv1GuK5Nv0BuihFgPT.kHIrS8imnDwjyz1lxP4J6a36', 'cUl4Um9DRzBueUhtcU9abVY0MmdRUT09', '2019-11-30 22:14:01', NULL),
(344, 347, 'slametagn', '$2y$10$SZUcCppVyAaZearpiDcpPe6kx1/8A8U5RZlTtAwbQoJjhukBbm.mG', 'Rm9BT0dLMHl6QkdMNGQycElSQ0VuUT09', '2019-11-30 22:18:37', NULL),
(345, 348, 'satriyocof', '$2y$10$GAYbJ0BJwObRr8W7OeSO4u5qMkT9Mvab.loigY2/dxAbIjchm7aam', 'NU1jR0tmN2tLVno2YkJnOElRSGdOUT09', '2019-11-30 22:20:44', NULL),
(346, 349, 'andryagency', '$2y$10$okcUXV9kyrnqWmgvi/gjXuYpvGafiurw4Bp8zu6f3CiloEbgVu9Vy', 'R0c3MGlYVFpwUE1SdisyVFp1SzZEUT09', '2019-11-30 22:21:43', NULL),
(347, 350, 'karelagn', '$2y$10$YKS2Y6c0bSiydLlP.xxT4ubsAmxWhWV4Iouv0Og4KvJjtub/TMskO', 'WnZkb1BndDlmZlBUci9oeVI5aEhvdz09', '2019-11-30 22:21:48', NULL),
(348, 351, 'darmawanagn', '$2y$10$Jlxtujy99WM7lVY7DFx6h.Fvi6ArmlFKB6I1Ws5rlaBWA3jR4.VAa', 'VjM3LzAyZXpsMWIzNUlmd0VKZEx0Zz09', '2019-11-30 22:22:50', NULL),
(349, 352, 'yuanitaagn', '$2y$10$9iJUH/RG7a9mogqu0hqGseRxM38RUmvHwSnwRCvxcwC3WiMqTTkzu', 'cVNSWEZQNFF6RldseERJRGx2VzBOUT09', '2019-11-30 22:25:21', NULL),
(350, 353, 'satriyoagn', '$2y$10$kaOHtP1THMHofAqRqbFaveHCiKCc4mxVCyuwHyTVGgg5uL5MtS1PK', 'TXVjMWdUeHFWVWUrSGFMUitoRFNkZz09', '2019-11-30 22:25:55', NULL),
(351, 354, 'hasnaniagecy', '$2y$10$QbfT5laOboQe0w4eDy8I5eiqwMmLueKX1wiBpl3hLcs24UnzKeZPe', 'MkRkRE81VEdpNG5vOG9SU2RCVHhiZz09', '2019-11-30 22:26:25', NULL),
(352, 355, 'julianaagn', '$2y$10$qWqSnAbpFUgHYk4vyHhQJeMy3Adl7GD92s7sSZLj.iYP0KBCdEiKK', 'VVErRFZqVUhEM0R6U2ppZFdIZGN3QT09', '2019-11-30 22:28:42', NULL),
(353, 356, 'yospinasamben59', '$2y$10$bK0tPHkIDmc8POdcB1mjZ.zw8Bt2KkfjQJBFj1.lWc88ZZIxromG.', 'akpzVTg0TEl0UjZZbGk4aHRaQXVLQT09', '2019-11-30 22:28:54', NULL),
(354, 357, 'andiagn', '$2y$10$ZT/l9aaECcBlH9akmaTu6OYM30ieyyghODL/.2w6AwE5YrjW/Q1mK', 'VE5RRVBqeDNCQlJLZ25oc3ZiSlFLUT09', '2019-11-30 22:31:40', NULL),
(355, 358, 'alfilcof', '$2y$10$bRMZtwhnGYymZstQ4n5u1esAu5bMrwCnaQkiAsbMPBdlSZLtFEIaq', 'VjR2b1F1dG1MU3pFQmlEZERzM3EyQT09', '2019-11-30 22:34:53', NULL),
(356, 359, 'imeldaagn', '$2y$10$LOFZrYtzJBe7jPnn.CknFufxCaDENu2dB7dU2tTKFnndx8aE5W2bq', 'VGIxcmVkaVZQYWlhbUp3T1kyUTJSUT09', '2019-11-30 22:36:34', NULL),
(357, 360, 'alfilagn', '$2y$10$V14UFfB.lfl4ArneKV8ideTKg78QSCqeBqc/xmeqX5kdfzrwbBxJG', 'NlVTWXVCbU5maFZDb0pWVEErVEREQT09', '2019-11-30 22:37:41', NULL),
(358, 361, 'jimmyagn', '$2y$10$TGlV/rd/eX.t2lrOnCjVeOYjHcw7215Ghc/y4XmtwjtI1Tg89JYGu', 'ek5vdDNVNGJ6RjlldmkyeXFKM3VPUT09', '2019-11-30 22:39:34', NULL),
(359, 362, 'teamelite777', '$2y$10$hD/v8PY.cPryvCYMFq/f/OguqMg33J409rA.Q4WlTw2a9oobF.duu', 'NmI2cWU1YXN5V2M0UHdvNk8rQmZjUT09', '2019-11-30 22:39:45', NULL),
(360, 363, 'apriantyagn', '$2y$10$CpeyswCepQFnFWFp4H/67eVNoXBUEnWo8PpFOUdttux.gGykYtbAa', 'OE1HMGdvdlJSQnNCckEzM2VjUVpjUT09', '2019-11-30 22:42:23', NULL),
(361, 364, 'mayanti01', '$2y$10$Hx9VKaD2Pf8HTuwFeW5useBTvAWpGfrBrMo/e/53qTTMoQsFlKu5.', 'bVllYis5eHUvNXRsWmFSKzFGRXBJZz09', '2019-11-30 22:43:36', NULL),
(362, 365, 'nickelineagn', '$2y$10$EucZhCsawkDhG1dEsWwZe.VNnBO4wlXEOCve1cRPYqp8HT9OKFrn6', 'K3YxakdSalpWYTcyTGZ3NmV4RytCUT09', '2019-11-30 22:51:18', NULL),
(363, 366, 'belmanagn', '$2y$10$6jTFQs8KIKDlCwDf7dXgkukqzVHlVQnz.3yxD9tmhrrJHu0exO3iK', 'UTBDTHJWTURlVHZPOCtKMkdRb2hJQT09', '2019-11-30 22:53:58', NULL),
(364, 367, 'suardicof', '$2y$10$puE4za/DYBQ8M5GaOZLXAeOaAlZQODMz2Ms0yDiASE9q9qhN75uJm', 'TnJYdGRQclRkQ3U5TG9pVlNDeHhSQT09', '2019-11-30 22:54:23', NULL),
(365, 368, 'hersiyati01', '$2y$10$MV2mTTOKWlLtyoXXs8EOceGTUo7NCWKM2a5bkgJHph3clcVGlVvT2', 'VnVJVDJ3b2JrZW5WMEZ1MFdVVmJrdz09', '2019-11-30 22:57:01', NULL),
(366, 369, 'suardiagn', '$2y$10$GFdXHotY4CSHIVMVsSAcXeeJR67t1ZXH.NH/8BxD7r2dMKElwpws6', 'QkRVbGNrRGR0bzd2d0paSTBBT28rdz09', '2019-11-30 23:03:03', NULL),
(367, 370, 'marselinus01', '$2y$10$Yqy0R4XvUmFdB6gAJEggZOJ7u5hcJEFDns/aMWR2C/FcBqB1yoIn.', 'ZCtPWE42VTR0OUN5M3A3VEY2Mmk5QT09', '2019-11-30 23:06:25', NULL),
(368, 371, 'agungcof', '$2y$10$zP3RGxizuzW0tVfAcil8fePGQ6sVoA1q/X34/b3QF78FRsjJphymi', 'Vk5SU2g3TE1tTk9PVVZZU0hUUUthQT09', '2019-11-30 23:17:10', NULL),
(369, 372, 'agungagn', '$2y$10$A2LP1YCuVd0IYCvwWsNOpOEsYA9/kVaTrV.EsLRF4.FnUTbdLE6am', 'U0xYcEFnMDdjVkpwVTUzOHJWRzE5UT09', '2019-11-30 23:20:26', NULL),
(370, 373, 'adhycof', '$2y$10$JqQ1lpc7GBMd4ZHlCU05leYc3kQ4Q9dUPMZVI82H2fiPa.w2ZTJCi', 'dlczdjlMNmlGd21UZ2tndGh6ck1pZz09', '2019-11-30 23:28:27', NULL),
(371, 374, 'agusagency', '$2y$10$VJwYLnCvQIVOIhCZoe1Ix.jiMvZPhd/s..7YvpMM6wha4lGGtofk.', 'ZXM4SjUxTWRFKzdwaHVDTjNwOHdkdz09', '2019-11-30 23:41:13', NULL),
(372, 375, 'adhyagn', '$2y$10$2gz6y8WJPadxxmHbfGufP.RGVymEcU5jkhmQdEUBbfZIW1WpmyvyW', 'V29aM3k5RXd4bmlqWWxWVGlMajUwQT09', '2019-11-30 23:47:46', NULL),
(373, 376, 'cakoagency', '$2y$10$REHDecmY3FWnRat8p9Ii9uIV7m4s6qI4mCuEM66W95VOopcRzYC7C', 'UGRVeDNsZjkremF5eGJmNWdLRUhKQT09', '2019-11-30 23:50:31', NULL),
(374, 377, 'manno01', '$2y$10$CfuNDCdzBtBQ30w4TOzjQ.Pc2T.uktJDRozAlye8aJTybKF66S0ci', 'Tm5ZRXRxeU04VXpoMC9LaHh0RXUzZz09', '2019-11-30 23:54:56', NULL),
(375, 378, 'dodycof', '$2y$10$1e305bq6r6qV7wFPaI/we.DsDxCWMeVh9FuwPjq95RiaAQGiRIc56', 'ZHVVM1FQL081UDRVN3ZSSjdBTEZvQT09', '2019-11-30 23:58:13', NULL),
(376, 379, 'dodyagn', '$2y$10$PBE4Tj8oPPRLds6HbbWfAOWPQarjSqG1Hep9ow6Bu38ofyiaWotNW', 'dE1Nc1pPZ1dGQmI5d0ZrWTdWMXdPdz09', '2019-12-01 00:01:43', NULL),
(377, 380, 'abmider', '$2y$10$YQ6cy3TqUKfKFvLTO8UIu.tanKd8EK/Jp6a2XAekGT8SSwL5h.hDW', 'eDY1aGk1L1lSRGdHeCtMdFFRT0xaZz09', '2019-12-01 01:22:28', NULL),
(378, 381, 'serlypakasi', '$2y$10$ktgyhosKiGZnxJgNlltMPOz4L0FvwugOHnXeCORpIdjF7kQ6E7XYe', 'bTVZSE1QMVFlamFhb0o1SVpzRlRUdz09', '2019-12-01 01:39:27', NULL),
(379, 382, 'ytitting93', '$2y$10$sCvvQlNDZyNCf3R2m/pWJuECJUvRjnMkSVpjfEkgB5/U5ubuUXasy', 'NVhabzh4aHErV1hoR2x2T29BNzFsZz09', '2019-12-01 02:32:19', NULL),
(380, 383, 'ronii', '$2y$10$1hV2s80CNaMU9qWAqvqUUeOs6UNoQKHqclubbw1Ak9OdN6AGJHX9.', 'NVpDaURCN1BSYVhhWXlkRVQzNlp5QT09', '2019-12-01 02:40:41', NULL),
(381, 384, 'triarifounder', '$2y$10$XDyQLRv/TnY7CYbIrJ7gH.HYWKGBJTn737wq3UHV.h3z/qLm5w09K', 'QkxuaVRqTXV5RE00K1VCWkQzb3FPZz09', '2019-12-01 03:19:01', NULL),
(382, 385, 'triaricof', '$2y$10$SfJQ41Br9iKTVNCmBK2VS.Gi07SgqZhTEnWP7hIT9PZOkJObmviby', 'aFhjTTFnb1FROXdiYmtLKzBjYnZ6dz09', '2019-12-01 03:22:04', NULL),
(383, 386, 'triariagn', '$2y$10$JGUwF2XikGKxB5/uxLwELeMQrQ0JVXRmflX0mLfL021i4ngGs6TMe', 'azBUVjlmQVFYT0R2QzIrSCs0bkFWQT09', '2019-12-01 03:24:36', NULL),
(384, 387, 'desnyagn', '$2y$10$H1GQUWDCDUgHAu49XAR4oeEFBYOJX30iOA4YgVqnH0.Srvv6Db.KK', 'Q3A4K1pmemxEczRPaXlLa2RlZXQxUT09', '2019-12-01 03:38:30', NULL),
(385, 388, 'weyby', '$2y$10$W9phUlqzSjR4OPG6VSmZl.b2Hlh/798.Fl4cgcIvgPz0988amcWzC', 'bStqbW5BNDF6RDZjamNLKzY0dGtmQT09', '2019-12-01 03:42:35', NULL),
(386, 389, 'jonathanagn', '$2y$10$cibommLLbQvqCt4Hmz7TeOlndpC7LnwJR4eZxEYMVpzoojK.xROcO', 'UWRkYnFNcU5CWi9wT2pQVmtQUUtiQT09', '2019-12-01 03:45:30', NULL),
(387, 390, 'aynala22', '$2y$10$fDbDBNM7grIDZt0BAhDPFOnLETZyAnLEHNWgtsBhsX/fsNGht8jna', 'U2Nzc29MYy85dnhZRC8vUHV2bk91UT09', '2019-12-01 07:42:37', NULL),
(388, 391, 'patriotsamben', '$2y$10$gveDRtWHo4HsoV3lyCnbx.1GB885Ozx1pn04NT0WhNZfbXwAU3RRO', 'bE5jMjFJYytxNzhOaGN3R1ArVEh5QT09', '2019-12-01 07:59:38', NULL),
(389, 392, 'danielbalondo', '$2y$10$Lg3GXIg69HvVX36vG3C8BOACz2WWGfXjhls/gWxANWi0eRQ.OV5tS', 'UVhtUlAwUm5QalNuUjJKeTRBNkdIdz09', '2019-12-01 08:45:25', NULL),
(390, 393, 'hamzahmmjcof', '$2y$10$fqtI8lbUQt1x0aHdPeGjp./vr2J06LWvmgr4JgaPJCpzqi1tupVmm', 'UlQ0TTZRd2N0NE1kREdkNTBoOTBRdz09', '2019-12-01 14:19:31', NULL),
(391, 394, 'nurmalaagn', '$2y$10$dgEzyX1Wz.xn1BhWFx6YE.zyyw8nWSqR0rTVTo/TgDHxGkhNZLICa', 'bjhNV3NwOEdBYzlXYVJwS0JtWjlIZz09', '2019-12-01 14:22:03', NULL),
(392, 395, 'hamzahmmjagn', '$2y$10$gyH6I9XBeBmUzknXudb5RufLl/Ofb4yF5Bdgkm7sO0Aungc5Mtfx6', 'ME8yS2pnb1dLSVpIMkxGVGdaekFXQT09', '2019-12-01 14:27:48', NULL),
(393, 396, 'rosiagn', '$2y$10$yJBo9mf0nDt8RDIgyG8acOSMdGWh8EHvRRaiD7bQqfY.XDnQ5l0vG', 'WEZ3WFZYMHVDVFpwME9VQzNmNVBzUT09', '2019-12-01 14:33:24', NULL),
(394, 397, 'meriagn', '$2y$10$cneCrGWz4FTsfUYutF/3QuVdjin8J0S9.AqOu95Za8TqMfaDYQRq.', 'dkk0ekdYL0RTWlVkL3R2eEs2TmhSQT09', '2019-12-01 14:46:09', NULL),
(395, 398, 'heriantiagn', '$2y$10$uwnC831zpww0AFvSWicE0udsHkrwzylOqxQlXXhCjutFslmY1HtX.', 'SFBia1lGb2QrL0JlaHVsYlhNaHVBUT09', '2019-12-01 14:51:32', NULL),
(396, 399, 'nobsonagn', '$2y$10$XqtTw4wgauBSEv0NKWlufeD/LrW3oHVfE3f7KoVMosQX7xF34EPT2', 'YjEzRXlMbUVQRXNWK3MrYWhjVGIyZz09', '2019-12-01 14:57:03', NULL),
(397, 400, 'danielagn', '$2y$10$bRId4UmMr4AIyI/4zFxb2euf93KhuU/sC7F0/WJFYWs0sGwtVMh0i', 'bUlBd3ppK1U0Sk84YUhrWmk4ZkxnUT09', '2019-12-01 15:00:43', NULL),
(398, 401, 'mangaagn', '$2y$10$Od0KOMGEoTiEGzSE5HKiLugt6Lxuc.9h35EjFGcX04yKOxgkigrP2', 'dGpzcFh2T29wdnZhUWdZVmtucmdPQT09', '2019-12-01 15:10:23', NULL),
(399, 402, 'marselinamomba', '$2y$10$yvXVSfYr5k5ZIh7v.crTjuNhxHggzYvrswt53JaW9.ZAI/y7Qs/E.', 'TEIxVDlkY1BDMWx0YjlnRmxTdzRDQT09', '2019-12-01 16:22:54', NULL),
(400, 403, 'dara1234', '$2y$10$tkQrrEYGrQfEv57wOuQGMerNyyP8fVW/bSm/Naq8DiFQc48c1qENq', 'WHdsVmRDS3dNVVZ0SE5yZ0oyVnRkdz09', '2019-12-01 16:29:04', NULL),
(401, 404, 'raufagn', '$2y$10$ILsnMystjzzST.7S0ejcFu33x8eY/TqmM/tyQZjuSnj5OPHnWKJHy', 'ZVJDa0dERkdPTkwzTlJJclg2Z0lZdz09', '2019-12-01 16:35:18', NULL),
(402, 405, 'markussamma', '$2y$10$u4h4KbppBFnGkyQillYs..xArQYez1pL.4KKNkVIYXkCXmh2L9JW6', 'Zk9rd1pVWnQ4enpZL0oyTSt3WHJtdz09', '2019-12-01 16:36:50', NULL),
(403, 406, 'kristinaagn', '$2y$10$NgQS6l9JvLGgw4QbNUrmNOAaRiG2dr2NpMiK7L7yCLiaPD07hj5EO', 'T09SUFE5SitLemE1a0lSM0tCdjlrZz09', '2019-12-01 16:38:10', NULL),
(404, 407, 'herlinagn', '$2y$10$0eCdB32FeyECCbLSiGZl3ODCSbdolO03nEecZpORMegN/LLMm0Fcu', 'UjRZN3VoZGFIOEsrcVk5RmhMZmtjQT09', '2019-12-01 16:39:34', NULL),
(405, 408, 'yuliusagn', '$2y$10$hlg9ksHQ2soIlpuRrf6sY.CI9fkT8v1Vm0pLurslloBYOSCqxtod.', 'WUhMbG5xWWtGQW5seXBibXNrSnVJQT09', '2019-12-01 16:41:12', NULL),
(406, 409, 'adriatyagn', '$2y$10$K5fufEDkPL8Rnaj2De0gAOjnK9aUnIwzeM.oi2YdWWD2d8aATz5MW', 'Zk83ZW9IWjhlb3hXbXVZS08xUHpOUT09', '2019-12-01 16:44:03', NULL),
(407, 410, 'rosalinaagn', '$2y$10$P3Qj0LGJNL3YUdUbFkZ7GOEiRt9p4NCUhGI7C1d1.SCkvqGB8ngki', 'YUJRbzRRZjVCaWdrbmxkdUhHZHJuQT09', '2019-12-01 16:45:41', NULL),
(408, 411, 'felixfounder', '$2y$10$HsahqzSlwJ29/e4cIOGc1eh0Md0y.G6d78jQDzttaARoqUSavC3wm', 'M0J5ZzJLQTVFT2VtZ0txRjE0TUVUZz09', '2019-12-01 16:52:18', NULL),
(409, 412, 'ekawantocof', '$2y$10$Z5RDxKHSBE5FkxLo8PeBjeA.Np0Pw8WpM5z0DDwyMYi36EqoiG.K.', 'YjdyREVISytBVEd4Z1dkbjl2TUhlQT09', '2019-12-01 16:54:01', NULL),
(410, 413, 'petrusmangean', '$2y$10$t.oih4anb8lMx6ZH8ZctIO8G48QAIxB8cVTKhMYIRJNZLAqSJnKxm', 'a0pyM1BhQWF5UG5xSFJyVndGYjBpQT09', '2019-12-01 16:58:04', NULL),
(411, 414, 'sariagn', '$2y$10$G38KC1j25vcbecfEpaJXGuy7ebeznidjGpf8Y3YS2dT9eOE67zQjO', 'dDczK2ZsNXRCbDhFdEtPZkxSMmEyZz09', '2019-12-01 17:02:03', NULL),
(412, 415, 'sahariaa', '$2y$10$ys8iELIYRCdRzwIQUA3HAObhGwIpUH5Ssj91c6qF9vxgtXvIe7bxy', 'SWtDOWw2dUhTYmxYRkVJcHNJbjFmZz09', '2019-12-01 17:04:59', NULL),
(413, 416, 'merysampe', '$2y$10$icazU8zeS4MTxZ9rQ4hjLexQ6ExGPFeCupiDn5NsHvG7UsYoo8wjS', 'V2FIWHZzVERhR3VUZ25VclBSWS9CUT09', '2019-12-01 17:18:36', NULL),
(414, 417, 'merchyria', '$2y$10$KuC/fdUjWkWo0UKtWXakdeuiOaCCqqBl8DcYGNq/2ah7WCgNcaJPO', 'TDZYdDNvOXhXQi9wbWE5MzJkMDI4dz09', '2019-12-01 17:27:46', NULL),
(415, 418, 'herianto', '$2y$10$syWfJ54HuRCPKdn8etkslONVHlhPzjnKiAGK3mVH7/g4ms1IavR66', 'ZkNEWVZkd2htWm53OXZ5cnRuWlN2dz09', '2019-12-01 17:50:52', NULL),
(416, 419, 'daudlopez', '$2y$10$HmUPJz8Y.8M5hQeBoK7.iORiCteVni0H5NgHqLRm5J7Us.9IKs3bC', 'Tm5YVzFUR0JjZVJZOUxQYS9nSjB5Zz09', '2019-12-01 18:13:51', NULL),
(417, 420, 'bataraagn', '$2y$10$7EF4biVESpWp.CITOhAvV.VC4jtOZP2G0hoMMzw9BrVWmcUUbHgEm', 'c3BUVUJKSjlCUm1PTW9WbjdUeHlJdz09', '2019-12-01 18:18:58', NULL),
(418, 421, 'dion2701', '$2y$10$QuRi8264U3o6wwGH3gOpVuHGTrHLcf/XYnKyQ/En1O0eWebe3yoGW', 'dzJncXUvdnovYUFPVWdRZnh2U1dMQT09', '2019-12-01 18:53:01', NULL),
(419, 422, 'buaraagn', '$2y$10$MetlZuqeFzaV/9yI8VLHYOBtKZJ/sUis.jRDTCgosqir8vatkRzda', 'cXJiYVRkTWV2cWJDbldKcGlKN3pUdz09', '2019-12-01 19:17:12', NULL),
(420, 423, 'buntu1234', '$2y$10$m4ee2V1KTT.RoDAZ08KDTeYA.wgiBAsLYf/B6WB/eQR89US.PjbSW', 'Z0JzUG81WmRFZS95MElrNHZDMkljQT09', '2019-12-01 20:01:00', NULL),
(421, 424, 'mince1234', '$2y$10$1k292M0rPrIRKtP3wcHNL.aHqb6l4rvluPkKv/KejWi1zEGtCuZm6', 'cVRnT0hQNE4wRnBXZnhZRUZBZU9zQT09', '2019-12-01 20:06:07', NULL),
(422, 425, 'charleswairara', '$2y$10$uNBPgClcRAb8765VSUUcbOQyihzeP8lNRXo4QxmNlqbSM7kOCLo7e', 'L3lMeXZrbE9kRm0yVkxEYTZ6ODl2dz09', '2019-12-01 20:47:42', NULL),
(423, 426, 'daudsipitoto', '$2y$10$GverZdflJ8UfqEQZjj4FXeO58X6d1WXF.ducWAL6oWHOyHanUq7Km', 'a3g1azQybWdSS29pTkxHQ0xSRXFQZz09', '2019-12-01 20:52:59', NULL),
(424, 427, 'edi123son', '$2y$10$zdHkqsvOdV07SSqlxcL/BeAezuvuzADKW7EwY/Sfqd.MvVYwZXcOy', 'VXlVQWljbHRyd0RzaHUxUzNDb2pHQT09', '2019-12-01 20:55:30', NULL),
(425, 428, 'averijldjaja67', '$2y$10$9AfKUJ9ZY1V9oP76F1l9LOHS.rFOIVNB1hJVWMgtwW7T6hN313k7y', 'UWtqK29TaWlHdDIzWjY4azNqMTdZUT09', '2019-12-01 21:26:08', NULL),
(426, 429, 'desianty01', '$2y$10$xOwT91o9MDl2SeiYkoObs.Wc43BJzFFiabEWcUdLr8HcW8hGILY1G', 'QjAveXhSMTBoNExvdXRGV0tBSFJTdz09', '2019-12-01 21:38:31', NULL),
(427, 430, 'wahyuagn', '$2y$10$o1obRDHzBqqtIidJM4k4Hu6WDS7bVio0QjUyrs9uncH/MinGiF.qC', 'akkxSjhQcHl2VUQraFVOek5zelNLUT09', '2019-12-01 21:44:50', NULL),
(428, 431, 'umarmbr', '$2y$10$vHdWR3juoFB59/JPJopB.OrEKrPdR.gLBlCFb.BRtpR9EaKT3UcOS', 'NnNzc3l2eTBOT2dWMmlrakptVzIyQT09', '2019-12-01 21:48:11', NULL),
(429, 432, 'esry01', '$2y$10$3H9w6Vze3h0jIX5Aj5C6tOTFD1rE5v360VC3uYauITRq.CG602kWm', 'UnFxWG5ER2RKY2ltZE9aOVphQ2lZZz09', '2019-12-01 21:59:38', NULL),
(430, 433, 'yukimbr', '$2y$10$2ERwKCJQGJ9xfX9l.nXyh.zwiyghDVyzSRCrZFPuaTa7faGUScBZq', 'bTc4ZlNMb0xVQ0xCTjlMc1RGS1VDZz09', '2019-12-01 22:18:19', NULL),
(431, 434, 'agustinus01', '$2y$10$vaumITTIkMQ5NAnxkcL86eVrainERhwlTMr.fTQ7uyL9uw.UUVlOG', 'cDZ2WmhNZWUwT2plUUhkeFJaR1BrUT09', '2019-12-01 22:59:35', NULL),
(432, 435, 'marwanmbr', '$2y$10$kmq3DaTERwr3fqyiLfP0AeFSPOU4wnKrMC.wfXkU0BnlAJFtiUJ8W', 'V1NIOEFDOXMrTmVyeUNLejhMWDFrZz09', '2019-12-01 23:30:03', NULL),
(433, 436, 'akbaragn', '$2y$10$2bQATMvOZz6odL7Ety.H3exISBT5aDGUgMDt7l4Bvyp6LkoJ0iN6K', 'MndiQ3FBNVVhck9yamNVaC96UjRldz09', '2019-12-02 00:03:12', NULL),
(434, 437, 'adzan77', '$2y$10$ngofPtgqQZzHbheYCqtVQeZ2PgBBJZpjtRgMuRa91EFxPKXUEUVbi', 'ekpHR3BsWlY2TmhHem5EZUd5R242UT09', '2019-12-02 00:09:11', NULL),
(435, 438, 'kadirmbr', '$2y$10$w3fuuV5V1QIjrsmJkFtXYutqKV6cN.Cspj8OzwKt4Eth1P35Aefdy', 'NlNYVUxYVVBGVkx5aGVZOFdDd0FMQT09', '2019-12-02 00:11:07', NULL),
(436, 439, 'adzan88', '$2y$10$dkgyFcBB7i3bGZ0J0L3/DOgcZU9IdnWBfFZjTcTR6afcCMROz1ehO', 'RzVNam1OWjY3ZDUyRXhkanRSQmFNUT09', '2019-12-02 00:12:50', NULL),
(437, 440, 'adzan99', '$2y$10$7xyz.9aPpG1wkr7.TxTUq.hnfXrphVYrj9pzgCv8kT0rwuC0Lr35O', 'RnlHOGZJV3JMNWpCMDNPY0hVUDRpQT09', '2019-12-02 00:15:47', NULL),
(438, 441, 'roswatyagn', '$2y$10$gkGQzf3mDKTUOa58znFnPOFE3MDQuGUhFqfzPVsBCxhoUXZ3YYEdi', 'OCtyZ3kzcURVaXZvb0I4VWNPTWtnUT09', '2019-12-02 00:20:40', NULL),
(439, 442, 'marthinasembo', '$2y$10$pOnplXGCKnHdWR4v6a8M7uM33h0LNyKHoC7qsd8iSIoSiipqHDwoy', 'aGlUR0ovV0dqZEtoTzV1bEJqK2RUUT09', '2019-12-02 00:23:29', NULL),
(440, 443, 'wanamuly', '$2y$10$OtRMlj2/0Pdpt3Vpn2KgoOeudKo1U3LmBTdIXI9.uPatIlqTs.XJa', 'ZjM5a0NaellOdFZWaEh1VlFyb3hIUT09', '2019-12-02 00:39:19', NULL),
(441, 444, 'bochae77', '$2y$10$fkHIoJwACuqtqjFBU0p3p.40OCQ8DOr1eAY9VlSzmzHArEAfO2WFO', 'WDlTNjBjc3BiUTk1dFpPSll5L1pqQT09', '2019-12-02 00:41:19', NULL),
(442, 445, 'hermanagn', '$2y$10$b2VyNPikhiJxy09HfXj3xue0aglIbUJSOC5vh57416cVDL3uxhXPm', 'b1haeWZHZWdQSGU0M3ZXaEYyenZzQT09', '2019-12-02 00:44:04', NULL),
(443, 446, 'virgiawanagn', '$2y$10$r57Chwxw1iFF5mqXK0ri2eHGJpQ2PFWExXCrcgfQL09p8kms0Ul9a', 'ZzQ4b2lnV2N3ZzZQSFNhZVhtUHJqUT09', '2019-12-02 00:46:35', NULL),
(444, 447, 'dimanagn', '$2y$10$yMhaaCF5unQeg1dL.zwuseU2YR2VN.qcifGY.ouhoZWzd0e/uPVNK', 'TWtCd1M0ZDRHd2hzTUVJbzdyYW9GQT09', '2019-12-02 00:48:39', NULL),
(445, 448, 'mulyansyahagn', '$2y$10$PvqwlUxqrYMx8K7An5Kp9.wwRg1GUPnjSS6/yliBdPAjINHCZ2C0G', 'VGltcTNzdHRQQlhCeG53bnk3dUZndz09', '2019-12-02 00:50:23', NULL),
(446, 449, 'ludiakarambe98', '$2y$10$4Ze7wGLmLJtYPiMfrmPHiO1427u9IpJURll4axNsjMCLBJbuxpKse', 'RklXOTYyN1V4RStIeFBjUnNPdHNUUT09', '2019-12-02 00:52:01', NULL),
(447, 450, 'sudarsoagn', '$2y$10$Dbik8g0TU0UTlmTqwNgPIeAIuuAghfnf6QU/vt9nwUWggcivZRmb6', 'd1drSGU5RWNKWW1YSlpHamVWNVNBQT09', '2019-12-02 00:52:13', NULL),
(448, 451, 'nursinahcof', '$2y$10$uiWCCjeYuSTKxTEfeOPi8u6g9L/v86kgXRWynDGOEOkSCebnzvdG6', 'QWZhSDNKZ3BqWDV5dlZsM25XVFRYdz09', '2019-12-02 01:07:39', NULL),
(449, 452, 'thaibagn', '$2y$10$iQ76.juol53fTV.xePQugu1qOfIiCDoSIy./QT5A1dsRrMU3OK5rK', 'QkQzN3JFV3NxdFRGSU9FSHRBb3BMQT09', '2019-12-02 01:09:57', NULL),
(450, 453, 'widyacof', '$2y$10$bG.9dmLS7ajxaN07oCvPnOB/1nlLisZcZnGoXP9sM04wvswFANB9.', 'R0NLMXZDWk92dXBYMnQ2SlZWMUNBZz09', '2019-12-02 01:12:17', NULL),
(451, 454, 'roswatycof', '$2y$10$agvYRs2IkCiYh79wFIfIJuPkvoWBfqmvIOO9mFg1KN67E/CIR3oaC', 'eHZIZ2lGb3YvUGpOK2VudlRUdklaQT09', '2019-12-02 01:22:13', NULL),
(452, 455, 'roswaty', '$2y$10$XM.4wSLI1yQkzEgEAoYN7uSpoAkRA/RCX0KcVqAwf4cwa7w3pejD6', 'a01rOGxEc2hEditnUCtlakFjaFhzZz09', '2019-12-02 01:25:30', NULL),
(453, 456, 'irawanklein', '$2y$10$j3mA5I2tEjtqrGYq4NKsLeKnu.QKIsPOTA4Zo3ZyAClmWdyD2AcVW', 'WUw2TVNEV2p4aEo3SWxMMHBZbkFFZz09', '2019-12-02 02:20:20', NULL),
(454, 457, 'theresiaheriawaty', '$2y$10$A9Rjl90Nt6OcvmvV9i/RBeVQHFDCXonKqNujmXcd4XZJN1jM4Xzfa', 'T1ZnN0FHTU9DVTdKTFk0NTVYaktXZz09', '2019-12-02 07:32:05', NULL),
(455, 458, 'jefrian1219', '$2y$10$hu/KYPyimWWmh52pMC4y6OKN3WKikVmGrbBnb.EZhMFWdzGVCt5M.', 'Z2pPazNjazREWVRpMS9QYzJrWjkyQT09', '2019-12-02 08:27:30', NULL),
(456, 459, 'damaris1', '$2y$10$d642xudCJZIlX7GhFoRmS.CFHWvGE3Np01UoskpPngjw8uRL3rm5S', 'TUp4ZU45OFE2WU14L2hxWTNFSGE0QT09', '2019-12-02 09:32:43', NULL),
(457, 460, 'suci96', '$2y$10$DvczzvST.vTI5oSZ/TIPpO6oFcPqh.D./Go3agFTHcUqubLk3r6Ke', 'OGI0ZFlBc1JOOW5sRnR4cUtHQnVXZz09', '2019-12-02 10:08:52', NULL),
(458, 461, 'budiantoagn', '$2y$10$8HjizBfoy43zrx5T/IC9d.SU6MVdbk90awUKbVV7mSQbqm.vhs9Ta', 'V3d5Rk9tTGZGZGsvS1JZSWV6NEZ0dz09', '2019-12-02 10:46:44', NULL),
(459, 462, 'rajabdepo', '$2y$10$rwFvJo1j/CT6rJMwsodyb.8J7Jet1MmkWlZc3eTWvIM5fGMSsPLKK', 'ZHdabFQvb053bGZRN1FnbGIra1Mvdz09', '2019-12-02 11:21:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contoh`
--

CREATE TABLE `contoh` (
  `id_contoh` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `contoh`
--

INSERT INTO `contoh` (`id_contoh`, `nama`, `telepon`, `email`) VALUES
(1, 'contoh', '32131233', 'mpampam5@gmail.comss');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id_deposit` int(11) NOT NULL,
  `kode_transaksi` varchar(100) DEFAULT NULL,
  `id_person` int(11) DEFAULT NULL,
  `amount` bigint(11) DEFAULT NULL,
  `amount_acc` bigint(11) DEFAULT NULL,
  `biaya_admin` bigint(11) DEFAULT NULL,
  `status` enum('process','cancel','approved') DEFAULT 'process',
  `metode_pembayaran` int(11) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `time_approved` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id_deposit`, `kode_transaksi`, `id_person`, `amount`, `amount_acc`, `biaya_admin`, `status`, `metode_pembayaran`, `keterangan`, `created`, `time_approved`) VALUES
(145, 'DP301119-01', 224, 10000752, NULL, 150000, 'cancel', 2, '{\"approved_by\":\"member\",\"time_approved\":\"2019-11-30 03:35:31\",\"keteragan\":\"cancel\"}', '2019-11-30 03:22:42', NULL),
(146, 'DP301119-02', 248, 50000172, NULL, 150000, 'process', 2, NULL, '2019-11-30 11:24:28', NULL),
(147, 'DP301119-03', 205, 1000416, NULL, 0, 'process', 3, NULL, '2019-11-30 12:35:25', NULL),
(148, 'DP301119-04', 258, 5000624, NULL, 150000, 'cancel', 3, '{\"approved_by\":\"member\",\"time_approved\":\"2019-11-30 16:21:52\",\"keteragan\":\"cancel\"}', '2019-11-30 16:20:47', NULL),
(149, 'DP301119-05', 250, 10000674, NULL, 150000, 'process', 2, NULL, '2019-11-30 21:25:14', NULL),
(150, 'DP301119-06', 224, 1000765, NULL, 0, 'cancel', 4, '{\"approved_by\":\"member\",\"time_approved\":\"2019-11-30 22:41:33\",\"keteragan\":\"cancel\"}', '2019-11-30 22:08:15', NULL),
(151, 'DP301119-07', 194, 20000157, NULL, 150000, 'process', 2, NULL, '2019-11-30 22:30:37', NULL),
(152, 'DP301119-08', 266, 5000524, NULL, 150000, 'process', 4, NULL, '2019-11-30 23:28:00', NULL),
(153, 'DP011219-01', 243, 20150341, NULL, 150000, 'cancel', 3, '{\"approved_by\":\"member\",\"time_approved\":\"2019-12-01 02:07:14\",\"keteragan\":\"cancel\"}', '2019-12-01 02:05:50', NULL),
(154, 'DP011219-02', 243, 20000536, 20000000, 150000, 'approved', 3, '{\"approved_by\":\"admin\",\"id_admin\":\"8\",\"time_approved\":\"2019-12-02 11:32:32\",\"keteragan\":\"approved\"}', '2019-12-01 02:08:56', NULL),
(155, 'DP011219-03', 390, 30000263, 30000000, 150000, 'approved', 4, '{\"approved_by\":\"admin\",\"id_admin\":\"10\",\"time_approved\":\"2019-12-02 11:49:55\",\"keteragan\":\"approved\"}', '2019-12-01 07:51:29', NULL),
(156, 'DP011219-04', 237, 20000215, NULL, 150000, 'process', 3, NULL, '2019-12-01 10:11:03', NULL),
(157, 'DP011219-05', 237, 20000413, NULL, 150000, 'process', 3, NULL, '2019-12-01 10:12:38', NULL),
(158, 'DP011219-06', 224, 1000673, NULL, 0, 'process', 4, NULL, '2019-12-01 12:23:10', NULL),
(159, 'DP011219-07', 214, 5000174, 5000000, 150000, 'approved', 2, '{\"approved_by\":\"admin\",\"id_admin\":\"8\",\"time_approved\":\"2019-12-02 11:38:25\",\"keteragan\":\"approved\"}', '2019-12-01 14:37:41', NULL),
(160, 'DP011219-08', 268, 30000321, NULL, 150000, 'cancel', 2, '{\"approved_by\":\"member\",\"time_approved\":\"2019-12-01 20:55:39\",\"keteragan\":\"cancel\"}', '2019-12-01 16:25:47', NULL),
(161, 'DP011219-09', 275, 30000317, NULL, 150000, 'cancel', 3, '{\"approved_by\":\"member\",\"time_approved\":\"2019-12-01 20:55:07\",\"keteragan\":\"cancel\"}', '2019-12-01 17:06:34', NULL),
(162, 'DP011219-10', 208, 5000175, 5000000, 150000, 'approved', 2, '{\"approved_by\":\"admin\",\"id_admin\":\"8\",\"time_approved\":\"2019-12-02 11:36:58\",\"keteragan\":\"approved\"}', '2019-12-01 17:43:23', NULL),
(163, 'DP011219-11', 267, 30000463, NULL, 150000, 'cancel', 3, '{\"approved_by\":\"member\",\"time_approved\":\"2019-12-01 20:54:28\",\"keteragan\":\"cancel\"}', '2019-12-01 17:51:31', NULL),
(164, 'DP011219-12', 292, 20000475, NULL, 150000, 'cancel', 3, '{\"approved_by\":\"member\",\"time_approved\":\"2019-12-01 20:56:21\",\"keteragan\":\"cancel\"}', '2019-12-01 18:14:35', NULL),
(165, 'DP011219-13', 418, 30000573, 30000000, 150000, 'approved', 3, '{\"approved_by\":\"admin\",\"id_admin\":\"8\",\"time_approved\":\"2019-12-02 11:27:52\",\"keteragan\":\"approved\"}', '2019-12-01 20:58:08', NULL),
(166, 'DP011219-14', 402, 30000235, NULL, 150000, 'process', 2, NULL, '2019-12-01 21:00:05', NULL),
(167, 'DP011219-15', 419, 20000527, NULL, 150000, 'process', 3, NULL, '2019-12-01 21:02:34', NULL),
(168, 'DP011219-16', 425, 30000432, NULL, 150000, 'process', 2, NULL, '2019-12-01 21:04:52', NULL),
(169, 'DP011219-17', 415, 30000356, NULL, 150000, 'process', 3, NULL, '2019-12-01 21:08:17', NULL),
(170, 'DP011219-18', 431, 10000512, NULL, 150000, 'process', 4, NULL, '2019-12-01 22:02:53', NULL),
(171, 'DP011219-19', 370, 25000345, NULL, 150000, 'process', 2, NULL, '2019-12-01 22:15:03', NULL),
(172, 'DP011219-20', 433, 5000512, NULL, 150000, 'process', 2, NULL, '2019-12-01 22:40:28', NULL),
(173, 'DP011219-21', 377, 15000567, 15000000, 150000, 'approved', 2, '{\"approved_by\":\"admin\",\"id_admin\":\"8\",\"time_approved\":\"2019-12-02 11:47:26\",\"keteragan\":\"approved\"}', '2019-12-01 22:47:14', NULL),
(174, 'DP011219-22', 299, 100000152, NULL, 150000, 'process', 3, NULL, '2019-12-01 23:10:53', NULL),
(175, 'DP021219-01', 429, 10000651, 10000000, 150000, 'approved', 2, '{\"approved_by\":\"admin\",\"id_admin\":\"8\",\"time_approved\":\"2019-12-02 11:42:59\",\"keteragan\":\"approved\"}', '2019-12-02 03:22:38', NULL),
(176, 'DP021219-02', 330, 1000741, NULL, 0, 'process', 4, NULL, '2019-12-02 07:30:06', NULL),
(177, 'DP021219-03', 458, 2500641, NULL, 0, 'process', 3, NULL, '2019-12-02 08:37:20', NULL),
(178, 'DP021219-04', 237, 15000172, 15000000, 150000, 'approved', 2, '{\"approved_by\":\"admin\",\"id_admin\":\"8\",\"time_approved\":\"2019-12-02 11:49:56\",\"keteragan\":\"approved\"}', '2019-12-02 08:39:39', NULL),
(179, 'DP021219-05', 435, 25000451, 25000000, 150000, 'approved', 2, '{\"approved_by\":\"admin\",\"id_admin\":\"8\",\"time_approved\":\"2019-12-02 11:41:38\",\"keteragan\":\"approved\"}', '2019-12-02 08:54:41', NULL),
(180, 'DP021219-06', 435, 25000437, NULL, 150000, 'process', 2, NULL, '2019-12-02 08:58:50', NULL),
(181, 'DP021219-07', 269, 5000152, NULL, 150000, 'process', 4, NULL, '2019-12-02 09:02:51', NULL),
(182, 'DP021219-08', 253, 500000463, NULL, 150000, 'process', 3, NULL, '2019-12-02 09:29:41', NULL),
(183, 'DP021219-09', 264, 500000356, NULL, 150000, 'process', 3, NULL, '2019-12-02 09:32:19', NULL),
(184, 'DP021219-10', 459, 10000217, 10000000, 150000, 'approved', 2, '{\"approved_by\":\"admin\",\"id_admin\":\"8\",\"time_approved\":\"2019-12-02 11:44:52\",\"keteragan\":\"approved\"}', '2019-12-02 09:46:33', NULL),
(185, 'DP021219-11', 209, 10000536, 10000000, 150000, 'approved', 3, '{\"approved_by\":\"admin\",\"id_admin\":\"8\",\"time_approved\":\"2019-12-02 11:23:12\",\"keteragan\":\"approved\"}', '2019-12-02 10:54:18', NULL),
(186, 'DP021219-12', 417, 85000146, NULL, 150000, 'process', 2, NULL, '2019-12-02 10:56:28', NULL),
(187, 'DP021219-13', 462, 5000764, NULL, 150000, 'process', 2, NULL, '2019-12-02 11:22:00', NULL),
(188, 'DP021219-14', 221, 30000253, NULL, 150000, 'process', 3, NULL, '2019-12-02 11:33:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history_comission`
--

CREATE TABLE `history_comission` (
  `di_history` int(11) NOT NULL,
  `id_person` int(11) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE `investment` (
  `id_invest` int(11) NOT NULL,
  `kode_invest` varchar(100) NOT NULL,
  `id_person` int(11) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `amount` bigint(11) DEFAULT NULL,
  `status` enum('ongoing','done') DEFAULT 'ongoing',
  `alamat_kirim_spk` text NOT NULL,
  `qr_code` varchar(100) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `kontrak_start` date DEFAULT NULL,
  `kontrak_end` date DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `investment`
--

INSERT INTO `investment` (`id_invest`, `kode_invest`, `id_person`, `group`, `amount`, `status`, `alamat_kirim_spk`, `qr_code`, `created`, `kontrak_start`, `kontrak_end`, `keterangan`) VALUES
(86, 'AGN-000016-INV001', 209, 1, 10000000, 'ongoing', 'Jln.Pembangunan no 60.Rantepao.kecamatan Rantepao kabupaten Toraja Utara', 'samuel_tempaya_AGN-000016-INV001.png', '2019-12-02', '2019-12-01', '2020-06-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `investment_dividen`
--

CREATE TABLE `investment_dividen` (
  `id_invest_dividen` int(11) NOT NULL,
  `id_invest` int(11) DEFAULT NULL,
  `id_person` int(11) DEFAULT NULL,
  `no_dividen` int(11) DEFAULT NULL,
  `time_dividen` date DEFAULT NULL,
  `persentase` int(11) DEFAULT NULL,
  `amount` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `investment_profit`
--

CREATE TABLE `investment_profit` (
  `id_invest_profit` int(11) NOT NULL,
  `id_invest` int(11) DEFAULT NULL,
  `no_profit` int(11) DEFAULT NULL,
  `time_profit` date DEFAULT NULL,
  `name_profit` varchar(50) DEFAULT NULL,
  `amount_profit` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `investment_profit`
--

INSERT INTO `investment_profit` (`id_invest_profit`, `id_invest`, `no_profit`, `time_profit`, `name_profit`, `amount_profit`) VALUES
(253, 86, 1, '2020-01-01', 'Profit ke 1', NULL),
(254, 86, 2, '2020-02-01', 'Profit ke 2', NULL),
(255, 86, 3, '2020-03-01', 'Profit ke 3', NULL),
(256, 86, 4, '2020-04-01', 'Profit ke 4', NULL),
(257, 86, 5, '2020-05-01', 'Profit ke 5', NULL),
(258, 86, 6, '2020-06-01', 'Profit ke 6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_person`
--

CREATE TABLE `level_person` (
  `id_level` int(11) NOT NULL,
  `level` varchar(100) DEFAULT NULL,
  `comission` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `level_person`
--

INSERT INTO `level_person` (`id_level`, `level`, `comission`, `created`, `modified`) VALUES
(1, 'Founder', 6, '2019-10-29 13:35:30', NULL),
(2, 'Co Founder', 5, '2019-10-29 13:35:50', NULL),
(3, 'Agency', 4, '2019-10-22 19:46:15', NULL),
(4, 'Member', 3, '2019-10-29 19:46:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran_baju`
--

CREATE TABLE `pengeluaran_baju` (
  `id` int(11) NOT NULL,
  `id_person` int(11) DEFAULT NULL,
  `ukuran_baju` varchar(10) DEFAULT NULL,
  `status` enum('belum','sudah') DEFAULT 'belum'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pengeluaran_baju`
--

INSERT INTO `pengeluaran_baju` (`id`, `id_person`, `ukuran_baju`, `status`) VALUES
(11, 209, 'L', 'belum'),
(12, 418, '', 'belum'),
(13, 243, 'XXL', 'belum'),
(14, 208, 'L', 'belum'),
(15, 214, 'L', 'belum'),
(16, 435, 'L', 'belum'),
(17, 429, 'L', 'belum'),
(18, 459, 'L', 'belum'),
(19, 377, 'L', 'belum'),
(20, 390, 'L', 'belum'),
(21, 237, 'S', 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `rekening_person`
--

CREATE TABLE `rekening_person` (
  `id_rekening_person` int(11) NOT NULL,
  `id_person` int(11) DEFAULT NULL,
  `nama_rekening` varchar(150) DEFAULT NULL,
  `no_rekening` varchar(100) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `file_foto_rek` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `rekening_person`
--

INSERT INTO `rekening_person` (`id_rekening_person`, `id_person`, `nama_rekening`, `no_rekening`, `bank`, `file_foto_rek`) VALUES
(182, 188, 'FITRI INDRAJULIANI R', '1700002335754', 'MANDIRI', 'rek_VjU0L2ZOWUJQUjhNNVNoR3BtZE8xUT09.JPG'),
(183, 189, 'FITRI INDRAJULIANI R', '1700004031500', 'MANDIRI', 'rek_aTRMRThtbFBVa0JQU2RrYVptelFUQT09.jpg'),
(184, 190, '', '', '', NULL),
(185, 191, 'MUHAMMAD YUSUF', '8460200181', 'BCA', 'rek_S2ZtNlA1Vml4QWo5M1JRdW1OcFdJdz09.jpeg'),
(186, 192, '', '', '', NULL),
(187, 193, 'DAMARIS PAKAN', '494701022652538', 'BRI', 'rek_cWFTUHQwNU9oTEd3dUhVclRHWFdlUT09.jpg'),
(188, 194, 'MARTINUS SAMBEN', '1520012809386', 'MANDIRI', 'rek_MllHcHVzUDBjRkVNd2xDamJjOEZMZz09.jpg'),
(189, 195, '', '', '', NULL),
(190, 196, 'Febrisathya Mine Tulungallo', '7055008400', 'BCA', NULL),
(191, 197, '', '', '', NULL),
(192, 198, 'Kristina Parinding', '107301006024501', 'BRI', NULL),
(193, 199, 'Britama', '025201025489501', 'BRI', NULL),
(194, 200, 'Haswar Hasan', '1700004311035', 'MANDIRI', NULL),
(195, 201, 'Muhammad Ikbal', '1700001275175', 'MANDIRI', 'rek_ckh4dmV4L01XVCs0RjYyZVRKRlVQdz09.jpg'),
(196, 202, '', '', '', NULL),
(197, 203, '', '', '', NULL),
(198, 204, 'MUSLIMIN S PD', '502701000548508', 'BRI', 'rek_RnBCaGNBOWNzNi90cksvRHpTVDlwUT09.jpeg'),
(199, 205, 'Nikodemus Sigala', '1700004661033', 'MANDIRI', 'rek_L01ySjMrbU5tTWlpaU1JZjd2dkdodz09.jpg'),
(200, 206, 'DAMARIS PAKAN', '494701022652538', 'BRI', 'rek_ZEJ1MWY0Z1V1T0NRMG9KOGd3eEl0UT09.jpg'),
(201, 207, 'Amrini', '17000004744888', 'MANDIRI', 'rek_aWt1M0x4ZGcrWWw0SU5zYWl6K0VkUT09.jpg'),
(202, 208, 'VERY SAPAN', '1700000083125', 'MANDIRI', 'rek_dld6ZHNxVHNvZkY5dDhwUEVuS1d4dz09.jpeg'),
(203, 209, 'SAMUEL TEMPAYA.S.Th', '1700001086275', 'MANDIRI', 'rek_Y1A0Q0wvRVNtSVR1N3pSbmNuYlE4QT09.jpg'),
(204, 210, 'Ayus Michael Manguma', '1520012387037', 'MANDIRI', NULL),
(205, 211, '', '', '', NULL),
(206, 212, '', '', '', NULL),
(207, 213, '', '', '', NULL),
(208, 214, 'Ester langi', '02320101066534', 'BRI', 'rek_R0dTWGFyQm1oRUpmNWNyajg0c3YyQT09.jpg'),
(209, 215, 'Seni Lintin', '494701020962539', 'BRI', 'rek_RDdoVXIzZE5QOXdtY0h2eDZEMGQ5QT09.jpg'),
(210, 216, '', '', '', NULL),
(211, 217, '', '', '', NULL),
(212, 218, '', '', '', NULL),
(213, 219, '', '', '', NULL),
(214, 220, '', '', '', NULL),
(215, 221, 'ANNA PAMBAJENG WULAN ROSARI', '1520011599053', 'MANDIRI', 'rek_aUlRbFJoMk5IODdYYzdTMVpVNGVBQT09.jpg'),
(216, 222, '', '', '', NULL),
(217, 223, '', '', '', NULL),
(218, 224, 'Hasbi Hasbullah Said', '7890834030', 'BCA', 'rek_cElEeFoyNEtPaEwwZVowUTNrV296dz09.png'),
(219, 225, 'MEKIY SALINDING', '1700000670012', 'MANDIRI', 'rek_Wk1nR0ExYTRjREhCZk1Da1ZGYktCdz09.jpg'),
(220, 226, 'Tiku Pabuntang', '495101008040538', 'BRI', 'rek_Ukp2ZEV1WU01eHVBcklEemczMkljdz09.jpg'),
(221, 227, 'Jois pakan', '448301018162539', 'BRI', 'rek_eDk1U3hUZnppN0FLeUZSQ25TQnl4Zz09.jpg'),
(222, 228, 'Fitri Indrajuliani', '1700004031500', 'MANDIRI', 'rek_ZWhqaGtYdTNKZDN2bUE5Z1FUcUZmQT09.jpg'),
(223, 229, '', '', '', NULL),
(224, 230, 'Karniati Lebonna Pakambanan', '1520010202642', 'MANDIRI', NULL),
(225, 231, '', '', '', NULL),
(226, 232, 'YUNUS TANDI KARUA', '494701008185533', 'BRI', 'rek_dlI1MXMvamdoOTIyVlQ0YWdkbW4vQT09.jpg'),
(227, 233, 'Rafael Rance Massora', '2900268087', 'BCA', NULL),
(228, 234, '', '', '', NULL),
(229, 235, '', '', '', NULL),
(230, 236, '', '', '', NULL),
(231, 237, 'REGGIE PAIZHENCE DATU SARIRA', '1700000028856', 'MANDIRI', NULL),
(232, 238, '', '', '', NULL),
(233, 239, '', '', '', NULL),
(234, 240, 'Rubak Fransiskus Xaverius', '1700004678623', 'MANDIRI', 'rek_Rm9NOWMzc0d5S3lNSlBVYzRZNnJDZz09.jpeg'),
(235, 241, '', '', '', NULL),
(236, 242, '', '', '', NULL),
(237, 243, 'Anan Ali Usman', '1520003072531', 'MANDIRI', 'rek_K05Bd0Rmc3l3MUtod0tHVE5HcHJndz09.jpg'),
(238, 244, 'ALFIN', '8460264899', 'BCA', 'rek_a3ROQ1V1L3FYUmxZczd2QUlFN0V2dz09.jpg'),
(239, 245, '', '', '', NULL),
(240, 246, 'SYAMSINAR', '1700004217885', 'MANDIRI', 'rek_MkhuTXJGeVBlS1NQU21CQTI5VFpkUT09.jpeg'),
(241, 247, 'Adolfina Saludung', '1700004215509', 'MANDIRI', 'rek_MEJvNHRxeGZLR29UZ3k0WFU4SXFVQT09.jpg'),
(242, 248, 'YOSAFAT PAKIDING', '494401014030538', 'BRI', 'rek_UUV6SnRkT1YrUXpVeEZmRFZuV25qZz09.jpeg'),
(243, 249, '', '', '', NULL),
(244, 250, 'muhammad ridwan', '7990152149', 'BCA', 'rek_MzlsaDJBOGZwaG8rQm9tMU1lL2NCZz09.jpg'),
(245, 251, 'Marlina Limbong', '1130028319774', 'MANDIRI', NULL),
(246, 252, '', '', '', NULL),
(247, 253, 'Marlina Limbong', '1130028319774', 'MANDIRI', 'rek_VGloMktFam5qN1drYUh1NFp0c2tpZz09.jpeg'),
(248, 254, 'Feybi Umbas', '1500014383366', 'MANDIRI', 'rek_dVZmV2xUbmRIVDlWTHJTS0FobnNPZz09.jpeg'),
(249, 255, 'Brenda Maureen Rambing', '1500014599078', 'MANDIRI', 'rek_ODBGMEkreEZ5YnpabExlSWpGYlJIUT09.jpeg'),
(250, 256, '', '', '', NULL),
(251, 257, '', '', '', NULL),
(252, 258, 'stela h rompas', '1500006678609', 'MANDIRI', 'rek_VWM2dzJia1JVRGdXdzA1a1ZGQnRSUT09.jpg'),
(253, 259, '', '', '', NULL),
(254, 260, '', '', '', NULL),
(255, 261, 'Edward Stevano Lisapaly', '150.0013486160', 'MANDIRI', NULL),
(256, 262, '', '', '', NULL),
(257, 263, 'Yance Tasumolang', '1500014796872', 'MANDIRI', NULL),
(258, 264, 'Adry Sumampouw', '1500015088568', 'MANDIRI', NULL),
(259, 265, 'Ledy Ampulembang', '171401002047501', 'BRI', 'rek_R1NQMXVYbXhkZU01WmYrTVc0ZnplUT09.jpg'),
(260, 266, 'Hendrie Donald sasikil', '1500004069157', 'MANDIRI', 'rek_TCt2NjY2bFltS2diTmYzanFoaU5pQT09.jpg'),
(261, 267, 'YUZAK SALOMBE', '214901008547507', 'BRI', 'rek_alNQVDc4N2hoN2o4YzBUeWpzRm92UT09.jpg'),
(262, 268, 'YUZAK SALOMBE', '505401012124533', 'BRI', 'rek_MU5MNUl6dmlLV2hFakZEYnJFcWdBQT09.jpg'),
(263, 269, 'Edwin Leopold Jim', '1500005944002', 'MANDIRI', 'rek_NjY4Nnp1ZURZZnVSb21qN1BWWThjdz09.png'),
(264, 270, 'miryam mona dian pinontoan', '1500014457574', 'MANDIRI', 'rek_b2JGejJCQUpIRExGS00wVEZFaVN5QT09.jpg'),
(265, 271, '', '', '', NULL),
(266, 272, 'hamzah', '205101013501507', 'BRI', 'rek_V1N5ZEphekhIU0FPZCtMS2hySm1nQT09.jpg'),
(267, 273, '', '', '', NULL),
(268, 274, '', '', '', NULL),
(269, 275, 'APRILINA SALOMBE', '171401000002539', 'BRI', 'rek_WktXbVRNTEFtSVkzT2tGUjdOZnNCUT09.jpeg'),
(270, 276, '', '', '', NULL),
(271, 277, '', '', '', NULL),
(272, 278, '', '', '', NULL),
(273, 279, 'Raumanen Donna Keles', '1500014457350', 'MANDIRI', NULL),
(274, 280, '', '', '', NULL),
(275, 281, '', '', '', NULL),
(276, 282, 'AGUSTINA', '494601009493537', 'BRI', NULL),
(277, 283, 'SAPUTRA NATAN SIMUNAPENDI', '171401001030501', 'BRI', 'rek_OS9qSFVIS2NWdm91ZlN2SUhMSnlqQT09.jpg'),
(278, 284, 'MAIKEL FREDRIK MAAY', '505401004642539', 'BRI', 'rek_TnZ3RFMybVdKWGRmaGtobTJmL2I2QT09.jpg'),
(279, 285, '', '', '', NULL),
(280, 286, '', '', '', NULL),
(281, 287, '', '', '', NULL),
(282, 288, 'CHARLES P. WAIRARA', '171401003263508', 'BRI', 'rek_MlVhcGt1bnBydVBWRjV6MUdWS01Ndz09.jpg'),
(283, 289, 'hamzah', '205101013501507', 'BRI', 'rek_TWJOZ0ZDTy9TTmp1WTR6UUVhZnAxQT09.jpg'),
(284, 290, '', '', '', NULL),
(285, 291, '', '', '', NULL),
(286, 292, 'DAUD LOPES', '1600003280662', 'MANDIRI', 'rek_aGRhSnc3dnJ2bENFVVNZMFFVVU5WUT09.jpeg'),
(287, 293, 'nurhaeni', '205101013501507', 'BRI', 'rek_elk2NDkwbjNVNnRxeHBaa3pObmNKUT09.jpg'),
(288, 294, 'Haeril', '499301023105533', 'BRI', NULL),
(289, 295, 'Rijalirwansyaputra', '503801028451538', 'BRI', 'rek_WnRrd1BuOWpFd2lXcUI0M0FHbWpJZz09.jpg'),
(290, 296, 'Mukhtar. Aco', '1700004584532', 'MANDIRI', 'rek_ZCtDMnZGYzd6UGlrZm05eXd2bHhBZz09.jpg'),
(291, 297, '', '', '', NULL),
(292, 298, '', '', '', NULL),
(293, 299, 'CHRISTIAN YOUNG', '1700004702514', 'MANDIRI', 'rek_d25icm8wTzVWQ3h0aXF2aWVqL3dTdz09.jpg'),
(294, 300, '', '', '', NULL),
(295, 301, '', '', '', NULL),
(296, 302, 'Solekah', '025201011961537', 'BRI', 'rek_dHlUc1hRMFZUYndPSXEyRmNpSHJyZz09.jpg'),
(297, 303, 'Yeti Permata', '025201023918504', 'BRI', 'rek_ZFZZZFlWUXY4dHR1a090d0NsbThuQT09.jpg'),
(298, 304, '', '', '', NULL),
(299, 305, '', '', '', NULL),
(300, 306, '', '', '', NULL),
(301, 307, 'Muhammad juryansyah', '0115195307', 'BCA', 'rek_djNueklYdDcxWW90azNGVFlhbmk4UT09.jpg'),
(302, 308, '', '', '', NULL),
(303, 309, '', '', '', NULL),
(304, 310, 'Muhammad juryansyah', '0111898064', 'BCA', 'rek_bFhxMlp4b3JYOUFjS0lTK2pHUFFQZz09.jpg'),
(305, 311, '', '', '', NULL),
(306, 312, '', '', '', NULL),
(307, 313, '', '', '', NULL),
(308, 314, '', '', '', NULL),
(309, 315, '', '', '', NULL),
(310, 316, 'Luci Liadi', '7685377772', 'BCA', NULL),
(311, 317, '', '', '', NULL),
(312, 318, '', '', '', NULL),
(313, 319, '', '', '', NULL),
(314, 320, '', '', '', NULL),
(315, 321, '', '', '', NULL),
(316, 322, '', '', '', NULL),
(317, 323, '', '', '', NULL),
(318, 324, '', '', '', NULL),
(319, 325, '', '', '', NULL),
(320, 326, '', '', '', NULL),
(321, 327, '', '', '', NULL),
(322, 328, '', '', '', NULL),
(323, 329, '', '', '', NULL),
(324, 330, 'Agus Wijaya', '7390228729', 'BCA', 'rek_dDNhQWlrWkpuV0ExbGoxN3NLMDNEdz09.jpg'),
(325, 331, '', '', '', NULL),
(326, 332, '', '', '', NULL),
(327, 333, '', '', '', NULL),
(328, 334, '', '', 'BCA', 'rek_ZWJxRUJhNVNXMlRTNlYya1U3dkNKQT09.jpeg'),
(329, 335, '', '', '', NULL),
(330, 336, '', '', '', NULL),
(331, 337, '', '', '', NULL),
(332, 338, 'Jarwo Edi Kusumo', '1370011076607', 'MANDIRI', 'rek_Wmx5UUpPbm9QVlF4NVh4bG5xMWNLdz09.jpg'),
(333, 339, '', '', '', NULL),
(334, 340, '', '', '', NULL),
(335, 341, 'Jarwo Edi Kusumo', '1370011956071', 'MANDIRI', 'rek_MHdIcDZja1BxTWhKQ1l2N1lWUFgvdz09.jpg'),
(336, 342, '', '', '', NULL),
(337, 343, 'FARISIA BELLY VERNANDA', '300401001434506', 'BRI', NULL),
(338, 344, '', '', '', NULL),
(339, 345, 'Satriyo Pratama Putra', '1700003829466', 'MANDIRI', 'rek_enJRZkI4WkVtcXpwdXo0N1o5VFB2UT09.jpg'),
(340, 346, '', '', '', NULL),
(341, 347, '', '', '', NULL),
(342, 348, 'Satriyo Pratama Putra', '1700003829466', 'MANDIRI', 'rek_Ky9VUTVDTmZGalFSSUprK1ZWZnp0Zz09.jpg'),
(343, 349, '', '', '', NULL),
(344, 350, '', '', '', NULL),
(345, 351, 'Yunita Ruru', '219001004561532', 'BRI', 'rek_MG9YNW9uZS9WdkxKQlNWZzdVOHdTQT09.jpg'),
(346, 352, '', '', '', NULL),
(347, 353, 'Satriyo Pratama Putra', '1700003829466', 'MANDIRI', 'rek_SHBFaFg0ZHJWNHNBWEIxU0VaR1ZZdz09.jpg'),
(348, 354, '', '', '', NULL),
(349, 355, '', '', '', NULL),
(350, 356, 'YOSPINA SAMBEN', '499501007004537', 'BRI', NULL),
(351, 357, '', '', '', NULL),
(352, 358, '', '', '', NULL),
(353, 359, '', '', '', NULL),
(354, 360, '', '', '', NULL),
(355, 361, '', '', '', NULL),
(356, 362, '', '', '', NULL),
(357, 363, '', '', '', NULL),
(358, 364, 'MAYANTI PATANDUNK', '023201037502501', 'BRI', NULL),
(359, 365, '', '', '', NULL),
(360, 366, '', '', '', NULL),
(361, 367, '', '', '', NULL),
(362, 368, 'HERSIYATI PALAYUKAN', '122901009586509', 'BRI', NULL),
(363, 369, '', '', '', NULL),
(364, 370, 'MARSELINUS LEDON', '499801028730537', 'BRI', 'rek_NHE2SWs0ZXBIbW1MbUJXNVJvTkM0Zz09.png'),
(365, 371, '', '', '', NULL),
(366, 372, '', '', '', NULL),
(367, 373, 'SUPRIADI', '7970262517', 'BCA', 'rek_UU5SY3ZNcmI3cnpxQThtdzBGRGZmQT09.jpeg'),
(368, 374, 'Agus Wijaya', '7390228729', 'BCA', 'rek_M2ZTY2QydXZaeTJMUVh6Z2FKOXBldz09.jpg'),
(369, 375, 'SUPRIADI', '7970262517', 'BCA', 'rek_TTlLWFZOdm5kSFpFSWxEbkI1blFBdz09.jpeg'),
(370, 376, '', '', '', NULL),
(371, 377, 'MARNOLINUS LEDON', '219001001881535', 'BRI', 'rek_b25TWURQN05wTjRzVE9iQVQwVHR3UT09.jpeg'),
(372, 378, 'DODY WILLIAM ROSALDI', '509501012874532', 'BRI', 'rek_bnhtb3VodzcwV29FUTFTd3JNcG5KUT09.jpg'),
(373, 379, 'Dody William Rosaldi', '509501012874532', 'BRI', 'rek_TXhoUWNDZitWa3NYL1FjUUtCOEFtQT09.jpg'),
(374, 380, 'ABMIDER', '341301011637535', 'BRI', NULL),
(375, 381, 'SERLY PAKASI', '361501032545537', 'BRI', NULL),
(376, 382, 'YOHANIS TITTING', '341301016879530', 'BRI', NULL),
(377, 383, 'RONI', '630901013102530', 'BRI', NULL),
(378, 384, '', '', '', NULL),
(379, 385, '', '', '', NULL),
(380, 386, '', '', '', NULL),
(381, 387, 'Desny Lucia Caecilia Pawiro', '1500014414542', 'MANDIRI', NULL),
(382, 388, '', '', '', NULL),
(383, 389, '', '', '', NULL),
(384, 390, 'Ayna laziza makmuri', '4390481140', 'BCA', 'rek_WEN2SGo5UUR5NWJndmhhaGpGM1ZEZz09.jpg'),
(385, 391, 'PATRIOT DOXOLOGIA SAMBEN', '040301009215539', 'BRI', NULL),
(386, 392, 'DANIEL BALONDO', '495101007824507', 'BRI', NULL),
(387, 393, 'Hamzah', '791301000097538', 'BRI', 'rek_UTdybERmU3dlNHhTZGJDR0xpRk5UUT09.jpg'),
(388, 394, 'nurmala HR', '749601011307535', 'BRI', 'rek_MkhpUGIrbjNPdk5yeGFEeXgrVGdiQT09.jpg'),
(389, 395, '', '', '', NULL),
(390, 396, 'Rosiana Lomo', '1700000857577', 'MANDIRI', 'rek_d3R2RUtvaGptd2tBZUR4Vm43R0twUT09.jpeg'),
(391, 397, '', '', '', NULL),
(392, 398, '', '', '', NULL),
(393, 399, '', '', '', NULL),
(394, 400, '', '', '', NULL),
(395, 401, '', '', '', NULL),
(396, 402, 'MARSELINA POLLO MOMBA', '030901044074536', 'BRI', NULL),
(397, 403, 'Darius raba', '1700001125719', 'MANDIRI', NULL),
(398, 404, '', '', '', NULL),
(399, 405, 'MARKUS SAMMA PARRANG', '495101006633539', 'BRI', NULL),
(400, 406, '', '', '', NULL),
(401, 407, '', '', '', NULL),
(402, 408, '', '', '', NULL),
(403, 409, '', '', '', NULL),
(404, 410, '', '', '', NULL),
(405, 411, '', '', '', NULL),
(406, 412, '', '', '', NULL),
(407, 413, 'PETRUS MANGEAN', '494601013449538', 'BRI', 'rek_dy9TeG43M0hXYmhhZmJDY0pNRXprdz09.jpeg'),
(408, 414, '', '', '', NULL),
(409, 415, 'SURYATI', '362401022795531', 'BRI', NULL),
(410, 416, 'MERY SAMPE', '023201006371539', 'BRI', NULL),
(411, 417, 'MERCHYRIA', '023201050110503', 'BRI', 'rek_dGNBVzdZeXdLV1o2N3Y4V1VqenpPZz09.jpeg'),
(412, 418, 'LOIS GAMA', '500601015188539', 'MANDIRI', NULL),
(413, 419, 'APRILINA SALOMBE', '171401000002539', 'BRI', NULL),
(414, 420, '', '', '', NULL),
(415, 421, 'Dion Sandro Rompu', '7890213876', 'BCA', NULL),
(416, 422, '', '', '', NULL),
(417, 423, 'Iskandar adhasym', '023201029544501', 'BRI', NULL),
(418, 424, 'Hermince papang', '5095108510', 'BCA', NULL),
(419, 425, 'NANI RIANI ARONGGEAR', '171401003232507', 'BRI', NULL),
(420, 426, 'DAUD SIPI TOTO', '341301017215535', 'BRI', NULL),
(421, 427, 'Edison rante tondok', '1700001378086', 'MANDIRI', NULL),
(422, 428, 'AVERIJL DJAJA', '494201016184539', 'BRI', NULL),
(423, 429, 'DESIANTY', '495101004435537', 'BRI', 'rek_VXlIMHpFdmdrWW9BTGlBd2xIYUZwZz09.jpg'),
(424, 430, 'WAHYU HASWADI', '8460288950', 'BCA', 'rek_Uk84WFFtSU5ONVFIRXN0T25qdFpYUT09.jpeg'),
(425, 431, 'ILHAM UMAR', '510801021825531', 'BRI', 'rek_TDI5emhRYXl2U1dDbHhjMTcyd3RQZz09.jpeg'),
(426, 432, 'ESRY PODANG SAKKUNG', '1700004702431', 'MANDIRI', NULL),
(427, 433, 'YUKI ASWAR', '501801017447532', 'BRI', 'rek_QlJ0Ty9adXorMW1lZU9WL1BlVTBOZz09.jpg'),
(428, 434, 'AGUSTINUS PARRANGAN', '1700000178511', 'MANDIRI', 'rek_V20yN1pKUVV5eDFhb0xDZmxHTEhqQT09.jpeg'),
(429, 435, 'MARWAN EDI', '7891115028', 'BCA', 'rek_cURGdFZtR1pRQ2RncGdOdldrT2J3QT09.jpeg'),
(430, 436, 'AKBAR TANJUNG NURDIN', '492201023758535', 'BRI', 'rek_djBod3dhNmJldHVlVXoxTmJDWHY3Zz09.jpg'),
(431, 437, 'Achmad Hidayat', '006401048232506', 'BRI', 'rek_TCtJRmNJSlR2QlFOb0Rta28zSlZEZz09.jpeg'),
(432, 438, 'ABDUL KADIR MATHAR', '220901001377509', 'BRI', 'rek_am5BV0pVcm1YRkFvakgzaXd1eXB3Zz09.jpeg'),
(433, 439, 'Achmad Hidayat', '006401048232506', 'BRI', 'rek_VFZ4a3pwKzhUY2Q1cEtVY0VZTEcvdz09.jpeg'),
(434, 440, 'Zaenab', '011101034262502', 'BRI', 'rek_bHJxbzRUNHRybjhydnFTYUI2MERFdz09.jpeg'),
(435, 441, '', '', '', NULL),
(436, 442, 'MARTHINA SEMBO', '495001003983533', 'BRI', NULL),
(437, 443, '', '', '', NULL),
(438, 444, '', '', '', NULL),
(439, 445, '', '', '', NULL),
(440, 446, '', '', '', NULL),
(441, 447, '', '', '', NULL),
(442, 448, '', '', '', NULL),
(443, 449, 'LUDIA KARAMBE', '494601003625534', 'BRI', NULL),
(444, 450, '', '', '', NULL),
(445, 451, '', '', '', NULL),
(446, 452, '', '', '', NULL),
(447, 453, '', '', '', NULL),
(448, 454, '', '', '', NULL),
(449, 455, '', '', '', NULL),
(450, 456, 'Irawan', '1170007049497', 'MANDIRI', NULL),
(451, 457, 'Theresia Heriawaty', '4671045861', 'BCA', NULL),
(452, 458, 'JEFFRIAN TANDU\'', '1740002223691', 'MANDIRI', 'rek_YUozUWdPOFpSWFU4aXVPQmhrRkJIdz09.jpg'),
(453, 459, 'Damaris mangngape', '494701022948531', 'BRI', 'rek_VkdpdXEzMTNrSXZFVjlMYTdjUnZMZz09.jpg'),
(454, 460, 'Cartur suci suryaningsih', '1700004370239', 'MANDIRI', NULL),
(455, 461, '', '', '', NULL),
(456, 462, 'ABD.RAJAB', '503001013093539', 'BRI', 'rek_WVhEa0dBMjN2RWtTdy81RDFSemdJZz09.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `setting_financial`
--

CREATE TABLE `setting_financial` (
  `id_financial` int(11) NOT NULL,
  `deposit_status` enum('on','off') DEFAULT NULL,
  `deposit_min` bigint(11) DEFAULT NULL,
  `deposit_max` bigint(11) DEFAULT NULL,
  `withdraw_status` enum('on','off') DEFAULT NULL,
  `withdraw_min` bigint(11) DEFAULT NULL,
  `withdraw_max` bigint(11) DEFAULT NULL,
  `invesment_royalti` int(11) DEFAULT NULL,
  `invesment_kontrak` int(11) DEFAULT NULL,
  `invesment_profit` int(11) DEFAULT NULL,
  `invesment_min` bigint(11) DEFAULT NULL,
  `invesment_max` bigint(11) DEFAULT NULL,
  `invesment_status` enum('on','off') DEFAULT NULL,
  `biaya_admin` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `setting_financial`
--

INSERT INTO `setting_financial` (`id_financial`, `deposit_status`, `deposit_min`, `deposit_max`, `withdraw_status`, `withdraw_min`, `withdraw_max`, `invesment_royalti`, `invesment_kontrak`, `invesment_profit`, `invesment_min`, `invesment_max`, `invesment_status`, `biaya_admin`) VALUES
(999, 'on', 1000000, 1000000000, 'on', 100000, 10000000, 20, 6, 1, 1000000, 0, 'on', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `setting_rekening`
--

CREATE TABLE `setting_rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_rekening` varchar(200) DEFAULT NULL,
  `no_rekening` varchar(100) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `is_delete` enum('0','1') DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `setting_rekening`
--

INSERT INTO `setting_rekening` (`id_rekening`, `nama_rekening`, `no_rekening`, `bank`, `is_delete`, `created`, `modified`) VALUES
(1, 'Irfan', '2832183821', 'BNI', '1', '2019-10-29 03:11:03', NULL),
(2, 'PT. CHEETAH BINTANG LIMA', '064201001903302', 'BRI', '0', '2019-10-31 01:07:31', '2019-11-16 13:47:58'),
(3, 'PT CHEETAH BINTANG LIMA', '1740002771111', 'MANDIRI', '0', '2019-11-16 13:48:45', NULL),
(4, 'PT CHEETAH BINTANG LIMA', '7685591111', 'BCA', '0', '2019-11-16 13:49:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting_system`
--

CREATE TABLE `setting_system` (
  `id_setting_system` int(11) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon1` varchar(20) DEFAULT NULL,
  `telepon2` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `background` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `setting_system`
--

INSERT INTO `setting_system` (`id_setting_system`, `title`, `email`, `telepon1`, `telepon2`, `alamat`, `background`) VALUES
(999, 'PT. CHEETAH BINTANG LIMA', 'cheetahbintang5@gmail.com', '0411-4101629', '085240362883', 'JL. TUN ABD RAZAK KOMP RUKO CITRALAND BLOK F NO.8 GOWA, SULAWESI-SELATAN', 'background-login.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `level` enum('admin','superadmin') DEFAULT NULL,
  `is_active` enum('n','y') DEFAULT 'n',
  `is_delete` enum('0','1') DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama`, `email`, `telepon`, `username`, `password`, `token`, `level`, `is_active`, `is_delete`, `created`, `modified`) VALUES
(1, 'Hasby Support', 'cheetahbintang5@gmail.com', '0895806670297', 'admin', '$2y$10$vQSIqxXayAUcfM71Knhr7emUdYdxTsgMlrNjk1iDaQrchDHoXpqe6', 'TWJMQ0k3MmgybWg5NzYwUVorUlBRZz09', 'superadmin', 'y', '0', '2019-09-15 23:50:04', '2019-11-30 01:20:22'),
(2, 'MasterCheetah', 'pengguna@gmail.com', '083143054545', 'pengguna', '$2y$10$uWMnbbIKcjBEF2fbdOxqyuDcqt9dMOc3sIBcbl/ntiILz0PCqySue', 'QXErRjdHMis5azUzWktUckt1THpBZz09', 'superadmin', 'y', '1', '2019-10-26 04:30:40', '2019-11-30 01:22:08'),
(3, 'BRIGITA', 'thebrigit@gmail.com', '08534061828', 'ACCGITA', '$2y$10$vqfbyuHOjgB7MecgsIskpe40iwYaLx6X7r5xS2.duq7ErLkVnEPSq', 'dk90aW5VTDYxWXBPRVZaYkt0OHJzQT09', 'admin', 'y', '1', '2019-11-16 12:02:08', NULL),
(4, 'Mauliddya Wahyu', 'lidyamolly9@gmail.com', '081326902310', 'ACCLIDYA03', '$2y$10$lN/G5zA4oCis9xi70ll0.eSCBpaYb7hXiIYA2rLCq2YovCyo3WE0a', 'RjdYM3RlQ3g2Y0JMNTB3ZHZ0aU9CUT09', 'admin', 'y', '0', '2019-11-16 12:50:43', NULL),
(5, 'BRIGITA. MB', 'therebrigit@gmail.com', '085340618285', 'ACCGITA02', '$2y$10$L9gw2UlCxfYbL/W2JN71ze0Qc5qQ.EufgfReepXyC8BEaARgrCf9u', 'NWtQWm95aHVVTmdwQjRKS3IyMUNrQT09', 'admin', 'y', '0', '2019-11-16 13:14:59', NULL),
(6, 'Reski Amalia', 'kikisugito2@gmail.com', '085399255565', 'ACCKIKI01', '$2y$10$i9LeBM6YM2qFTz2ukyhbJ.Xz.gx7clOMrOeT.YNjcCQrqVEKKfigC', 'TzBRZjBtMVBSSnpBeFRJcHpRUVFmdz09', 'admin', 'y', '0', '2019-11-16 13:27:19', NULL),
(7, 'AUDI AULIAH ALI', 'audiaauliahali@gmail.com', '08875944053', 'ADMAUDI01', '$2y$10$XM1FYoPHL26.8hg9YMqw4OxA9MyflTADRN9ebzCAIMzb5VZ0Cfn8O', 'dmZ4eEh0dlVuSlhzdzI4bSs0ZnZwUT09', 'admin', 'y', '0', '2019-11-16 13:39:16', NULL),
(8, 'SUPRIADI', 'supriadisudi@gmail.com', '085241621378', 'ADMSUDI03', '$2y$10$rxhZyQITPtKp0/hwqg0xhuwIXkVvNZtBrlg9yIHGc9TR6qWVBRZd.', 'bmw5TGJFR3BhNjZ2ZU5md2x2VndVZz09', 'admin', 'y', '0', '2019-11-16 14:34:30', NULL),
(9, 'SAMSAM A. Md', 'samsamlanas11@gmail.com', '082144121144', 'ADMSAMSAM02', '$2y$10$jaKke.0SU7WymZ2f8RerdeVFbH94Kr8Mq7F1FCChGtTSGgCHh8AYq', 'S1F2MmFhRzIyOWsxNUMrYndvOGZCQT09', 'admin', 'y', '0', '2019-11-16 15:08:19', NULL),
(10, 'Firman', 'muhfirmansyah130595@gmail.com', '085397887845', 'firmancsdeposit', '$2y$10$4s9AS9zmgGRpYrNMr7cltuJSbu9gU.VEseXheXK11EFYrXUhY8uzC', 'aVFydC85aW84WEE1dThrVXE5ODFjQT09', 'admin', 'y', '0', '2019-11-30 01:27:28', NULL),
(11, 'Master Sugito', 'pukatharimau@gmail.com', '083143054545', 'master111', '$2y$10$x3Rtsrhv8lt2Zlj6JbRjP.4QFKCRUkuQWWXrW4TT9PeaZeTF8X6Au', 'ZSt6WDlHbHlhQmlxNlpKT0k5TEVKQT09', 'superadmin', 'y', '0', '2019-11-30 01:29:40', NULL),
(12, 'Master Jales', 'masterjales@gmail.com', '082247144708', 'masterjales', '$2y$10$AqOB4295Z.TwLvuE5hpD0eNWqBfcxtfDlQBk/JJIKoVrufBf7mVte', 'ZGYrTVFGK0ZZY3UxM3hsVXUzcjBFdz09', 'admin', 'y', '0', '2019-11-30 01:32:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_person`
--

CREATE TABLE `tb_person` (
  `id_person` int(11) NOT NULL,
  `is_parent` int(11) DEFAULT NULL COMMENT 'id_person',
  `kode_person` varchar(50) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `telepon1` varchar(50) DEFAULT NULL,
  `telepon2` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `ukuran_baju` varchar(50) NOT NULL,
  `alamat` text DEFAULT NULL,
  `file_foto` varchar(150) DEFAULT NULL,
  `file_ktp` varchar(150) DEFAULT NULL,
  `waris_nama` varchar(150) DEFAULT NULL,
  `waris_hubungan` varchar(255) DEFAULT NULL,
  `waris_telepon` varchar(30) DEFAULT NULL,
  `waris_alamat` text DEFAULT NULL,
  `is_active` enum('0','1') DEFAULT '1',
  `is_complate` enum('0','1') DEFAULT '0',
  `is_complate_berkas` enum('0','1') DEFAULT '0',
  `keterangan` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_person`
--

INSERT INTO `tb_person` (`id_person`, `is_parent`, `kode_person`, `id_level`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `telepon1`, `telepon2`, `email`, `pekerjaan`, `ukuran_baju`, `alamat`, `file_foto`, `file_ktp`, `waris_nama`, `waris_hubungan`, `waris_telepon`, `waris_alamat`, `is_active`, `is_complate`, `is_complate_berkas`, `keterangan`, `created`, `modified`) VALUES
(188, 0, 'FON-000001', 1, '7372035207830002', 'FITRI INDRAJULIANI.R', 'PAREPARE', '1983-07-12', '082323333975', '082344483331', 'fitriindrajuliani12@gmail.com', 'wiraswasta', 'L', 'Jl Kejayaan Raya  No 17', 'foto_VjU0L2ZOWUJQUjhNNVNoR3BtZE8xUT09.jpg', 'ktp_VjU0L2ZOWUJQUjhNNVNoR3BtZE8xUT09.jpg', 'ABDULLAH DAFA ALMER DZAKY', 'Anak', '085214055583', 'Jl.Kejayaan Raya No 17', '1', '1', '1', NULL, '2019-11-29 23:50:17', '2019-11-30 01:50:38'),
(189, 188, 'COF-000001', 2, '7372035207830003', 'FITRI INDRAJULIANI.R', 'PAREPARE', '1983-07-12', '082323333975', '082344483331', 'indrajulianifitri@gmail.com', 'Wiraswasta', 'L', 'Jl Kejayaan Raya  No 17', 'foto_aTRMRThtbFBVa0JQU2RrYVptelFUQT09.jpg', 'ktp_aTRMRThtbFBVa0JQU2RrYVptelFUQT09.jpg', 'Muhammad ikbal', 'Suami', '085259236595', 'Pinrang', '1', '1', '1', NULL, '2019-11-29 23:54:37', '2019-11-30 13:16:00'),
(190, 188, 'COF-000002', 2, '7318056706640001', 'Dra. ROSIANA LOMO. M.Pd', 'PALOPO', '1964-06-27', '085299659661', '', 'rosilomorosiana@gmail.com', '', '', 'PANTAN KEC. MAKALE KAB. TANA TORAJA', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-29 23:58:17', '2019-11-30 18:18:29'),
(191, 188, 'COF-000003', 2, '7372011207660001', 'MUHAMMAD YUSUF', 'PAREPARE', '1966-07-12', '088246336444', '081342611207', 'Muhyusufsmkn2@gmail.com', 'PNS', 'XL', 'JL. KEJAYAN BLOK G NO. 25 KEC. BACUKIKI KOTA PARE-PARE', 'foto_S2ZtNlA1Vml4QWo5M1JRdW1OcFdJdz09.jpeg', 'ktp_S2ZtNlA1Vml4QWo5M1JRdW1OcFdJdz09.jpeg', 'SYAMSINAR', 'ISTRI', '085342366864', 'JL. KEJAYAN BLOK G NO. 25 KEC. BACUKIKI KOTA PARE-PARE', '1', '1', '1', NULL, '2019-11-30 00:04:04', '2019-12-01 21:13:59'),
(192, 188, 'COF-000004', 2, '7318122712600003', 'RUBAK FRANSISKUS XAVERIUS', 'MAKALE', '1960-12-27', '081355794877', '', 'rubakfransiskusx@gmail.com', '', '', 'GE\'TENGAN KEC. MENGKENDEK KAB. TANA TORAJA', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 00:08:06', '2019-11-30 18:12:50'),
(193, 188, 'COF-000005', 2, '7326154612580002', 'DAMARIS PAKAN', 'RANTEPAO', '1968-12-06', '085397124674', '', 'cheetahtorut@gmail.com', 'WIRASWASTA', 'L', 'KESE KEC. KESU\' KAB. TORAJA UTARA', 'foto_cWFTUHQwNU9oTEd3dUhVclRHWFdlUT09.jpg', 'ktp_cWFTUHQwNU9oTEd3dUhVclRHWFdlUT09.jpg', 'Lieber', 'Anak Kandung', '081380669328', 'Jl. Irian Atas Sinakma Wamena', '1', '1', '1', NULL, '2019-11-30 00:09:58', '2019-12-02 10:27:32'),
(194, 189, 'AGN-000001', 3, '7318272003610001', 'MARTINUS SAMBEN', 'palopo', '1961-03-20', '081343735076', '', 'martinussamben61@gmail.com', 'PNS', 'M', 'TALLULOLO KEC.KESU\' KAB. TORAJA UTARA', 'foto_MllHcHVzUDBjRkVNd2xDamJjOEZMZz09.jpg', 'ktp_MllHcHVzUDBjRkVNd2xDamJjOEZMZz09.jpg', 'LINCE SAKIUS', 'ISTRI', '081342300405', 'TALLULOLO KEC.KESU\' KAB.TORAJA UTARA', '1', '1', '1', NULL, '2019-11-30 00:13:25', '2019-11-30 20:53:06'),
(195, 189, 'AGN-000002', 3, '7372031411770004', 'MUSTADIRHAM', 'PAREPARE', '1977-11-14', '085240322177', '', 'mustadirham01@gmail.com', '', '', 'jl. Btn pondok indah soreang blok L no. 3 parepare', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 00:17:28', NULL),
(196, 189, 'AGN-000003', 3, '7318051307870004', 'Yoelnard Ato\' Tulungallo', 'Makale', '1987-07-15', '081251542560', '', 'ato.tulungallo87@gmail.com', 'Petani', 'M', 'Bulo kec. Mengkendek Kab. Tana Toraja', NULL, NULL, 'Febrisathya Mine Tulungallo', 'saudara kandung', '081289500749', 'Jln. S limboto lr 54B No.12 Makassar', '1', '1', '0', NULL, '2019-11-30 00:19:35', '2019-11-30 15:02:52'),
(197, 189, 'AGN-000004', 3, '7371024508840000', 'DARNIATI RAHMAN', 'ujung pandang', '1984-05-08', '085255869161', '', 'darniatyr@gmail.com', '', '', 'jl. Baji Pamai III No. 03 Kota Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 00:22:20', NULL),
(198, 189, 'AGN-000005', 3, '7371110105690002', 'Lukas Lari', 'Leuwayang, Omesuri', '1969-05-01', '081242472288', '081242472288', 'lukasbisnis@gmail.com', 'Guru SMP', 'XL', 'Perumahan Akper Stelamaris Jl.  Goaria blok.  A/31 - Makassar', NULL, NULL, 'Kristina Parinding', 'Istri', '082193505088', 'Perum Akper Stelamaris Sudiang Jl.  Goaria blok. A/31,  Makassar', '1', '1', '0', NULL, '2019-11-30 00:24:54', '2019-12-01 16:42:46'),
(199, 189, 'AGN-000006', 3, '7306071803770004', 'Irvan Idris, S. PD', 'jeneponto', '1977-03-18', '082334477766', '', 'irvanidris77@gmail.com', 'PNS', 'L', 'btn bumi pallangga mas 2 blok d no. 16 - kab. Gowa', 'foto_NEFRR1ZlWUJGZnliNWpJNU1oT1JBUT09.jpg', 'ktp_NEFRR1ZlWUJGZnliNWpJNU1oT1JBUT09.jpg', 'Ashabul Kahfi', 'Anak', '082334477766', 'Bumi Pallangga Mas 2 Blok D No 16 Gowa', '1', '1', '0', NULL, '2019-11-30 00:26:32', '2019-11-30 15:01:43'),
(200, 189, 'AGN-000007', 3, '7372017009840005', 'Syalmi Patriati Amal', 'PAREPARE', '1984-09-30', '081342155585', '', 'syalmipatriatiamal@gmail.com', 'IRT', 'XL', 'btn lompoe mas blok I/16 kota parepare', NULL, NULL, 'Haswar Hasan', 'Suami', '0811428885', 'Btn lompoe mas blok i no 16', '1', '1', '0', NULL, '2019-11-30 00:28:31', '2019-11-30 14:54:20'),
(201, 189, 'AGN-000008', 3, '7315012305900001', 'muhammad ikbal', 'pinrang', '1990-05-23', '085259236595', '082344483332', 'ikbal.mipb@gmail.com', 'Cheetah', 'L', 'bela belawa - kab. Pinrang', 'foto_ckh4dmV4L01XVCs0RjYyZVRKRlVQdz09.jpg', 'ktp_ckh4dmV4L01XVCs0RjYyZVRKRlVQdz09.jpg', 'Fitri Indrajuliani', 'Istri', '082323333975', 'Parepare', '1', '1', '1', NULL, '2019-11-30 00:32:34', '2019-11-30 17:20:23'),
(202, 189, 'AGN-000009', 3, '7372036903940002', 'arini puspita. R', 'PAREPARE', '1994-03-20', '085394342822', '', 'arinissac@gmail.com', '', '', 'Jl Kejayaan Raya  No 17', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 00:35:16', NULL),
(203, 189, 'AGN-000010', 3, '7372024203880000', 'A. Ade Irma. S, A.Md', 'PAREPARE', '1988-03-02', '085298509445', '', 'adheirma23@yahoo.com', '', '', 'jl. Laupe timur no. 99 - kota parepare', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 00:37:00', NULL),
(204, 189, 'AGN-000011', 3, '7315010505840003', 'muslimin', 'pallameang', '1984-05-05', '085206888314', '', 'mhymink@gmail.com', 'GURU', 'XL', 'bela-belawa kec. suppa kab. Pinrang', 'foto_RnBCaGNBOWNzNi90cksvRHpTVDlwUT09.jpeg', 'ktp_RnBCaGNBOWNzNi90cksvRHpTVDlwUT09.jpeg', 'ANDRIANI ALIMUDDIN', 'ISTRI', '085213449823', 'Belabelawa Kec. Suppa Kab. Pinrang', '1', '1', '1', NULL, '2019-11-30 00:38:44', '2019-11-30 18:48:14'),
(205, 193, 'AGN-000012', 3, '7319321111760002', 'NIKODEMUS SIGALA', 'TORAJA', '1976-11-11', '085256044281', '088247466468', 'nikodemussigala@gmail.com', 'Wiraswasta', 'L', 'Kamiri Bo\'ne Leatung Matallo Sangalla Utara', 'foto_L01ySjMrbU5tTWlpaU1JZjd2dkdodz09.jpg', 'ktp_L01ySjMrbU5tTWlpaU1JZjd2dkdodz09.jpg', 'Beryl Avassalom', 'Anak Kandung', '081282835827', 'Kamiri Bo\'ne Leatung Matallo Sangalla Utara', '1', '1', '1', NULL, '2019-11-30 00:53:04', '2019-11-30 06:15:32'),
(206, 193, 'AGN-000013', 3, '7326154612580001', 'DAMARIS PAKAN', 'TORAJA', '1968-12-06', '085397124674', '', 'cheetahtorut12@gmail.com', 'WIRASWASTA', 'L', 'Panta\'nakan Lolo Kecamatan Kesu\' Toraja Utara', 'foto_ZEJ1MWY0Z1V1T0NRMG9KOGd3eEl0UT09.jpg', 'ktp_ZEJ1MWY0Z1V1T0NRMG9KOGd3eEl0UT09.jpg', 'LIEBER', 'ANAK KANDUNG', '081380669328', 'WAMENA', '1', '1', '1', NULL, '2019-11-30 00:58:29', '2019-12-02 10:47:34'),
(207, 189, 'AGN-000014', 3, '7372026612890003', 'AMRINI', 'BAIYA', '1989-12-26', '082321777589', '08115451232', 'rhyni.anwar@gmail.com', 'Swasta', 'L', 'BTN SAO ASRI BLOK E2 NO. 13 KOTA PARE-PARE', 'foto_aWt1M0x4ZGcrWWw0SU5zYWl6K0VkUT09.jpg', 'ktp_aWt1M0x4ZGcrWWw0SU5zYWl6K0VkUT09.jpg', 'Nasir', 'Suami', '08115451232', 'Btn sao asri blok e2 no 13', '1', '1', '1', NULL, '2019-11-30 01:00:10', '2019-11-30 15:18:59'),
(208, 193, 'AGN-000015', 3, '7326122701850001', 'VERY SAPAN', 'rantepao', '1985-01-27', '085398024222', '', 'vhe2701@gmail.com', 'Wiraswasta', 'L', 'Mentiro Tiku Rantepao Toraja Utara', 'foto_dld6ZHNxVHNvZkY5dDhwUEVuS1d4dz09.jpeg', 'ktp_dld6ZHNxVHNvZkY5dDhwUEVuS1d4dz09.jpeg', 'Irwan tophan', 'Anak Kandung', '085299534323', 'Mentiro Tiku Rantepao Toraja Utara', '1', '1', '1', NULL, '2019-11-30 01:00:32', '2019-11-30 02:29:18'),
(209, 193, 'AGN-000016', 3, '7326011809680001', 'SAMUEL TEMPAYA', 'karatuan', '1979-06-16', '082195321400', '081355172272', 'semueltampaya777@gmail.com', 'Swasta', 'L', 'Jl. Merpati No 8', 'foto_Y1A0Q0wvRVNtSVR1N3pSbmNuYlE4QT09.jpg', 'ktp_Y1A0Q0wvRVNtSVR1N3pSbmNuYlE4QT09.jpg', 'ERNI', 'Istri', '085255860323', 'Jln merpati 2.no 486.Rampoang.Wara Utara palopo', '1', '1', '1', NULL, '2019-11-30 01:03:01', '2019-11-30 23:35:12'),
(210, 193, 'AGN-000017', 3, '7326011819680001', 'AYUS MICHAEL S MANGUMA', 'ujung pandang', '1968-09-18', '085299937999', '081241048888', 'amanguma@gmail.com', 'dagang', 'XL', 'Jl. Pembangunan Pembangunan no 60 rantepao', NULL, NULL, 'Gabriella Michellyn Manguma', 'anak', '082290525322', 'jln. pembangunan no 60 rantepao', '1', '1', '0', NULL, '2019-11-30 01:07:41', '2019-12-02 09:53:52'),
(211, 0, 'FON-000002', 1, '1234567890123456', 'PT. CHEETAH BINTANG LIMA', 'MAKASSAR', '2019-02-25', '085806234028', '', 'adm.cheetahbintang5@gmail.com', '', '', 'JL. TUN ABD RAZAK RUKO CITRALAND BLOK F8 MAKASSAR SULSEL', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:09:52', NULL),
(212, 193, 'AGN-000018', 3, '7326116509540001', 'BERTHA TAMPANG', 'makale', '1974-10-07', '085242278574', '', 'berthacheetah@gmail.com', '', '', 'Pa\' Pakandean Tondon Mamullu Makale', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:10:47', NULL),
(213, 193, 'AGN-000019', 3, '7318050511750002', 'roma', 'pao', '1975-11-05', '085242278575', '', 'romacheetah@gmail.com', '', '', 'Pa\' Pakandean Tondon Mamullu Makale', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:12:58', NULL),
(214, 193, 'AGN-000020', 3, '7326106509540001', 'ESTER LANGI', 'toneta', '1954-09-22', '085256238081', '', 'esteresterlangi@gmail.com', '-', 'L', 'Jl.Tagari Tallung Lipu', 'foto_R0dTWGFyQm1oRUpmNWNyajg0c3YyQT09.jpg', 'ktp_R0dTWGFyQm1oRUpmNWNyajg0c3YyQT09.jpg', 'Merchy ria', 'Anak kandung', '082345757499', 'Jl Tagari no 25', '1', '1', '1', NULL, '2019-11-30 01:15:19', '2019-11-30 15:34:30'),
(215, 193, 'AGN-000021', 3, '6471025808770001', 'SENI LINTIN', 'kadundung', '1977-08-18', '081342301978', '081355318177', 'lintinseni9@gmail.com', '-', 'XL', 'Jl.Padang Iring Nonongan', 'foto_RDdoVXIzZE5QOXdtY0h2eDZEMGQ5QT09.jpg', 'ktp_RDdoVXIzZE5QOXdtY0h2eDZEMGQ5QT09.jpg', 'Agustina Lintin', 'Ibu Kandung', '085240988676', 'Jl Padang Iring Nonongan', '1', '1', '1', NULL, '2019-11-30 01:17:17', '2019-11-30 15:43:50'),
(216, 193, 'AGN-000022', 3, '7326155006800001', 'HAYATI RERUNG ALLO', 'rantepao', '1980-06-10', '081342723456', '', 'Atiekrerungall@gmail.com', '', '', 'Rinding Batu Kesu', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:19:08', NULL),
(217, 193, 'AGN-000023', 3, '7326156505670001', 'SIRO SARUNGALLO', 'rantepao', '1967-06-25', '081342478299', '', 'SiroSarungallo34@gmail.com', '', '', 'Lingkungan Bonoran Kelurahan Bonoran Kesu', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:21:41', NULL),
(218, 193, 'AGN-000024', 3, '7326155205670001', 'MARIANA PAKAMBANAN', 'tana toraja', '1967-05-12', '085342296931', '', 'pakambananmariana@gmail.com', '', '', 'Lingkungan Bonoran Kelurahan Bonoran Kesu', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:24:28', NULL),
(219, 193, 'AGN-000025', 3, '7326154504770002', 'ARYANTI KARAENG', 'irian jaya', '1977-04-05', '085241275081', '', 'Aryanti.karaeng@gmail.com', '', '', 'Rinding Batu Kesu', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:27:07', NULL),
(220, 193, 'AGN-000026', 3, '7326015312820001', 'FRANSISKA SETY MALINO', 'tondon', '1982-12-13', '08114202099', '', 'fransisca8899ok@gmail.com', '', '', 'Jl.Pongtiku no 10 Karassik', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:29:47', NULL),
(221, 193, 'AGN-000027', 3, '7326015810720002', 'ANNA PABAJENG WULAN ROSARI', 'jakarta', '1972-10-18', '08124241308', '', 'annapambajeng.ap@gmail.com', 'PNS', 'L', 'Ba\'tan Kelurahan Ba\'tan Kesu', 'foto_aUlRbFJoMk5IODdYYzdTMVpVNGVBQT09.jpg', 'ktp_aUlRbFJoMk5IODdYYzdTMVpVNGVBQT09.jpg', 'YOGA PRATAMA MAMBELA SARUNGALLO', 'ANAK KANDUNG', '085240316021', 'Ba\'tan Kelurahan Ba\'tan Kesu', '1', '1', '1', NULL, '2019-11-30 01:31:27', '2019-12-02 11:04:44'),
(222, 193, 'AGN-000028', 3, '7326013810720002', 'EVITA PARE TANDUK', 'tondok litak', '1971-07-30', '081240125493', '', 'evitaparetanduk30@gmail.com', '', '', 'Jl.Sakura Tampo tallunglipu', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:34:10', NULL),
(223, 193, 'AGN-000029', 3, '7326016512700003', 'YANTI TAPPI', 'tondon', '1970-12-19', '085255645517', '', 'yantitappi25@gmail.com', '', '', 'Jl.Diponegoro no 86', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:37:01', NULL),
(224, 211, 'COF-000006', 2, '7309141806910001', 'Hasbi Hasbullah Said', 'Mangkoso', '1991-06-18', '082348577797', '', 'hasbyhs@gmail.com', 'General Support', 'M', 'Makassar', 'foto_cElEeFoyNEtPaEwwZVowUTNrV296dz09.png', 'ktp_cElEeFoyNEtPaEwwZVowUTNrV296dz09.png', 'Sirfah Asrariah', 'Adik', '082348520321', 'jl. dr. Ratulangi Kab. Maros. Perum Regency Blok Ba No.2', '1', '1', '1', NULL, '2019-11-30 01:38:20', '2019-11-30 02:52:50'),
(225, 193, 'AGN-000030', 3, '7318050605590003', 'MEKIY SALINDING', 'Makale', '1959-05-06', '082259335498', '081242141339', 'sola59gratia@gmail.com', 'Freelance', 'XL', 'JL. MERDEKA NO. 51\r\nTONDON MAMULLU\r\nMAMULLU\r\nMAKALE\r\nTANA TORAJA\r\nSULAWESI SELATAN', 'foto_Wk1nR0ExYTRjREhCZk1Da1ZGYktCdz09.jpg', 'ktp_Wk1nR0ExYTRjREhCZk1Da1ZGYktCdz09.jpg', 'YOSUA HADIPUTRA SALINDING', 'ANAK KANDUNG', '082291793489', 'JL MERDEKA NO 51 \r\n MAMULLU\r\nTONDON MAMULLU\r\nMAKALE\r\nTANA TORAJA', '1', '1', '1', NULL, '2019-11-30 01:39:29', '2019-11-30 15:26:10'),
(226, 193, 'AGN-000031', 3, '7326150404820002', 'TIKU PABUNTANG', 'teteuri', '1982-04-04', '085342106399', '08124168833', 'pabuntangt82@gmail.com', 'Swasta', 'XL', 'Tallu lolo Kesu', 'foto_Ukp2ZEV1WU01eHVBcklEemczMkljdz09.jpg', 'ktp_Ukp2ZEV1WU01eHVBcklEemczMkljdz09.jpg', 'Elon simuruk', 'Istri', '08124168833', 'Bua Tallulolo', '1', '1', '1', NULL, '2019-11-30 01:41:02', '2019-12-02 09:10:08'),
(227, 193, 'AGN-000032', 3, '7326155004830303', 'JOIS PAKAN', 'Sorowako', '1983-04-20', '081355508543', '082148655651', 'joyaecha@gmail.com', 'Wirasuasta', 'S', 'Handil ll jl.jalur gg.siri ll no.77\r\nKel.muara Jawa ulu\r\nKec.muara Jawa\r\nKab.kutai Kartanegara\r\nProp.KALTIM', 'foto_eDk1U3hUZnppN0FLeUZSQ25TQnl4Zz09.jpg', 'ktp_eDk1U3hUZnppN0FLeUZSQ25TQnl4Zz09.jpg', 'VANESSA MARIE TANDI ARRU\'', 'ANAK', '082148655651', 'Handil ll jl.jalur gg.suri ll no.77 \r\nKel.muara Jawa ulu\r\nKec.muara Jawa\r\nKab.kitai Karta negara\r\nProp.KALTIM', '1', '1', '1', NULL, '2019-11-30 01:43:09', '2019-12-01 12:41:18'),
(228, 189, 'AGN-000033', 3, '7372035207830004', 'FITRI INDRAJULIANI.R', 'PAREPARE', '1983-07-12', '082323333975', '082344483331', 'fitriikbal9@gmail.com', 'Cheetah', 'L', 'Jl Kejayaan Raya No 17', 'foto_ZWhqaGtYdTNKZDN2bUE5Z1FUcUZmQT09.jpg', 'ktp_ZWhqaGtYdTNKZDN2bUE5Z1FUcUZmQT09.jpg', 'Muhammad Ikbal', 'Suami', '082344483332', 'Pinrang', '1', '1', '1', NULL, '2019-11-30 01:45:02', '2019-11-30 13:26:59'),
(229, 193, 'AGN-000034', 3, '7326062007750052', 'BANDI PASARU', 'sa\'dan', '1979-07-20', '085391950045', '', 'bandipasaru20@gmail.com', '', '', 'Sa\'dan Andulan', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:45:33', NULL),
(230, 193, 'AGN-000035', 3, '7326154208810001', 'KARNIATI LEBONNA PAKAMBANAN', 'rantepao', '1981-08-02', '081340538132', '', 'klebonna@gmail.com', 'PNS', 'M', 'Lingkungan Bonoran Kelurahan Panta\'nakan Lolo Kecamatan Kesu\'', NULL, NULL, 'David Hazeelta Batara', 'Anak', '085270706202', 'Lingkungan Bonoran Kelurahan Panta\'nakan Lolo Kecamatan Kesu\'', '1', '1', '0', NULL, '2019-11-30 01:47:47', '2019-11-30 12:24:31'),
(231, 193, 'AGN-000036', 3, '9103016910820001', 'DAMITA PALULLUNGAN', 'monongan', '1982-10-29', '082194946494', '', 'damitamitaa@gmail.com', '', '', 'Tallu lolo Kesu', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 01:49:48', NULL),
(232, 193, 'AGN-000037', 3, '7326011407650001', 'YUNUS TANDI KARUA', 'tiakka\'', '1965-07-14', '085242184080', '', 'y.tandi64@gmail.com', 'Purnawirawan', 'XL', 'Asrama Kodim K 8 Rantepao', 'foto_dlI1MXMvamdoOTIyVlQ0YWdkbW4vQT09.jpg', 'ktp_dlI1MXMvamdoOTIyVlQ0YWdkbW4vQT09.jpg', 'LUSIANA LAMBA', 'ISTRI', '081343842897', 'Asrama Kodim  K 8 Rantepao', '1', '1', '1', NULL, '2019-11-30 01:52:01', '2019-12-02 11:22:44'),
(233, 224, 'AGN-000038', 3, '7326011612800003', 'Rafael Rance Massora', 'Luwuk', '1980-12-16', '081355418345', '081354650621', 'rafael.massora2@gmail.com', 'Wirausaha', 'L', 'jl.Orchid way no 21 Grand orchid tanjung bunga', NULL, NULL, 'Merpaty siri', 'Istri', '081555476134', 'Jl. Orchid way no 21', '1', '1', '0', NULL, '2019-11-30 02:08:00', '2019-12-02 02:21:28'),
(234, 193, 'AGN-000039', 3, '6310042411830002', 'MARTINUS RIRA RANTESALU', 'lempo', '1985-11-24', '081256568231', '', 'rirarantesalu@gmail.com', '', '', 'Jl.Citrawati Sungai Danau Kalimantan Selatan', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 02:14:22', NULL),
(235, 211, 'COF-000007', 2, '7371112202740001', 'Syaiful AK Enggeleti', 'Makassar', '1974-02-22', '082293047592', '', 'syaeful77777@gmail.com', '', '', 'Jl. Dakota', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 02:17:07', NULL),
(236, 193, 'AGN-000040', 3, '7326042009850000', 'SEMUEL SAKKE', 'rantepasang', '1985-09-20', '085145700118', '', 'dirly164@gmail.com', '', '', 'Sa\'dan Likulambe', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 02:18:54', NULL),
(237, 193, 'AGN-000041', 3, '7326145408830002', 'AGUSTINA KUMAU', 'baruppu\'', '1983-08-14', '085255695732', '', 'agustinakumau77293@gmail.com', 'Guru', 'S', 'Pa\'tinoran To\' Saruran', NULL, NULL, 'REGGIE PAIZHENCE DATU SARIRA', 'Anak', '085255695732', 'Pa\'tinnoran to\'saruran', '1', '1', '0', NULL, '2019-11-30 02:20:51', '2019-12-02 11:50:30'),
(238, 193, 'AGN-000042', 3, '9206012505850004', 'MARKUS PATANDUK', 'tondon', '1985-05-25', '081247375087', '', 'rabiden02@gmail.com', '', '', 'Bintuni Timur Teluk Bintuni Papua Barat', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 02:22:55', NULL),
(239, 193, 'AGN-000043', 3, '7318120109920004', 'ZULKIFLY', 'tondon', '1992-09-01', '081242178607', '', 'kifly2031@gmail.com', '', '', 'Pa\' Pakandean Tondon Mamullu Makale', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 02:25:35', NULL),
(240, 192, 'AGN-000044', 3, '7318122712600004', 'RUBAK FRANSISKUS XAVERIUS', 'MAKALE', '1960-12-27', '081355794877', '', 'yanpatrik24@gmail.com', 'Pegawai Negeri Sipil', 'XL', 'Getengan, Rante Kalua\', mengkendek, tana toraja', 'foto_Rm9NOWMzc0d5S3lNSlBVYzRZNnJDZz09.jpeg', 'ktp_Rm9NOWMzc0d5S3lNSlBVYzRZNnJDZz09.jpeg', 'Patrik Girik Allo', 'ANAK', '081210999660', 'Getengan, Rante Kalua\', mengkendek, tana toraja', '1', '1', '1', NULL, '2019-11-30 02:40:28', '2019-11-30 06:33:46'),
(241, 0, 'FON-000003', 1, '7602100304650001', 'SUDIRMAN', 'TASOKKO', '1996-02-16', '082335525352', '', 'sudirmanmateng96@gmail.com', '', '', 'JL. WIJAYA KUSUMA I KEC. RAPPOCINI KOTA MAKASSAR', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 02:56:57', NULL),
(242, 241, 'COF-000008', 2, '7602100304650002', 'SUDIRMAN', 'TASOKKO', '2022-04-19', '082335525352', '', 'cheetahsulbar1996@gmail.com', '', '', 'JL. WIJAYA KUSUMA I KEC. RAPPOCINI KOTA MAKASSAR', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 02:59:49', NULL),
(243, 191, 'AGN-000045', 3, '7371110606660007', 'Anan Ali Usman', 'Parepare', '1966-06-06', '085330000151', '08124232626', 'ananaliusmanguru@gmail.com', 'Wiraswasta', 'XXL', 'Kompleks Delta Bumi Sudiang E/21 Makassar 90242', 'foto_K05Bd0Rmc3l3MUtod0tHVE5HcHJndz09.jpg', 'ktp_K05Bd0Rmc3l3MUtod0tHVE5HcHJndz09.jpg', 'Ani Dyah Astuty., M.Hum', 'Anak Kandung', '085342261151', 'Kompleks Delta Bumi Sudiang, E/21 Makassar 90242', '1', '1', '1', NULL, '2019-11-30 03:12:38', '2019-12-01 01:57:38'),
(244, 191, 'AGN-000046', 3, '0987654321123458', 'Alfin', 'pinrang', '1979-05-05', '085255554685', '085255554685', 'alfinmalla194@gmail.com', 'Wiraswasta', 'L', 'Jl.Kejayaan Blok G No.5', 'foto_a3ROQ1V1L3FYUmxZczd2QUlFN0V2dz09.jpg', 'ktp_a3ROQ1V1L3FYUmxZczd2QUlFN0V2dz09.jpg', 'SALWA NADIA ALNUR', 'ANAK', '08534208147', 'Jln.kejayaan blok G 05', '1', '1', '1', NULL, '2019-11-30 03:27:25', '2019-11-30 08:43:57'),
(245, 191, 'AGN-000047', 3, '0987654321123457', 'Muh. Rusdi', 'Palanro', '1975-10-11', '085396881863', '', 'MUH.RUSDI75@gmail.com', '', '', 'Palanro Utara Mallusetasi', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 03:29:13', NULL),
(246, 191, 'AGN-000048', 3, '7372014506720001', 'SYAMSINAR', 'PAREPARE', '1972-06-05', '085342366864', '', 'syamsinaryusuf1972@gmail.com', 'IRT', 'XL', 'Jl.Kejayaan ll Blok G No 25  Perumnas  Galung Maloang parepare', 'foto_MkhuTXJGeVBlS1NQU21CQTI5VFpkUT09.jpeg', 'ktp_MkhuTXJGeVBlS1NQU21CQTI5VFpkUT09.jpeg', 'MUHAMMAD YUSUF', 'ISTRI', '081342611207', 'Jl.Kejayaan ll Blok G No 25  Perumnas  Galung Maloang parepare', '1', '1', '1', NULL, '2019-11-30 03:30:44', '2019-12-01 21:34:12'),
(247, 205, 'MEM-000001', 4, '7318346407690001', 'ADOLFINA SALUDUNG', 'TAMMUAN ALLO', '1969-07-24', '081342545542', '', 'gtjemaatleatung@gmail.com', 'WIRASWASTA', 'L', 'Kamiri Bo\'ne Leatung Matallo Sangalla Utara Tana Toraja', NULL, 'ktp_MEJvNHRxeGZLR29UZ3k0WFU4SXFVQT09.jpg', 'Wira Anugerah', 'Anak Kandung', '081342545542', 'Kamiri Bo\'ne Leatung Matallo Sangalla Utara Tana Toraja', '1', '1', '0', NULL, '2019-11-30 06:50:40', '2019-12-02 03:51:00'),
(248, 240, 'MEM-000002', 4, '7318190510640001', 'YOSAFAT PAKIDING', 'TENGAN', '1964-10-06', '082199267216', '', 'c0559447@gmail.com', 'WIRASWASTA', 'XL', 'MEBALI, GANDANGBATU SILLANAN, TANA TORAJA, SULAWESI SELATAN', 'foto_UUV6SnRkT1YrUXpVeEZmRFZuV25qZz09.jpg', 'ktp_UUV6SnRkT1YrUXpVeEZmRFZuV25qZz09.jpeg', 'YOSAFAT PAKIDING', 'ANAK', '082199267216', 'MEBALI, GANDANGBATU SILLANAN, TANA TORAJA, SULAWESI SELATAN', '1', '1', '1', NULL, '2019-11-30 11:16:08', '2019-11-30 11:19:57'),
(249, 211, 'COF-000009', 2, '7324012608890009', 'EVA WAHYUNI', 'SURABAYA', '1987-04-11', '082194942339', '', 'evayuni138@gmail.com', '', '', 'jl.prof.dr.ir.sutami no 11\r\nRt003/rw001', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 13:52:48', NULL),
(250, 249, 'AGN-000049', 3, '7371143105980001', 'muhammad ridwan', 'surabaya', '1998-05-31', '082346873772', '', 'Mhmmdrdwn31@gmail.com', 'karyawan swasta', 'L', 'jl.prof.dr.ir.sutami no 11 Rt003/rw001 Kel: bira Kec:tamalanrea', 'foto_MzlsaDJBOGZwaG8rQm9tMU1lL2NCZz09.jpg', 'ktp_MzlsaDJBOGZwaG8rQm9tMU1lL2NCZz09.jpg', 'ainun', 'keponakan', '087752022788', 'jl.prof.dr.ir.sutami no 11 Rt003/rw001 Kel: bira Kec:tamalanrea', '1', '1', '1', NULL, '2019-11-30 13:56:03', '2019-12-02 09:02:34'),
(251, 0, 'FON-000004', 1, '7171056803770001', 'Marlina Limbong', 'Manado', '1977-03-28', '085298012139', '', 'limbongina@gmail.com', 'swasta', 'XL', 'Jl Maesa No 49 Kel Paal 2 Lingk 1 Kec Paal 2 Manado', NULL, NULL, 'Davan Sumampouw', 'Anak', '081340108833', 'Jl Maesa No 49 Paal 2 LIngk 1 Manado', '1', '1', '0', NULL, '2019-11-30 14:02:06', '2019-11-30 16:09:35'),
(252, 251, 'COF-000010', 2, '7171056803770005', 'Marlina Limbong', 'Manado', '1977-03-28', '085298012139', '', 'Marlinalimbong28@gmail.com', '', '', 'Jl Maesa No 49 Kel Paal 2 Lingk 1 Kec Paal 2 Manado', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 14:05:38', NULL),
(253, 252, 'AGN-000050', 3, '7171046803770005', 'Marlina Limbong', 'Manado', '1977-03-28', '085298012139', '', 'Marlinalimbong77@gmail.com', 'swasta', 'XL', 'Jl Maesa No 49 Kel Paal 2 Lingk 1 Kec Paal 2 Manado', 'foto_VGloMktFam5qN1drYUh1NFp0c2tpZz09.jpeg', 'ktp_VGloMktFam5qN1drYUh1NFp0c2tpZz09.jpeg', 'Davan Sumampouw', 'Anak', '081340108833', 'Jl Maesa No. 49 Paal 2 Lingk 1 Manado', '1', '1', '1', NULL, '2019-11-30 14:10:51', '2019-11-30 15:05:10'),
(254, 252, 'AGN-000051', 3, '7104194902940001', 'Feybi Umbas', 'Lanut', '1994-02-09', '081356133383', '', 'feiby.eby@gmail.com', 'Swasta', 'XL', 'Lingkungan IX RT/RW 000/009 Kel.Bahu Kec.Malalayang', 'foto_dVZmV2xUbmRIVDlWTHJTS0FobnNPZz09.jpeg', 'ktp_dVZmV2xUbmRIVDlWTHJTS0FobnNPZz09.jpeg', 'Bernard Tasumolang', 'Anak', '085394908795', 'Lingkungan IX RT/RW 000/009 Kel. Bahu Kec. Malalayang', '1', '1', '1', NULL, '2019-11-30 14:15:45', '2019-11-30 14:54:57'),
(255, 252, 'AGN-000052', 3, '7171055203890004', 'Brenda Maureen Rambing', 'Manado', '1989-03-12', '085289708090', '', 'brendamrambing@gmail.com', 'Pegawai Swasta', 'XXL', 'Lingkungan 3, Kel. Tikala Baru, Kec. Tikala', 'foto_ODBGMEkreEZ5YnpabExlSWpGYlJIUT09.jpeg', 'ktp_ODBGMEkreEZ5YnpabExlSWpGYlJIUT09.jpeg', 'Shem Mason Aveiro Pangerapan', 'Anak', '085289708090', 'Jl. Kenari Lingkungan III No.5 Tikala Baru, Kec. Tikala Kota Manado', '1', '1', '1', NULL, '2019-11-30 14:19:11', '2019-12-02 11:21:19'),
(256, 252, 'AGN-000053', 3, '7171056803770002', 'Stenly Marc Luntungan', 'Manado', '1981-03-10', '08124499938', '', 'stenly.marc@gmail.com', '', '', 'Malendeng Lingk 1 Kel. Malendeng Kec. Paal dua. Manado.', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 14:21:45', NULL),
(257, 252, 'AGN-000054', 3, '7171256803770001', 'Jefry Rompis', 'Manado', '1973-06-22', '081244226673', '', 'jefryeastindo@gmail.com', '', '', 'Kel. Walian Dua Lk. 2, Tomohon Selatan kota Tomohon-Sulawesi Utara', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 14:23:16', NULL),
(258, 252, 'AGN-000055', 3, '7171056803780001', 'Stela Hutri Rompas', 'Lansot', '1986-08-18', '082190858608', '', 'stelahutri@gmail.com', 'swasta', 'M', 'Lansot, tareran.', 'foto_VWM2dzJia1JVRGdXdzA1a1ZGQnRSUT09.jpg', 'ktp_VWM2dzJia1JVRGdXdzA1a1ZGQnRSUT09.jpg', 'henny sumampouw', 'mama', '085298386256', 'lansot, tareran', '1', '1', '1', NULL, '2019-11-30 14:24:53', '2019-11-30 15:06:32'),
(259, 252, 'AGN-000056', 3, '7171056806770001', 'Ima Sharief', 'Jakarta', '1979-04-05', '081356622263', '', 'imasharief@yahoo.com', '', '', 'Lingkungan V, Kel.Kairagi II, Kec.Mapanget - Manado', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 14:28:27', NULL),
(260, 252, 'AGN-000057', 3, '7171056800780001', 'Fretty Barandale', 'Manado', '1976-02-06', '0811435096', '', 'auliapretty@ymail.com', '', '', 'Lingkungan 3,Kel. Wenang Selatan, Kec Wenang', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 14:59:45', NULL),
(261, 252, 'AGN-000058', 3, '7171056003770001', 'Lennij Nicolaas', 'Manado', '1967-04-07', '085396276877', '', 'lennij.nicolaas@gmail.com', 'Swasta', 'M', 'Lingkungan II, Kel. Sumompo. Kec. Tuminting', NULL, NULL, 'Edward Stevano Lisapaly', 'Suami', '085657017170', 'Sumompo Lingk. II.\r\nKec. Tuminting\r\nManado.', '1', '1', '0', NULL, '2019-11-30 15:07:13', '2019-12-01 21:49:16'),
(262, 252, 'AGN-000059', 3, '7171056803780005', 'Stenly Tjandra Subrata', 'Manado', '1979-09-21', '082301039090', '', 'stenlysubrata@gmail.com', '', '', 'Lingkungan III, RT/RW 000/003, kel. Wenang utara Kec Wenang', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 15:15:05', NULL),
(263, 254, 'MEM-000003', 4, '7104191501910001', 'Yance Tasumolang', 'Ensem', '1991-01-15', '082347535553', '', 'yance.bsp@gmail.com', 'swasta', '', 'Lingkungan IX RT/RW 000/009 Kel. Bahu Kec.Malalayang', NULL, NULL, 'John Bernard S Tasumolang', 'Anak', '081289606634', 'Lingkungan IX RT/RW 000/009 Kel. Bahu Kec. Malalayang', '1', '0', '0', NULL, '2019-11-30 15:22:16', NULL),
(264, 253, 'MEM-000004', 4, '7171052104730001', 'Adry Sumampouw', 'Manado', '1973-04-21', '081340108833', '082152318833', 'adrysumampouw@gmail.com', 'swasta', 'L', 'Jl Maesa No.49 Paal 2 Lingk 1 Manado', NULL, NULL, 'Davan Sumampouw', 'Anak', '085298012139', 'Jl Maesa No 49 Paal 2 LIngk 1 Manado', '1', '1', '0', NULL, '2019-11-30 15:24:51', '2019-12-02 09:35:40'),
(265, 211, 'COF-000011', 2, '9115051911790001', 'Yuzak Salombe', 'Ujung pandang', '1979-11-19', '081368341212', '081248365388', 'ciptasains@gmail.com', 'swasta', 'M', 'Nonomi Distrik Waropen Bawah, Kab. Waropen-Papua', 'foto_R1NQMXVYbXhkZU01WmYrTVc0ZnplUT09.jpg', 'ktp_R1NQMXVYbXhkZU01WmYrTVc0ZnplUT09.jpg', 'Ledy Ampulembang', 'Istri', '081240388070', 'Nonomi, Kecamatan Waropen Bawah Kab. Waropen - Papua', '1', '1', '1', NULL, '2019-11-30 15:34:09', '2019-12-01 13:38:40'),
(266, 252, 'AGN-000060', 3, '7171056503780001', 'Maya Tanak', 'Manado', '1974-01-11', '081340331154', '', 'vandamaya74@gmail.com', 'swasta', 'XXL', 'Winangun  1. Kec. Malalayang', 'foto_TCt2NjY2bFltS2diTmYzanFoaU5pQT09.jpg', 'ktp_TCt2NjY2bFltS2diTmYzanFoaU5pQT09.jpg', 'Hendrie sasikil', 'suami', '081340591123', 'Jln Rawasari no 38 Winangun jambore atas manado', '1', '1', '1', NULL, '2019-11-30 15:35:03', '2019-11-30 23:04:18'),
(267, 265, 'AGN-000061', 3, '9115051911790002', 'Yuzak Salombe', 'Ujung pandang', '1979-11-19', '081368341212', '', 'yuzaksalombe@gmail.com', 'SWASTA', 'M', 'Nonomi Distrik Waropen Bawah, Kab. Waropen-Papua', 'foto_alNQVDc4N2hoN2o4YzBUeWpzRm92UT09.jpeg', 'ktp_alNQVDc4N2hoN2o4YzBUeWpzRm92UT09.jpeg', 'LEDY AMPULEMBANG', 'ISTRI', '081240388070', 'Nonomi Distrik Waropen Bawah, Kab. Waropen-Papua', '1', '1', '1', NULL, '2019-11-30 15:38:22', '2019-12-01 17:39:03'),
(268, 265, 'AGN-000062', 3, '9115054903840001', 'Ledy Ampulembang', 'Tator', '1884-11-09', '081240388070', '', 'agen002ledy@gmail.com', 'PNS', 'M', 'Nonomi, distrik Waropen Bawah Kab. Waropen-Papua', 'foto_MU5MNUl6dmlLV2hFakZEYnJFcWdBQT09.jpeg', 'ktp_MU5MNUl6dmlLV2hFakZEYnJFcWdBQT09.jpg', 'YUZAK SALOMBE', 'SUAMI', '081368341212', 'NONOMI, KECAMATAN WAROPEN BAWAH KAB. WAROPEN - PAPUA', '1', '1', '1', NULL, '2019-11-30 15:42:11', '2019-12-01 16:05:35'),
(269, 252, 'AGN-000063', 3, '7172156803780001', 'Edwin Leopold Jim', 'manado', '1980-08-12', '085256821255', '', 'edwinjim@yahoo.com', 'Swasta', 'L', 'Jl Salemba Tengah No. 33 Jakarta Pusat.', 'foto_NjY4Nnp1ZURZZnVSb21qN1BWWThjdz09.jpg', 'ktp_NjY4Nnp1ZURZZnVSb21qN1BWWThjdz09.jpg', 'Edmond Jim', 'Adik', '085256821255', 'Jl B W Lapian 6 No 109 Manado', '1', '1', '1', NULL, '2019-11-30 15:42:14', '2019-12-02 01:28:38'),
(270, 258, 'MEM-000005', 4, '7173037107860002', 'miryam mona dian pinontoan', 'tomohon', '1986-07-31', '085240328882', '', 'miryamonadianpinontoan@gmail.com', 'dokter', 'M', 'batukota malalayang', 'foto_b2JGejJCQUpIRExGS00wVEZFaVN5QT09.jpg', 'ktp_b2JGejJCQUpIRExGS00wVEZFaVN5QT09.jpg', 'maikel rompas', 'suami', '085240712829', 'batukota malalayang', '1', '1', '1', NULL, '2019-11-30 15:42:34', '2019-11-30 15:50:33'),
(271, 265, 'AGN-000064', 3, '7324010107630014', 'Simon Taruk Lalong', 'Tator', '1963-03-03', '082348970922', '', 'simontarukagency@gmail.com', '', '', 'DSN. Kondemekar. Kel. Maleku, Kec. Mangkutana', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 15:48:21', NULL),
(272, 211, 'COF-000012', 2, '7171055103780001', 'Hamzah', 'kalosi', '1962-11-25', '085298839349', '', 'hmzah1962@gmail.com', 'pensiunan', 'L', 'jl. Tamangapa Raya no. 12 Antang 90235', 'foto_V1N5ZEphekhIU0FPZCtMS2hySm1nQT09.jpg', 'ktp_V1N5ZEphekhIU0FPZCtMS2hySm1nQT09.jpg', 'Muhammad Dzul Iqram', 'Anak', '08991707050', 'Btn Makkio Baji B11  no 7 Bangkala Antang Makassar', '1', '1', '1', NULL, '2019-11-30 15:49:37', '2019-11-30 16:41:59'),
(273, 272, 'AGN-000065', 3, '7324710107630014', 'Syamsul Iskandar, IR', 'Enrekang Dolo', '1960-12-22', '08124200688', '', 'lusmays60@gmail.com', '', '', 'jl. Lasuloro Raya Blok 1 no. 36', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 15:52:39', NULL),
(274, 265, 'AGN-000066', 3, '7321401634890002', 'Mulyanto Laempasa', 'Bayondo', '1979-10-14', '085396240318', '', 'laempasamulyanto@gmail.com', '', '', 'Beringin Jaya, Kel. Beringin, Kec. Tomoni', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 15:52:53', NULL),
(275, 265, 'AGN-000067', 3, '9171021410790003', 'Malselina Salombe', 'Pakatan', '1989-04-23', '085299098416', '', 'malselinaselin@gmail.com', 'PNS', 'M', 'DSN. Sintuwu, Kel. Maleku, Kec. Mangkutana', 'foto_WktXbVRNTEFtSVkzT2tGUjdOZnNCUT09.jpeg', 'ktp_WktXbVRNTEFtSVkzT2tGUjdOZnNCUT09.jpeg', 'APRILINA SALOMBE', 'SAUDARA', '082247192555', 'JL. ANGGREK SP 4, KEL. UDAPI HILIR, KEC. PRAFI, KAB. MANOKWARI, PROP. PAPUA BARAT', '1', '1', '1', NULL, '2019-11-30 15:54:49', '2019-12-01 16:50:21'),
(276, 272, 'AGN-000068', 3, '7171056803780041', 'Raiza Hasina Putri', 'Bandarlampung', '2002-01-16', '089514943232', '', 'raizahasina@gmail.com', '', '', 'Btn Makkio Baji b11 no. 7 Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 15:56:43', NULL),
(277, 265, 'AGN-000069', 3, '7324017101910001', 'Januarty Salombe', 'Maleku', '1991-01-31', '085255935091', '', 'januartisalombe3@gmail.com', '', '', 'Jl. Rinjani No.133, Arso VI, Kel. Yammua, Kec. Arso Barat', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 15:57:50', NULL),
(278, 265, 'AGN-000070', 3, '7324015309820001', 'Eunike Salombe', 'Ujung Pandang', '1982-09-13', '082187645356', '', 'eunike.salombe3@gmail.com', '', '', 'DSN. Lemborano, Kel. Maleku, Kec. Mangkutana', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 16:03:23', NULL),
(279, 252, 'AGN-000071', 3, '7171096302890002', 'Raumanen Donna Keles', 'Manado', '1989-02-23', '082271618515', '', 'donna.rdk@gmail.com', 'Wiraswasta', 'L', 'Kelurahan bahu lingkungan 6 kec.Malalayang Manado', NULL, NULL, 'Jersen Andrew Dirga Pelealu', 'Anak', '085971674477', 'Kelurahan Bahu lingkungan 6 kec.Malalayang Manado', '1', '1', '0', NULL, '2019-11-30 16:03:25', '2019-12-02 11:50:48'),
(280, 265, 'AGN-000072', 3, '7324014306860002', 'Coryati Swastin', 'Makassar', '1986-06-03', '085399365000', '', 'coryatiswastini6@gmail.com', '', '', 'DSN. Lembarano, Kel. Maleku, Kec. Mangkutana ', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 16:07:24', NULL),
(281, 265, 'AGN-000073', 3, '7324012608890001', 'Lexi Bandaso', 'Palopo', '1985-08-26', '085259506388', '', 'bandasolexi@gmail.com', '', '', 'DSN. Lemboranu, Kel. Maleku, Kec. Mangkutana', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 16:10:02', NULL),
(282, 225, 'MEM-000006', 4, '7326024508710001', 'AGUSTINA', 'TORAJA', '1971-08-05', '081241573575', '', 'agustina05081971@gmail.com', 'PNS', '', 'LINGKUNGAN KALAWA SELATAN\r\nPANGLI SESEAN\r\nTORAJA UTARA', NULL, NULL, 'RESITA PATANDIANAN', 'ANAK KANDUNG', '082246273887', 'LINGKUNGAN KALAWA SELATAN\r\nPANGLI SESEAN\r\nTORAJA UTARA', '1', '0', '0', NULL, '2019-11-30 16:28:09', NULL),
(283, 265, 'AGN-000074', 3, '9115054501840001', 'Novi Meliani Arongger', 'Jayapura', '1984-08-05', '081248817605', '', 'novimelianiaronggear@gmail.com', 'PNS', 'M', 'Kampung Nonomi, Kel. Nonomi, Kec. Waropen Bawah', 'foto_OS9qSFVIS2NWdm91ZlN2SUhMSnlqQT09.jpeg', 'ktp_OS9qSFVIS2NWdm91ZlN2SUhMSnlqQT09.jpg', 'SAPUTRA NATHAN SIMUNAPENDI', 'ANAK', '081248817605', 'Kampung Nonomi, Kel. Nonomi, Kec. Waropen Bawah', '1', '1', '1', NULL, '2019-11-30 16:41:24', '2019-12-01 20:07:02'),
(284, 265, 'AGN-000075', 3, '9115056611840001', 'Silva Era Emeralda', 'Serui', '1984-09-26', '082198510706', '', 'silvaeraemeralda@gmail.com', 'KARYAWAN SWASTA', 'L', 'Kampung Waren II, Kel. Waren II, Kec. Waropen Bawah', 'foto_TnZ3RFMybVdKWGRmaGtobTJmL2I2QT09.jpeg', 'ktp_TnZ3RFMybVdKWGRmaGtobTJmL2I2QT09.jpg', 'MAIKEL FREDRIK MAAY', 'SUAMI', '085254313343', 'Kampung Waren II, Kel. Waren II, Kec. Waropen Bawah', '1', '1', '1', NULL, '2019-11-30 16:43:22', '2019-12-01 21:26:31'),
(285, 265, 'AGN-000076', 3, '9115051605720001', 'Joni Boro', 'Toraja', '1972-05-16', '081344080237', '', 'joniboro30@gmail.com', '', '', 'Uri, Kel. Uri, Kec. Waropen Bawah', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 16:45:21', NULL),
(286, 265, 'AGN-000077', 3, '9171254118790002', 'Anita  Limbong', 'Toraja', '1980-11-14', '082238896167', '', 'anitalimbong250@gmail.com', '', '', 'Jalan Perum Bayangkara Permai Polda Papua-Bupe, Kel. Waena, Kec. Heram', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 16:47:10', NULL),
(287, 265, 'AGN-000078', 3, '9105016901820003', 'Herianto Pamalla', 'Wawondula', '1979-08-05', '082192903872', '', 'heriantopomalla@gmail.com', '', '', 'Jalan Citrawati Gang Bongkok no.305, Kel. Sungai Danau, Kec. Satui', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 16:49:28', NULL),
(288, 265, 'AGN-000079', 3, '9105016901820009', 'Nani Riani Aronggear', 'Jayapura', '1982-01-29', '082259018317', '', 'nanirianiaronggear@gmail.com', 'PNS', 'M', 'Waren, Kel. Waren I, Kec. Waropen Bawah', 'foto_MlVhcGt1bnBydVBWRjV6MUdWS01Ndz09.jpeg', 'ktp_MlVhcGt1bnBydVBWRjV6MUdWS01Ndz09.jpg', 'CHARLES P. WAIRARA', 'SUAMI', '081341754623', 'Waren, Kel. Waren I, Kec. Waropen Bawah', '1', '1', '1', NULL, '2019-11-30 16:51:12', '2019-12-01 19:10:31'),
(289, 272, 'AGN-000080', 3, '7171055103780003', 'Hamzah', 'Kalosi', '1962-11-25', '085298839349', '', 'hmzh212@gmail.com', 'pensiunan', 'L', 'Btn Makkio Baji B11 no 7 Bangkala Antang Makassar', 'foto_TWJOZ0ZDTy9TTmp1WTR6UUVhZnAxQT09.jpg', 'ktp_TWJOZ0ZDTy9TTmp1WTR6UUVhZnAxQT09.jpg', '-', '-', '0', '-', '1', '1', '1', NULL, '2019-11-30 16:52:28', '2019-11-30 16:58:52'),
(290, 265, 'AGN-000081', 3, '7318200911860002', 'Robert Dannari', 'Tana Toraja', '1986-11-09', '082353103586', '', 'robertdannari490@gmail.com', '', '', 'Jalan Pemuda Batakan, Kel. Manggar, Kec. Balikpapan Timur', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 16:53:26', NULL),
(291, 265, 'AGN-000082', 3, '7371141111780010', 'Muhammad Ma\'ruf', 'Raha', '1978-11-11', '085656056905', '', 'muhmaaruf17@gmail.com', '', '', 'Nusa Tamalanrea Indah Blok A, Kel. Tamalanrea, Kec. Tamalanrea', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 16:56:59', NULL),
(292, 265, 'AGN-000083', 3, '7324016304890003', 'Aprilina Salombe', 'Pakatan', '1989-04-23', '082247192555', '', 'aprilinasalombe633@gmail.com', 'APOTEKER', 'M', 'Jl. Anggrek SP4, Kel. Udapi Hilir, Kec. Prafi', 'foto_aGRhSnc3dnJ2bENFVVNZMFFVVU5WUT09.jpeg', 'ktp_aGRhSnc3dnJ2bENFVVNZMFFVVU5WUT09.jpeg', 'DAUD LOPES', 'SUAMI', '081344544610', 'JL. ANGREK SP 4, KEL. UDAPI HILIR, KEC. PRAFI, KAB. MANOKWARI, PROP. PAPUA BARAT', '1', '1', '1', NULL, '2019-11-30 16:58:30', '2019-12-01 18:00:24'),
(293, 289, 'MEM-000007', 4, '7371125606660006', 'hj.Nurhaeni.dra', 'pinrang', '1966-06-16', '085298839349', '', 'nuraeni@gmail.com', 'pegawai', 'L', 'antang', 'foto_elk2NDkwbjNVNnRxeHBaa3pObmNKUT09.jpg', 'ktp_elk2NDkwbjNVNnRxeHBaa3pObmNKUT09.jpg', '-', '-', '9', 'aaaa', '1', '1', '1', NULL, '2019-11-30 17:07:37', '2019-11-30 17:13:10'),
(294, 224, 'AGN-000084', 3, '7322010204900001', 'HAERIL', 'Malangke', '2019-11-27', '082190385064', '', 'Haeril.alfajri@yahoo.com', 'Pengusaha', 'M', 'MAKASSAR  jl. Pengayoman komp. Ruko Akik hijau e 8', NULL, NULL, 'Maderia', 'Ibu', '085298459403', 'Malangke Palopo', '1', '1', '0', NULL, '2019-11-30 17:23:36', '2019-11-30 17:34:16'),
(295, 241, 'COF-000013', 2, '7322010204900003', 'H.jamaluddin mide', 'wonomulyo', '1972-11-30', '081342177788', '', 'jjamaluddinmide@gmail.com', 'Wiraswasta', 'XL', 'jl.kesadaran kec.wonomulyo kab.polewali mandar', 'foto_WnRrd1BuOWpFd2lXcUI0M0FHbWpJZz09.JPG', 'ktp_WnRrd1BuOWpFd2lXcUI0M0FHbWpJZz09.JPG', 'Rijalirwansaputra', 'Anak', '082343358545', 'Jalan kesadaran desa sidorejo kec.wonomulyo kab.polewali mandar', '1', '1', '1', NULL, '2019-11-30 17:43:07', '2019-12-01 22:18:04'),
(296, 295, 'AGN-000085', 3, '7324016304890005', 'Mukhtar. Aco, SH', 'Baru', '1975-12-17', '085299983447', '085299975615', 'Acoymapilli@gmail.com', 'Wiraswasta', 'L', 'Jl. Poros Luyo Tutar Desa Mapilli Barat', 'foto_ZCtDMnZGYzd6UGlrZm05eXd2bHhBZz09.jpg', 'ktp_ZCtDMnZGYzd6UGlrZm05eXd2bHhBZz09.jpg', 'Nurhayati', 'Istri', '085299975615', 'Jl, Poros Luyo Desa mapilli Barat', '1', '1', '1', NULL, '2019-11-30 17:46:03', '2019-12-01 15:56:18'),
(297, 295, 'AGN-000086', 3, '7318200911860003', 'IKHTIAR ZAIN, STP', 'Majene', '1960-12-29', '082194544455', '', 'Ikhtiarzain1219@yahoo.com', '', '', 'Jl. Kartini. No. 12\r\nPolewali Kec. Polewali Kab. Polewali Mandar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 17:50:57', NULL),
(298, 295, 'AGN-000087', 3, '7171055103780008', 'BAHARUDDIN', 'Wonomulyo', '1979-05-25', '081343577827', '', 'kuningkuning802@gmail.com', '', '', 'Jl. Pekuburan Desa Sugihwaras Kec. Wonomulyo Kab. Polewali Mandar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 17:54:22', NULL),
(299, 201, 'MEM-000008', 4, '7372032501740002', 'CHRISTIAN YOUNG', 'PAREPARE', '1974-01-25', '085255416999', '085255416999', 'christianmanggala1@gmail.com', 'WIRASWASTA', 'XXL', 'JL. INDUSTRI KECIL, NO. 2 A.', 'foto_d25icm8wTzVWQ3h0aXF2aWVqL3dTdz09.jpg', 'ktp_d25icm8wTzVWQ3h0aXF2aWVqL3dTdz09.jpg', 'PINCE', 'ISTRI', '082346829991', 'JL. INDUSTRI KECIL, NO. 2 A.', '1', '1', '1', NULL, '2019-11-30 17:58:05', '2019-11-30 18:19:01'),
(300, 295, 'AGN-000088', 3, '7171055303780003', 'Muhammad Mabsyud', 'Polewali', '1983-01-29', '081341862852', '', 'anchumandar83@gmail.com', '', '', 'Jl. Jenderal Sudirman Kel. Sidodadi Kec. Wonomulyo kab Polewali Mandar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 17:59:11', NULL),
(301, 295, 'AGN-000089', 3, '9105019601820003', 'Rijal Irwan Samurai', 'Pinrang', '1999-03-01', '082343358545', '', 'Rijalirwansaputra@gmail.com', '', '', 'Jl. Kesadaran. No. - Desa Sidorejo Kec. Polewali Kab Polewali Mandar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 18:01:16', NULL),
(302, 211, 'COF-000014', 2, '9105016901820008', 'SOLEKAH', 'Cirebon', '1975-09-03', '081340084804', '', 'solekaheka04@gmail.com', 'Ibu Rumah Tangga', 'L', 'BTN PEPABRI', 'foto_dHlUc1hRMFZUYndPSXEyRmNpSHJyZz09.jpg', 'ktp_dHlUc1hRMFZUYndPSXEyRmNpSHJyZz09.jpg', 'Safwatul Ulum', 'Anak', '081340084804', 'BTN Bumi Lontara Indah', '1', '1', '1', NULL, '2019-11-30 18:04:19', '2019-12-01 15:24:26'),
(303, 302, 'AGN-000090', 3, '7105016901820003', 'Etty Permatasari', 'Jeneponto', '1998-04-25', '085348216479', '', 'ettypermata25@gmail.com', 'Mahasiswa', 'XXL', 'BTN.BUMI LONTARA INDAH', 'foto_ZFZZZFlWUXY4dHR1a090d0NsbThuQT09.jpg', 'ktp_ZFZZZFlWUXY4dHR1a090d0NsbThuQT09.jpg', 'Muh Abdullah Fajar Ali', 'Saudara', '081242729799', 'BTN Bumi Lontara Indah', '1', '1', '1', NULL, '2019-11-30 18:09:07', '2019-12-01 16:01:13'),
(304, 272, 'AGN-000091', 3, '7372022207660001', 'MUH. SADRI', 'UJUNG PANDANG', '1990-11-09', '08114491190', '', 'muhsadri.0911@gmail.com', '', '', 'BTP JL KERUKUNAN UTARA II BLOK G NO. 43', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 18:17:28', NULL),
(305, 249, 'AGN-000092', 3, '7324012608890004', 'EVA WAHYUNI', 'SURABAYA', '1987-04-11', '082194942339', '', 'Wahyunieva59@gmail.com', '', '', 'jl.prof.dr.ir.sutami no 11 Rt003/rw001', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 18:53:06', NULL),
(306, 211, 'COF-000015', 2, '7324010107630004', 'RIBKA PADANG', 'PALOPO', '1974-04-24', '081355619225', '082348303330', 'ribkapcofoundercheetah@gmail.com', '', '', 'JLN. BUNTU PANTAN NO. 22 MAKALE, KAB. TANA TORAJA', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:24:40', NULL),
(307, 211, 'COF-000016', 2, '3573022107910002', 'Muhammad Juryansyah', 'Malang', '2019-11-27', '081231412292', '', 'bitcoinrich78@gmail.com', 'swasta', 'XXL', 'Surabaya, Mohon dilengkapi', 'foto_djNueklYdDcxWW90azNGVFlhbmk4UT09.jpg', 'ktp_djNueklYdDcxWW90azNGVFlhbmk4UT09.jpg', 'Ayna laziza', 'Istri', '088228400200', 'Jl wiroto 3 no 1', '1', '1', '1', NULL, '2019-11-30 20:24:46', '2019-12-01 07:09:58'),
(308, 211, 'COF-000017', 2, '7324010107630002', 'Ita Ilyani Haris', 'makassar', '1977-04-02', '082191941261', '', 'itailyaniismail@gmail.com', '', '', 'jln.sultan alauddin no 245B makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:26:31', NULL),
(309, 306, 'AGN-000093', 3, '9115051911790501', 'RIBKA PADANG', 'PALOPO', '1974-04-24', '081355619225', '082348303330', 'ribkapadangagency@gmail.com', '', '', 'JLN. BUNTU PANTAN NO. 22 MAKALE, KAB. TANA TORAJA', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:28:48', NULL),
(310, 307, 'AGN-000094', 3, '3573022107910000', 'Muhammad Juryansyah', 'Malang', '2019-11-27', '081231412290', '', 'legendleader77@gmail.com', 'Wiraswasta', 'XXL', 'Surabaya , mohon dilengkapi', 'foto_bFhxMlp4b3JYOUFjS0lTK2pHUFFQZz09.jpeg', 'ktp_bFhxMlp4b3JYOUFjS0lTK2pHUFFQZz09.jpg', 'Nurhayati', 'Ibu kandung', '+6281233475880', 'Bima', '1', '1', '1', NULL, '2019-11-30 20:29:03', '2019-12-01 07:19:53'),
(311, 308, 'AGN-000095', 3, '3573022107910003', 'ABDUL RAHMAN SUKRI.SH', 'makassar', '1978-11-26', '081354887272', '', 'abdulrahmans963@gmail.com', '', '', 'Jl. Benteng somba opu no.103 DESA JENE TALLASA . Kec.pallangga kab Gowa', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:29:35', NULL),
(312, 308, 'AGN-000096', 3, '7115051911790501', 'Hasma Bulan', 'Bone', '1975-03-27', '082347091999', '', 'checewulan027@gmail.com', '', '', 'jln sunu 2 no 32', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:32:05', NULL),
(313, 306, 'AGN-000097', 3, '7324010107633004', 'Theresia Tambing', 'PALOPO', '1974-06-19', '082188177874', '', 'theresiacheetah@gmail.com', '', '', 'Jl. Y. Tando No. 35', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:33:14', NULL),
(314, 306, 'AGN-000098', 3, '7318056903630001', 'Yustina Tangkelangi', 'Kandeapi', '1963-03-29', '081243207295', '', 'yustinacheetah@gmail.com', '', '', 'Jl.Buntu Tondon,kel.buntu burake,kec.makale', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:36:23', NULL),
(315, 211, 'COF-000018', 2, '7324020107633004', 'BAHERIAH', 'Bone', '1964-06-01', '085395292105', '', 'baheriahbundaria@gmail.com', '', '', 'Jln.Sunu lrg 1a no 28 Kota Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:37:37', NULL),
(316, 224, 'AGN-000099', 3, '7371065302940001', 'Fenny', 'Makassar,', '1994-02-13', '082193982772', '', 'hwangceo5@gmail.com', 'Karyawan Swasta', 'S', 'Jl Bandang 6 No 4', NULL, NULL, 'Luci Liadi', 'Saudara', '082188719899', 'Jl Bandang 6 No 4', '1', '1', '0', NULL, '2019-11-30 20:38:06', '2019-12-01 12:03:20'),
(317, 306, 'AGN-000100', 3, '7371115608640007', 'Ranak Lince', 'BOKIN', '1964-08-16', '081242565289', '', 'ranaklincecheetah@gmail.com', '', '', 'Bumi berua indah A7/No.3', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:38:56', NULL),
(318, 306, 'AGN-000101', 3, '7373066910630002', 'Rita Buyang', 'Rantepao', '1963-10-29', '085242786383', '', 'ritabuyangcheetah@gmail.com', '', '', 'Jl Mengemudi RT/RW 002/009, Kel. Temmalebba, Kec. Bara Kota Palopo', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:42:18', NULL),
(319, 315, 'AGN-000102', 3, '7371064302940001', 'BAHERIAH', 'Bone', '1964-06-01', '085395292105', '', 'maymunarahim24@gmail.com', '', '', 'Jln.Sunu lrg 1a no 28', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:43:22', NULL),
(320, 306, 'AGN-000103', 3, '7371080203610004', 'Drs. Rustam, M.Pd', 'Lompo', '1961-03-02', '081354903713', '', 'rustamcheetah@gmail.com', '', '', 'Jl.Paccarakkang Perm Bumi Berua Indah Blok A2 No 6 Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:44:16', NULL),
(321, 306, 'AGN-000104', 3, '7318090808670001', 'Piter', 'Puangbembe', '1967-08-08', '085299501328', '', 'pitercheetah@gmail.com', '', '', 'Puangbembe', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:47:20', NULL),
(322, 306, 'AGN-000105', 3, '7322076607940001', 'Rahel', 'Rantedanga', '1994-06-16', '081344293206', '', 'rahelcheetah@gmail.com', '', '', 'Taman Puri Kencana, Block A No. 6', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:49:45', NULL),
(323, 306, 'AGN-000106', 3, '7318056812680002', 'Yessy Aty', 'Makale', '1968-12-28', '085255870458', '', 'yessyatycheetah@gmail.com', '', '', 'Jl. Merdeka', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:53:09', NULL),
(324, 211, 'COF-000019', 2, '7319090808670001', 'VERONICA DESI ANTARI', 'Makassar', '1990-12-24', '081226460157', '', 'veronica_desiantari@yahoo.com', '', '', 'BTN. DEWI KUMALASARI BLOK AD 8/5, KEL : DAYA, KEC. BIRINGKANAYA, KOTA : MAKASSAR', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:53:17', NULL),
(325, 306, 'AGN-000107', 3, '7318192107840002', 'Theopilus Singkali', 'Mebali', '1984-07-21', '081354603653', '', 'theocheetahagency@gmail.com', '', '', 'Ge\'tengan', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 20:56:23', NULL),
(326, 324, 'AGN-000108', 3, '7324010107630094', 'PASARRIN', 'POLMAS', '1976-06-16', '085255588747', '', 'arin_ex@yahoo.com', '', '', 'Desa Lambarese, Kec. Burau, Luwu Timur', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 21:09:20', NULL),
(327, 315, 'AGN-000109', 3, '7371080803610004', 'St. Maemuna R', 'Makassar', '1998-04-24', '081356285295', '', 'maemunar244@gmail.com', '', '', 'Jln. Tinumbu Lr 132 No 43', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 21:09:24', NULL),
(328, 324, 'AGN-000110', 3, '7324010107630054', 'Flora Simanjuntak', 'Hutabayu', '1980-11-17', '081361929172', '', 'florasimanjuntak17@gmail.com', '', '', 'Tanjung Pasir.  Desa Bius GU Barat.  Kecamatan Parmaksian.  Kabupaten Toba Samosir', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 21:12:00', NULL),
(329, 324, 'AGN-000111', 3, '7324010107630064', 'Yacolina Rombe', 'Tana Toraja', '1980-11-30', '0811416810', '', 'yacolinarombe2@gmail.com', '', '', 'jl. Gunung Wawomeusa no 30. wawondula', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 21:18:08', NULL);
INSERT INTO `tb_person` (`id_person`, `is_parent`, `kode_person`, `id_level`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `telepon1`, `telepon2`, `email`, `pekerjaan`, `ukuran_baju`, `alamat`, `file_foto`, `file_ktp`, `waris_nama`, `waris_hubungan`, `waris_telepon`, `waris_alamat`, `is_active`, `is_complate`, `is_complate_berkas`, `keterangan`, `created`, `modified`) VALUES
(330, 211, 'COF-000020', 2, '7371064302940003', 'Agus Wijaya', 'Jakarta', '1969-08-01', '08991325611', '0817532030', 'agusw69@gmail.com', 'Wiraswasta', 'M', 'Komp. Bumi Permata Hijau, Alauddin Makassar\r\nJk. Bumi 5 Blok A3 No.9\r\nKel. Gunungsari\r\nKec. Rappocini\r\nMakassar - Sulsel', 'foto_dDNhQWlrWkpuV0ExbGoxN3NLMDNEdz09.jpg', 'ktp_dDNhQWlrWkpuV0ExbGoxN3NLMDNEdz09.jpg', 'Wahida Nur', 'Istri', '0818582030', 'Komp. Bumi Permata Hijau, Alauddin Makassar\r\nJk. Bumi 5 Blok A3 No.9\r\nKel. Gunungsari\r\nKec. Rappocini\r\nMakassar - Sulsel', '1', '1', '1', NULL, '2019-11-30 21:18:22', '2019-12-01 00:42:05'),
(331, 330, 'AGN-000112', 3, '7324010107630061', 'Shofy Ananda Wijaya', 'Makassar', '2005-04-17', '08153303333', '', 'awes6979@gmail.com', '', '', 'Komp. Bumi Permata Hijau, Alauddin Makassar\r\nJk. Bumi 5 Blok A3 No.9\r\nKel. Gunungsari\r\nKec. Rappocini\r\nMakassar - Sulsel', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 21:20:43', NULL),
(332, 324, 'AGN-000113', 3, '7324010107630034', 'Ester Nari', 'Bassemadao', '1985-01-31', '085233490827', '', 'esternari85@gmail.com', '', '', 'Jalan Poros Palopo Bolu Toraja utara', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 21:21:13', NULL),
(333, 324, 'AGN-000114', 3, '7324010107630044', 'Mulyadi Hamdan T', 'simeru', '1974-08-05', '0811424374', '', 'mulyadihvale6377@gmail.com', '', '', 'jl G semeru F 322', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 21:23:55', NULL),
(334, 330, 'AGN-000115', 3, '0000000000000000', 'off', 'closed', '1969-08-01', '000000000', '', 'off@gmail.com', '', 'M', '0ff', 'foto_ZWJxRUJhNVNXMlRTNlYya1U3dkNKQT09.jpg', 'ktp_ZWJxRUJhNVNXMlRTNlYya1U3dkNKQT09.jpg', '', '', '', '', '0', '1', '1', NULL, '2019-11-30 21:26:15', '2019-11-30 23:41:03'),
(335, 324, 'AGN-000116', 3, '7320010107630014', 'TORPIN LIMBONG', 'Pinrang', '1984-10-13', '082343535422', '', 'torpinlimbongmk4@gmail.com', '', '', 'Tokesan,Sangalla\' Selatan Tana Toraja', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 21:56:20', NULL),
(336, 324, 'AGN-000117', 3, '7304010107630014', 'Paillin Paulus', 'Polmas', '1974-05-11', '085255972606', '', 'amoreiza777@gmail.com', '', '', 'Dsn. Padaidi. desa Lambarese. Kec. Burau Kab. Luwu Timur', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 21:59:45', NULL),
(337, 324, 'AGN-000118', 3, '7324010107600014', 'Butet Airin', 'Jakarta', '1979-04-22', '08124270002', '', 'airinringo2@gmail.com', '', '', 'Komp.Hartaco Indah blok 1J no.12 jl.abd.kadir Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:01:40', NULL),
(338, 211, 'COF-000021', 2, '7324010107630059', 'JARWO EDI KUSUMO', 'KULONPROGO', '1980-04-20', '081227878278', '081391349155', 'jarwoek@gmail.com', 'Wiraswasta', 'XL', 'Tangkisan 3, Hargomulyo, Kokap, Kulonprogo, Rt.86/Rw.25', 'foto_Wmx5UUpPbm9QVlF4NVh4bG5xMWNLdz09.jpg', 'ktp_Wmx5UUpPbm9QVlF4NVh4bG5xMWNLdz09.jpg', 'Fatimah Azzahro', 'Anak', '082134818060', 'Tangkisan 3, Hargomulyo, Kokap, Kulonprogo, Rt.86/Rw.25', '1', '1', '1', NULL, '2019-11-30 22:03:37', '2019-11-30 23:02:46'),
(339, 324, 'AGN-000119', 3, '7324010107000004', 'ADRIANI LATIEF', 'Balambano', '1977-08-13', '085242763093', '', 'anhiel77@gmail.com', '', '', 'Jl. Maninjau 4 Oldcamp, SOROWAKO', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:04:07', NULL),
(340, 307, 'AGN-000120', 3, '3578180601880002', 'Aditia Risti Perwira, A. Md', 'Surabaya', '2019-11-27', '087701531946', '', 'aditiaristiperwira@gmail.com', '', '', 'Surabaya , Silahkan Dilengkapi', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:04:23', NULL),
(341, 338, 'AGN-000121', 3, '7324010107630058', 'JARWO EDI KUSUMO', 'KULONPROGO', '1980-04-20', '081227878278', '081391349155', 'jarwoedikusumo@gmail.com', 'Wiraswasta', 'XL', 'Tangkisan 3, Hargomulyo, Kokap, Kulonprogo, Rt.86/Rw.25', 'foto_MHdIcDZja1BxTWhKQ1l2N1lWUFgvdz09.jpg', 'ktp_MHdIcDZja1BxTWhKQ1l2N1lWUFgvdz09.jpg', 'Yusuf Nurfalah', 'Anak', '088225011088', 'Tangkisan 3, Hargomulyo, Kokap, Kulonprogo', '1', '1', '1', NULL, '2019-11-30 22:06:37', '2019-12-01 08:27:08'),
(342, 324, 'AGN-000122', 3, '7300010107630014', 'Serina Ona', 'makale', '1982-10-19', '082293253308', '', 'onaserina@gmail.com', '', '', 'jl. G. Kerinci no. 8 wawondula, kec. Towuti, kab. Luwu Timur Sul-Sel', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:08:12', NULL),
(343, 338, 'AGN-000123', 3, '7324010107000001', 'FARISIA BELLY VERNANDA', 'PAYUNGDADI', '1985-09-15', '085743223437', '', 'Youngfarisi@gmail.com', 'WIRASWASTA', 'M', 'Jl. TIRTODIPURAN No.15, MANTRIJERON', NULL, NULL, 'RUKISA DANU WIDYAPANA', 'ADIK', '085669466062', 'DS. SIDOMULYO KEC. SEMAKA TANGGAMUS - LAMPUNG 35386', '1', '1', '0', NULL, '2019-11-30 22:08:35', '2019-12-01 12:41:21'),
(344, 324, 'AGN-000124', 3, '7324000107630014', 'Dian Safary Cosmas', 'Ujungpandang', '1973-11-12', '08127739829', '', 'dscosmas@gmail.com', '', '', 'Jalan Perintis Kemerdekaan 3, BTN Antara Blok B2/2, Tamalanrea, Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:10:39', NULL),
(345, 0, 'FON-000005', 1, '7304010107630015', 'Satriyo Pratama Putra', 'Makale', '1994-11-26', '082348036026', '', 'satriyonovianne@gmail.com', 'Pegawai BUMN', 'L', 'Aspol Makale Tana Toraja', 'foto_enJRZkI4WkVtcXpwdXo0N1o5VFB2UT09.jpg', 'ktp_enJRZkI4WkVtcXpwdXo0N1o5VFB2UT09.jpg', 'Hilda Adelia', 'Istri', '085299667299', 'Makale Tana Toraja', '1', '1', '1', NULL, '2019-11-30 22:11:56', '2019-12-01 20:11:16'),
(346, 324, 'AGN-000125', 3, '7324000907630044', 'Robertus Pendy', 'Makale', '1980-10-24', '085397500999', '', 'pendykongaji@gmail.com', '', '', 'Jl Goa Ria Lr 1 No 6 Sudiang', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:14:01', NULL),
(347, 324, 'AGN-000126', 3, '7324010101230014', 'Slamet Budi Santoso', 'Pasuruan', '1972-02-12', '082225040048', '', 'slamet.ajeng@gmail.com', '', '', 'Jl. Ilaga RT/RW 003/002 Kel.girimulyo kec Nabire, kab. Nabire Papua', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:18:37', NULL),
(348, 345, 'COF-000022', 2, '7306010107630014', 'Satriyo Pratama Putra', 'Makale', '1994-11-26', '082348036026', '', 'satriyopratamaputra@gmail.com', 'Pegawai BUMN', 'L', 'Aspol Makale Tana Toraja', 'foto_Ky9VUTVDTmZGalFSSUprK1ZWZnp0Zz09.jpg', 'ktp_Ky9VUTVDTmZGalFSSUprK1ZWZnp0Zz09.jpg', 'Hilda Adelia', 'Istri', '085299667299', 'Makale Tana Toraja', '1', '1', '1', NULL, '2019-11-30 22:20:44', '2019-12-01 20:35:50'),
(349, 224, 'AGN-000127', 3, '7371111407930008', 'Andry Axel Linggi Allo', 'Palu', '1993-07-14', '082199253845', '', 'andryaxellinggiallo@gmail.com', '', '', 'Gowa, Silahkan Dilengkapi', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:21:43', '2019-12-01 02:57:48'),
(350, 324, 'AGN-000128', 3, '1234010107630014', 'Karel Tangke Allo', 'sesean', '1976-03-18', '081364428418', '', 'Karel.tangkeallo@gmail.com', '', '', 'Bukit khatulistiwa blok L no.31,daya makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:21:48', NULL),
(351, 348, 'AGN-000129', 3, '7319090808670004', 'Darmawan', 'Makale', '1982-03-02', '085341111784', '', 'wsallipadang@gmail.com', 'Wiraswasta', 'L', 'jl. Buntu pantan. No. 5 Makale, Tana Toraja', 'foto_MG9YNW9uZS9WdkxKQlNWZzdVOHdTQT09.jpg', 'ktp_MG9YNW9uZS9WdkxKQlNWZzdVOHdTQT09.jpg', 'Yunita Ruru', 'Istri', '085222068141', 'Jl. Buntu Pantan. No. 5 Makale, Tanah Toraja', '1', '1', '1', NULL, '2019-11-30 22:22:50', '2019-12-02 00:52:55'),
(352, 324, 'AGN-000130', 3, '4564010107630014', 'yuanita bumbungan', 'tarakan', '1984-12-01', '085242802679', '', 'yuanitabumbungan@yahoo.com', '', '', 'jl perintis kemerdekaan VI,  no 39/c2', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:25:21', NULL),
(353, 348, 'AGN-000131', 3, '7324010101230003', 'Satriyo Pratama Putra', 'Makale', '1994-11-26', '082348036026', '', 'satriyopratama808@yahoo.com', 'Pegawai BUMN', 'L', 'Aspol Makale Tana Toraja', 'foto_SHBFaFg0ZHJWNHNBWEIxU0VaR1ZZdz09.jpg', 'ktp_SHBFaFg0ZHJWNHNBWEIxU0VaR1ZZdz09.jpg', 'Hilda Adelia', 'Istri', '085299667299', 'Makale Tana Toraja', '1', '1', '1', NULL, '2019-11-30 22:25:55', '2019-12-01 20:40:21'),
(354, 224, 'AGN-000132', 3, '7309141806910002', 'Hasnani', 'Mangkoso', '1991-06-18', '082348520321', '', 'hasbihs111@gmail.com', '', '', 'jl. dr Ratulangi Kb Maros', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:26:25', NULL),
(355, 324, 'AGN-000133', 3, '7324010112330014', 'Juliana Pakanan', 'Makassar', '1972-07-01', '08124247291', '', 'jpakanan9@gmail.com', '', '', 'Jl. Andi Mangerangi III No.64, Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:28:42', NULL),
(356, 194, 'MEM-000009', 4, '7317184803590001', 'YOSPINA SAMBEN', 'To\'tallang', '1959-03-08', '081242082888', '', 'martsamben@yahoo.co.id', 'Ibu Rumah tangga', '', 'DSN. Seriti Selatan', NULL, NULL, 'Martinus Samben', 'Adik', '081343735076', 'Tallulolo, Kec. Kesu\' Kab. Toraja Utara', '1', '0', '0', NULL, '2019-11-30 22:28:54', NULL),
(357, 324, 'AGN-000134', 3, '7324012307630014', 'Andi Bintang', 'Sinjai', '1983-10-29', '081342077483', '', 'bintangandi@gmail.com', '', '', 'Btn Mangasa Blok d1 no.10 makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:31:40', NULL),
(358, 211, 'COF-000023', 2, '7310041311630004', 'ALFIL MA;RUF, SH', 'TARAKAN', '1963-11-13', '082195028689', '', 'alfil1963@gmail.com', '', '', 'jl Ambaralla timur no 8 kab pangkep', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:34:53', NULL),
(359, 324, 'AGN-000135', 3, '7324011237630014', 'IMELDA WENY', 'TORAJA', '1978-07-25', '082191928378', '', 'imeldaweny65@gmail.com', '', '', 'JL.  AHMAD YANI NO. 48 RT. 007 DESA WAWONDULA KEC. TOWUTI LUWU TIMUR', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:36:34', NULL),
(360, 358, 'AGN-000136', 3, '7310041311630003', 'ALFIL MA\'RUF, SH', 'TARAKAN', '1963-11-13', '082195028689', '', 'Cheetahalfil99@gmail.com', '', '', 'jl Ambaralla timur no 8 kab pangkep', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:37:41', NULL),
(361, 324, 'AGN-000137', 3, '7024010112330014', 'Jimmy Bungin R', 'Makale', '1981-04-02', '085255555129', '', 'bungin.jr81@gmail.com', '', '', 'jl tikualu no 75 ariang makale tana toraja', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:39:34', NULL),
(362, 235, 'AGN-000138', 3, '7371112202740000', 'Syaiful AK Enggeleti', 'Makassar', '1974-02-22', '082293047592', '', 'topcare77777@gmail.com', '', '', 'Jl. Dakota, Silahkan Dilengkapi', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:39:45', NULL),
(363, 324, 'AGN-000139', 3, '7304120107630014', 'Apriyanti BL Allo', 'Dili', '1985-04-20', '085241030003', '', 'anti.anchan@gmail.com', '', '', 'Jl basuki rahmat lrg kesadaran Palu', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:42:23', NULL),
(364, 208, 'MEM-000010', 4, '7326126405880001', 'MAYANTI PATANDUK', 'TONGLO', '1988-05-24', '085299534323', '', 'mayanti2701@gmail.com', 'wiraswasta', '', 'Mentirotiku , Kec Rantepao, Kab Toraja Utara', NULL, NULL, 'Eunike frilia', 'Anak Kandung', '', 'Mentirotiku , Kec Rantepao, Kab Toraja Utara', '1', '0', '0', NULL, '2019-11-30 22:43:35', NULL),
(365, 324, 'AGN-000140', 3, '7324010107612344', 'Nickeline Suzanna Tiwang', 'Sorowako', '1977-08-26', '08124300415', '', 'nickeline.tiwang@yahoo.co.id', '', '', 'Jl. G. Semeru F.344. RT 07, RW 02. Kel Magani, Kec Nuha.', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:51:18', NULL),
(366, 324, 'AGN-000141', 3, '7324010112340014', 'Belman Tamu\'u', 'Luwu', '1974-01-03', '082397921869', '', 'belmanbelman124@gmail.com', '', '', 'btp.A.21', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:53:58', NULL),
(367, 211, 'COF-000024', 2, '7371031911660003', 'SUARDI', 'UJUNG PANDANG', '1966-11-19', '085242551468', '', 'suardijsd@gmail.com', '', '', 'JL. BATUA RAYA III LR 2 NO. 14 KEC. MANGGALA KOTA MAKASSAR', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 22:54:23', NULL),
(368, 208, 'MEM-000011', 4, '7318055510900001', 'HERSIYATI PALAYUKAN', 'SAMARINDA', '1990-10-15', '082345206554', '', 'hersiyati@ukitoraja.ac.id', '', '', 'BOMBONGAN,DESA BOMBONGAN , KEC MAKALE,KAB TORAJA UTARA', NULL, NULL, 'MARNOLINUS LEDON', 'SUAMI', '085255243121', 'BOMBONGAN,DESA BOMBONGAN , KEC MAKALE,KAB TORAJA UTARA', '1', '0', '0', NULL, '2019-11-30 22:57:01', NULL),
(369, 367, 'AGN-000142', 3, '7371031911660005', 'SUARDI', 'UJUNG PANDANG', '1966-11-19', '085242551468', '', 'suardi@gmail.com', '', '', 'JL. BATUA RAYA III LR 2 NO. 14 KEC. MANGGALA KOTA MAKASSAR', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 23:03:03', NULL),
(370, 208, 'MEM-000012', 4, '7373022502850001', 'MARSELINUS LEDON', 'PALOPO', '1985-02-25', '085255243121', '', 'mazhdezh@gmail.com', 'PEGAWAI HONORER', 'XL', 'LINGKUNGAN PADANG CENDRANA , DESA PADANG SAPPA KEC. PONRANG KAB.LUWU', 'foto_NHE2SWs0ZXBIbW1MbUJXNVJvTkM0Zz09.png', 'ktp_NHE2SWs0ZXBIbW1MbUJXNVJvTkM0Zz09.png', 'Chirsten Ledon', 'ANAK KANDUNG', '0', 'LINGKUNGAN PADANG CENDRANA , DESA PADANG SAPPA KEC. PONRANG KAB.LUWU', '1', '1', '1', NULL, '2019-11-30 23:06:25', '2019-11-30 23:40:23'),
(371, 211, 'COF-000025', 2, '1234510107630014', 'Eduarto Agung Patasik', 'Ujung Pandang', '1991-03-25', '082290475468', '', 'eduartoagungp.cofounder@gmail.com', '', '', 'BTN Mangga Tiga Blok B4 No5 kel. Paccerakkang Kec. Biringkanaya Kota Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 23:17:10', NULL),
(372, 371, 'AGN-000143', 3, '7324010101234514', 'Eduarto Agung Patasik', 'Ujung Pandang', '1991-03-25', '082290475468', '', 'eduartoagungp.adb01@gmail.com', '', '', 'BTN Mangga Tiga Blok B4 No5 kel. Paccerakkang Kec. Biringkanaya Kota Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 23:20:26', '2019-11-30 23:35:55'),
(373, 211, 'COF-000026', 2, '7316033008940003', 'SUPRIADI', 'TAMPUN', '1994-08-31', '085241621378', '', 'adhysupriadi@outlook.com', 'Mahasiswa', 'M', 'Jl. Batura Raya 3 Lr 2 No. 14', 'foto_UU5SY3ZNcmI3cnpxQThtdzBGRGZmQT09.jpeg', 'ktp_UU5SY3ZNcmI3cnpxQThtdzBGRGZmQT09.jpeg', '-', '-', '0', '-', '1', '1', '1', NULL, '2019-11-30 23:28:27', '2019-11-30 23:40:35'),
(374, 330, 'AGN-000144', 3, '7324010107630057', 'Agus Wijaya', 'Makassar', '1969-08-01', '0811532030', '08991325611', 'awsf1969@gmail.com', 'Wiraswasta', 'M', 'Komp. Bumi Permata Hijau, Alauddin Makassar\r\nJk. Bumi 5 Blok A3 No.9\r\nKel. Gunungsari\r\nKec. Rappocini\r\nMakassar - Sulsel', 'foto_M2ZTY2QydXZaeTJMUVh6Z2FKOXBldz09.jpg', 'ktp_M2ZTY2QydXZaeTJMUVh6Z2FKOXBldz09.jpg', 'Wahida Nur', 'Istri', '0818582030', 'Komp. Bumi Permata Hijau, Alauddin Makassar\r\nJk. Bumi 5 Blok A3 No.9\r\nKel. Gunungsari\r\nKec. Rappocini\r\nMakassar - Sulsel', '1', '1', '1', NULL, '2019-11-30 23:41:13', '2019-11-30 23:55:12'),
(375, 373, 'AGN-000145', 3, '7316033008940002', 'SUPRIADI', 'TAMPUN', '1994-08-30', '085241621378', '', 'supriadi@gmail.com', 'Mahasiswa', 'M', 'Jl. Batura Raya 3 Lr 2 No. 14', 'foto_TTlLWFZOdm5kSFpFSWxEbkI1blFBdz09.jpeg', 'ktp_TTlLWFZOdm5kSFpFSWxEbkI1blFBdz09.jpeg', '-', '-', '0', '-', '1', '1', '1', NULL, '2019-11-30 23:47:46', '2019-11-30 23:49:48'),
(376, 224, 'AGN-000146', 3, '7305070403880001', 'Darmawan Ilham Kartika', 'Takalar', '1988-03-04', '081241884744', '', 'cakocahayacomputer2@gmail.com', '', '', 'Gowa, Silahkan Lengkapi', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-11-30 23:50:30', NULL),
(377, 208, 'MEM-000013', 4, '7373022502850002', 'MARNOLINUS LEDON', 'PALOPO', '1985-02-25', '085255243121', '', 'mavroder007@gmail.com', 'PNS', 'L', 'BOMBONGAN , DESA BOMBONGAN , KEC. MAKALE KAB. TORAJA UTARA', 'foto_b25TWURQN05wTjRzVE9iQVQwVHR3UT09.jpeg', 'ktp_b25TWURQN05wTjRzVE9iQVQwVHR3UT09.jpeg', 'Hersiyati Palayukan', 'ISTRI', '082345206554', 'BOMBONGAN , DESA BOMBONGAN , KEC. MAKALE KAB. TORAJA UTARA', '1', '1', '1', NULL, '2019-11-30 23:54:56', '2019-12-01 22:45:51'),
(378, 211, 'COF-000027', 2, '7324010107630123', 'DODY WILLIAM ROSALDI', 'UJUNG PANDANG', '1985-12-23', '081342787231', '', 'dodywamena8523@gmail.com', 'WIRASWASTA', 'XL', 'SINAKMA, WAMENA', 'foto_bnhtb3VodzcwV29FUTFTd3JNcG5KUT09.jpg', 'ktp_bnhtb3VodzcwV29FUTFTd3JNcG5KUT09.jpg', 'ASNITA BARA', 'ISTRI', '081318272350', 'SINAKMA, WAMENA', '1', '1', '1', NULL, '2019-11-30 23:58:13', '2019-12-01 20:28:20'),
(379, 378, 'AGN-000147', 3, '7324010107630456', 'DODY WILLIAM ROSALDI', 'UJUNG PANDANG', '1985-12-23', '081342787231', '', 'asnitabara04@gmail.com', 'WIRASWASTA', 'XL', 'SINAKMA,  WAMENA', 'foto_TXhoUWNDZitWa3NYL1FjUUtCOEFtQT09.jpg', 'ktp_TXhoUWNDZitWa3NYL1FjUUtCOEFtQT09.jpg', 'ASNITA BARA', 'ISTRI', '081318272350', 'SINAKMA, WAMENA', '1', '1', '1', NULL, '2019-12-01 00:01:43', '2019-12-01 20:44:56'),
(380, 225, 'MEM-000014', 4, '7318054504640001', 'ABMIDER', 'Makale', '1964-04-05', '081342517191', '', 'abmiderabmider@gmail.com', 'PNS', '', 'LAMUNAN MAKALE', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 01:22:28', NULL),
(381, 225, 'MEM-000015', 4, '6406025507740001', 'SERLY PAKASI', 'MAKALE', '1974-07-15', '081350614814', '', 'serlypakasi5@gmail.com', 'PNS', '', 'JL SWADAYA  MALINAU KOTA\r\nKALIMANTAN UTARA', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 01:39:27', NULL),
(382, 225, 'MEM-000016', 4, '7318050703600003', 'YOHANIS TITTING', 'MAKALE', '1960-03-07', '081342018245', '', 'ytitting93@gmail.com', 'PNS', '', 'BUNTU KASALLE LAMUNAN MAKALE', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 02:32:19', NULL),
(383, 243, 'MEM-000017', 4, '3524081009830002', 'RONI', 'Lamongan', '1983-09-10', '081230300151', '081230300151', 'andrearyawijaya7361@gmail.com', 'Wiraswasta', '', 'Taman Prijek Kec. Laren Rt/RW 004/002', NULL, NULL, 'Andre Wijaya', 'Anak Kandung', '081230300151', 'Sudiang Makassar', '1', '0', '0', NULL, '2019-12-01 02:40:41', NULL),
(384, 0, 'FON-000006', 1, '7371021701900001', 'TRI ARI WIBOWO SAPUTRO', 'UJUNG PANDANG', '1990-01-17', '081995999805', '', 'triariwibowo293@gmail.com', '', '', 'JL. C. WASIH ASMAT BLOK A NO. 1 - KOTA MAKASSAR', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 03:19:01', NULL),
(385, 384, 'COF-000028', 2, '7371021701900002', 'TRI ARI WIBOWO SAPUTRO', 'UJUNG PANDANG', '1990-01-17', '081995999805', '', 'triarireborn@gmail.com', '', '', 'JL. C. WASIH ASMAT BLOK A NO. 1 - KOTA MAKASSAR', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 03:22:04', NULL),
(386, 385, 'AGN-000148', 3, '7371021701900003', 'TRI ARI WIBOWO SAPUTRO', 'UJUNG PANDANG', '1990-01-17', '081995999805', '', 'tria7146@gmail.com', '', '', 'JL. C. WASIH ASMAT BLOK A NO. 1 - KOTA MAKASSAR', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 03:24:36', NULL),
(387, 252, 'AGN-000149', 3, '7173035212840001', 'Desny Lucia Caecilia Pawiro', 'Ponompiaan', '1984-12-12', '082271111212', '08114353677', 'desnyp@gmail.com', 'PNS', 'L', 'Kakaskasen dua Ling VII Kec.Tomohon Utara', NULL, NULL, 'Jouvendi Audinard Stevanus Rompis', 'Suami', '08114370678', 'Kakaskasen dua Ling VII Tomohon Utara', '1', '1', '0', NULL, '2019-12-01 03:38:30', '2019-12-02 11:24:05'),
(388, 252, 'AGN-000150', 3, '7171054302730001', 'Weyby Limbong', 'Manado', '1973-02-03', '081340341387', '', 'weybylimbong@gmail.com', '', '', 'jln maesa lingkungan 1 paal dua manado', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 03:42:35', NULL),
(389, 252, 'AGN-000151', 3, '7171050912640001', 'Jonathan Limbong', 'Manado', '1964-12-09', '085299371799', '', 'jo_limbong@telkom.co.id', '', '', 'jl Yos sudarso no 212 kelurahan paldua lingkungan 6 manado sulawesi utara', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 03:45:30', NULL),
(390, 310, 'MEM-000018', 4, '3573014801000002', 'Ayna laziza makmuri', 'Malang', '2000-01-08', '088228400200', '', 'beautysalisa@gmail.com', 'Ibu rumah tangga', 'L', 'Jl wiroto 3 no 1 malang', 'foto_WEN2SGo5UUR5NWJndmhhaGpGM1ZEZz09.jpg', 'ktp_WEN2SGo5UUR5NWJndmhhaGpGM1ZEZz09.jpg', 'Muhammad juryansyah', 'Suami', '081231412292', 'Jl wiroto 3 no 1', '1', '1', '1', NULL, '2019-12-01 07:42:37', '2019-12-01 07:45:21'),
(391, 194, 'MEM-000019', 4, '7318270509940001', 'PATRIOT DOXOLOGIA SAMBEN', 'MAKALE', '1994-09-05', '082394960045', '', 'patriotsamben@gmail.com', 'Mahasiswa', '', 'SARIRA', NULL, NULL, 'Martinus Samben', 'Ayah', '081343735076', 'Tallulolo', '1', '0', '0', NULL, '2019-12-01 07:59:38', NULL),
(392, 194, 'MEM-000020', 4, '7326082312490002', 'DANIEL BALONDO', 'LANGDA', '1949-12-23', '081212487442', '', 'langda49@yahoo.de', 'wiraswasta', '', 'RT DEKKO DUSUN RANTELANGDA', NULL, NULL, 'MARTHA PAYUNG', 'Kakak', '082132746884', 'Langda Dekko', '1', '0', '0', NULL, '2019-12-01 08:45:25', NULL),
(393, 211, 'COF-000029', 2, '7602011310810001', 'HAMZAH CANDAI', 'MAPILLI', '1981-10-13', '081241511663', '', 'zarwani0405@gmail.com', 'PNS', 'L', 'jl nelayan simboro', 'foto_UTdybERmU3dlNHhTZGJDR0xpRk5UUT09.jpg', 'ktp_UTdybERmU3dlNHhTZGJDR0xpRk5UUT09.jpg', 'Nurmala', 'Istri', '082123542582', 'Jl lingk layonga majene', '1', '1', '1', NULL, '2019-12-01 14:19:31', '2019-12-01 14:48:15'),
(394, 393, 'AGN-000152', 3, '7602011310810002', 'Nurmala HR', 'majene', '1992-08-26', '082123542582', '', 'nurmala8767@gmail.com', 'wiraswasta', 'M', 'lngk tulu layonga majene', 'foto_MkhpUGIrbjNPdk5yeGFEeXgrVGdiQT09.jpg', 'ktp_MkhpUGIrbjNPdk5yeGFEeXgrVGdiQT09.jpg', 'hamzah', 'suami', '081241511663', 'jl simboro karema', '1', '1', '0', NULL, '2019-12-01 14:22:03', '2019-12-01 15:02:32'),
(395, 393, 'AGN-000153', 3, '7602011310810003', 'HAMZAH CANDAI', 'MAPILLI', '1981-10-13', '081241511663', '', 'yositerhebat@gmail.com', '', '', 'jl nelayan simboro', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 14:27:48', NULL),
(396, 190, 'AGN-000154', 3, '7318056706640002', 'Dra. ROSIANA LOMO. M.Pd', 'PALOPO', '1964-06-27', '085299659661', '', 'rosikurosi@gmail.com', 'PNS', 'L', 'PANTAN KEC. MAKALE KAB. TANA TORAJA', 'foto_d3R2RUtvaGptd2tBZUR4Vm43R0twUT09.jpeg', 'ktp_d3R2RUtvaGptd2tBZUR4Vm43R0twUT09.jpeg', 'Doni Wilson Apriel', 'Anak', '082293840848', 'PANTAN KEC. MAKALE KAB. TANA TORAJA', '1', '1', '1', NULL, '2019-12-01 14:33:24', '2019-12-01 20:33:23'),
(397, 190, 'AGN-000155', 3, '7318056706640005', 'Meri Lungan', 'Buntao\'', '1978-03-16', '085255378831', '', 'meri16toraja@gmail.com', '', '', 'Asrama Kodim 1414/Tator Blok K12', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 14:46:08', NULL),
(398, 190, 'AGN-000156', 3, '7318078706640001', 'Herianti Manga', 'Makale', '1983-08-07', '085242624223', '', 'herianti801@gmail.com', '', '', 'Mebali, kel. Mebali,  Kec. Gandangbatu Sillanan', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 14:51:32', NULL),
(399, 190, 'AGN-000157', 3, '7318056706640004', 'Nobson Mendila', 'tina\' tator', '1977-11-14', '085399079061', '', 'nobsonmendila@gmail.com', '', '', 'tina\' barat Kel.rantetayo kec.rantetayo\r\nKab. Tator', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 14:57:03', NULL),
(400, 190, 'AGN-000158', 3, '7318098706640003', 'Daniel Paberu Kabanga\'', 'Makale', '1974-09-12', '081233176313', '', 'danielpaberukabanga@gmail.com', '', '', 'lingk. Gorang, Kel Sarira, kec. Makale Utara, tana toraja', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 15:00:43', NULL),
(401, 190, 'AGN-000159', 3, '7318098706640002', 'Agustina Manga', 'Tana Toraja', '1976-08-04', '082293168665', '', 'mangaagustina86@gmail.com', '', '', 'Ke\'pe Tinoring, kec. Mengkendek', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 15:10:23', NULL),
(402, 268, 'MEM-000021', 4, '9105014108610001', 'MARSELINA P. MOMBA', 'TORAJA', '1961-08-01', '085340504561', '', 'marselinapmomba@gmail.com', 'PNS', '', 'SERUI KOTA, KELURAHAN SERUI KOTA, KABUPATEN YAPEN SELATAN-PAPUA', NULL, NULL, 'ROY PADANG', 'ANAK', '085243967668', 'SERUI KOTA, KELURAHAN SERUI KOTA, KABUPATEN YAPEN SELATAN-PAPUA', '1', '0', '0', NULL, '2019-12-01 16:22:54', NULL),
(403, 215, 'MEM-000022', 4, '7318313008780001', 'Darius raba', 'Marampi', '1978-08-30', '081246460902', '', 'rabadarius34@gmail.com', 'Pendeta', '', 'Pondingao\'', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 16:29:04', NULL),
(404, 190, 'AGN-000160', 3, '7171055305680003', 'Abdul Rauf Rasyid', 'Ujung Pandang', '1978-10-11', '081243335169', '', 'rauftombolo@gmail.com', '', '', 'Tampo Mengkendek, RT. 001/RW001.kelurahan Tampo, kecamatan Mengkendek. Tana Toraja', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 16:35:18', NULL),
(405, 214, 'MEM-000023', 4, '7326201808680001', 'MARKUS SAMMA PARRANG', 'TORAJA', '1968-08-18', '085342709196', '', 'parrangm@gmail.com', 'PETANI', '', 'RANTEPAO', NULL, NULL, 'DIANA', 'ANAK KANDUNG', '', 'RANTEPAO', '1', '0', '0', NULL, '2019-12-01 16:36:50', NULL),
(406, 190, 'AGN-000161', 3, '7171005303780002', 'KRISTINA MALLISA\'', 'SA\'DAN ULUSALU', '1964-08-25', '081355736219', '', 'kristinamallissa@gmail.com', '', '', 'JL. SADAN', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 16:38:09', NULL),
(407, 190, 'AGN-000162', 3, '7324016304890002', 'Jean Herlin Marthen', 'Ujung Pandang', '1982-01-13', '08114601275', '', 'jhmarthen@gmail.com', '', '', 'JL Palita Raya Lr 2 No 1 Makassar 90222', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 16:39:33', NULL),
(408, 190, 'AGN-000163', 3, '7318200251860002', 'Yulius Lomo', 'Palopo', '1970-02-28', '081342980686', '', 'yuliuslomo10@gmail.com', '', '', 'Jl.Nusantara Makale', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 16:41:12', NULL),
(409, 190, 'AGN-000164', 3, '7324016304890001', 'Adriaty Mike Yohanes', 'Ujung Pandang', '1962-04-01', '081244319862', '', 'adriatymikeyohanes@gmail.com', '', '', 'Jl.Kamali Makale', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 16:44:03', NULL),
(410, 190, 'AGN-000165', 3, '7324010107633003', 'Rosalina bulawan layuk', 'Mappa\'', '1974-06-22', '085240600280', '', 'rosalinalayuk@gmail.com', '', '', 'Rt/rw 002/001, Kelurahan Pantan, Kecamatan Makale, Tana Toraja', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 16:45:41', NULL),
(411, 0, 'FON-000007', 1, '7310271901840001', 'Felix Antonio Bombing', 'Makale', '1984-01-19', '082194927207', '', 'felixbombing21@gmail.com', '', '', 'Jl pongtiku No 471', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 16:52:18', NULL),
(412, 411, 'COF-000030', 2, '7371092201860001', 'Ekawanto Saba', 'Bau-Bau', '1986-01-22', '085299799979', '', 'ekaputramandiri86@gmail.com', '', '', 'Jl. Aspok Tello Barru no 4', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 16:54:00', NULL),
(413, 214, 'MEM-000024', 4, '7326091212670001', 'PETRUS MANGEAN', 'TO\'REA', '1967-12-12', '085213931776', '', 'mangeanpetrus58@gmail.com', '-', 'L', 'TO\'REA', 'foto_dy9TeG43M0hXYmhhZmJDY0pNRXprdz09.jpeg', 'ktp_dy9TeG43M0hXYmhhZmJDY0pNRXprdz09.jpeg', 'ASTIN MANGEAN', 'ANAK KANDUNG', '085241766518', 'TO\'REA', '1', '1', '1', NULL, '2019-12-01 16:58:04', '2019-12-02 11:33:13'),
(414, 272, 'AGN-000166', 3, '7318056903630002', 'SARI MULYANI', 'SUKOHARJO', '1964-06-17', '081393056065', '', 'Sari.mulyani008@mail.com', '', '', 'LAWU RT 001/RW 012  Kl.LAWU.. Kec NGUTER..Kab SUKOHARJO', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 17:02:03', NULL),
(415, 275, 'MEM-000025', 4, '9171027112900001', 'SAHARIA', 'JAYAPURA', '1990-12-31', '085244001002', '', 'rhiagsp@gmail.com', '', '', 'HAMADI PANTAI, KELURAHAN HAMADI, KECAMATAN JAYAPURA SELATAN', NULL, NULL, 'SURYATI', 'SAUDARA KANDUNG', '082198968221', 'Hamadi rawa II', '1', '0', '0', NULL, '2019-12-01 17:04:59', NULL),
(416, 214, 'MEM-000026', 4, '7326206703790001', 'MERY SAMPE', 'KE\'PE\'', '1979-03-27', '081341207007', '', 'sampemery70@gmail.com', '-', '', 'POLOPADANG', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 17:18:36', NULL),
(417, 214, 'MEM-000027', 4, '7326114605940002', 'MERCHY RYA', 'MAKALE', '1994-05-06', '082345757499', '', 'riamerchy888@gmail.com', '-', 'L', 'TAGARI', 'foto_dGNBVzdZeXdLV1o2N3Y4V1VqenpPZz09.jpeg', 'ktp_dGNBVzdZeXdLV1o2N3Y4V1VqenpPZz09.jpeg', 'ARIS PAENDE PAGINTA', 'SUAMI', '0', 'TAGARI', '1', '1', '1', NULL, '2019-12-01 17:27:46', '2019-12-02 10:25:59'),
(418, 267, 'MEM-000028', 4, '7324030508790002', 'HERIANTO PAMALLA', 'WAWONDULA', '1979-08-05', '082192903872', '', 'heri_antoe@yahoo.co.id', 'SWASTA', '', 'JALAN CITRAWATI GANG BONGKOK NO.305, KELURAHAN SUNGAI DANAU, KECAMATAN SATUI', NULL, NULL, 'LOIS GAMA', 'ISTRI', '081342283446', 'Jl. G. Bromo No.12 Asuli, wawondula, luwu timur', '1', '0', '0', NULL, '2019-12-01 17:50:52', NULL),
(419, 292, 'MEM-000029', 4, '5304052707890002', 'DAUD LOPES', 'KAIBAIR-LIQUISA', '1989-02-27', '081344544610', '', 'daudlopez@gmail.com', 'SWASTA', '', 'JALAN ANGGREK SP 4, KELURAHAN UDAPI HILIR, KECAMATAN PRAFI', NULL, NULL, 'APRILINA SALOMBE', 'ISTRI', '082247192555', 'JL. ANGGREK, SP 4, KEL. UDAPI HILIR, KEC. PRAFI KAB. MANOKWARI, PROP. PAPUA BARAT', '1', '0', '0', NULL, '2019-12-01 18:13:51', NULL),
(420, 371, 'AGN-000167', 3, '7318273006800001', 'Marselinus Batara', 'Mandetek', '1980-06-30', '081242300181', '', 'bataramarselinus@gmail.com', '', '', 'jl.pongtiku no 477 mendoe selatan,kel.tambunan,kec.makale utara,kab.Tana toraja', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 18:18:58', NULL),
(421, 208, 'MEM-000030', 4, '7371112808820008', 'Dion Sandro Rompu', 'TORAJA', '1982-08-28', '08114102050', '', 'dionsandro2701@gmail.com', 'KARYAWAN SWASTA', '', 'BUKIT KATULISTIA BLOK D.15 BERUA ,KEC BIRING KANAYA KOTA MAKASSAR', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 18:53:01', NULL),
(422, 371, 'AGN-000168', 3, '7326112003860001', 'michael bura para\'pak', 'Rantepao', '1986-03-20', '085255446813', '', 'icipmichael@yahoo.co.id', '', '', 'Jln tagari lr.2 no.2  tagari tallunglipu', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 19:17:12', NULL),
(423, 215, 'MEM-000031', 4, '7318052103670001', 'Iskandar adhasym', 'Pare-pare', '1969-03-21', '085398024269', '', 'iskandaradhasym@gmail.com', 'Polisi', '', 'Tondon mamullu', NULL, NULL, 'Agustina parre', 'Istri', '085145817763', 'Tondon mamullu', '1', '0', '0', NULL, '2019-12-01 20:01:00', NULL),
(424, 215, 'MEM-000032', 4, '9109016909730004', 'Hermince papang', 'Toraja', '1973-09-29', '082289090059', '', 'Hermincepapang@gmail.com', '-', '', 'Jl.samratulangi', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 20:06:07', NULL),
(425, 288, 'MEM-000033', 4, '9105012309860005', 'CHARLES P. WAIRARA', 'SERUI', '1986-09-23', '081341754624', '', 'charlespwairara@gmail.com', 'PEGAWAI SWASTA', '', 'KANTOR BANK PAPUA CABANG WAREN, KABUPATEN WAROPEN-PAPUA', NULL, NULL, 'NANI RIANI ARONGGEAR', 'ISTRI', '082259018317', 'WAREN', '1', '0', '0', NULL, '2019-12-01 20:47:41', NULL),
(426, 225, 'MEM-000034', 4, '7318051401630003', 'DAUD SIPI TOTO', 'BUAKAYU', '1963-01-14', '082348188460', '', 'daudsipitoto5@gmail.com', 'KARYAWAN SWASTA', '', 'KAMIRI  TONDON MAMULLU  MAKALE', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 20:52:59', NULL),
(427, 215, 'MEM-000035', 4, '7326182708730001', 'Edison rane tondok', 'Bokin', '1973-08-27', '085343970755', '', 'Edisontondok@gmail.com', '-', '', 'Ulusalu bokin', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 20:55:29', NULL),
(428, 225, 'MEM-000036', 4, '7318221104670001', 'AVERIJL DJAJA', 'MAKALE', '1967-04-11', '081241792966', '', 'daverijl@gmail.com', 'PNS', '', 'TETEBASSI\r\nTAMBUNAN\r\nMAKALE UTARA', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-01 21:26:08', NULL),
(429, 205, 'MEM-000037', 4, '7326154512810002', 'DESIANTY', 'PAO', '1981-12-05', '081242231224', '', 'berylavassalom.ba01@gmail.com', 'WIRASWASTA', 'L', 'Eranbatu,Dinding Batu Kesu\'', 'foto_VXlIMHpFdmdrWW9BTGlBd2xIYUZwZz09.jpg', 'ktp_VXlIMHpFdmdrWW9BTGlBd2xIYUZwZz09.jpg', 'Deon Robert Roppon', 'Anak Kandung', '00000000000', 'Rinding Batu', '1', '1', '1', NULL, '2019-12-01 21:38:31', '2019-12-02 10:04:42'),
(430, 191, 'AGN-000169', 3, '7372032202770003', 'Wahyu Haswadi', 'Parepare', '1977-02-22', '085377776917', '', 'Wahyuhaswadi77@gmail.com', 'PNS', 'XXL', 'JALAN LAUPE RT. 002 RW. 004 KEL. BUKIT HARAPAN KEC. SOREANG KOTA PAREPARE', 'foto_Uk84WFFtSU5ONVFIRXN0T25qdFpYUT09.jpeg', 'ktp_Uk84WFFtSU5ONVFIRXN0T25qdFpYUT09.jpeg', 'MUTMAINNAH ABDUH', 'ISTRI', '081355866575', 'JALAN LAUPE RT. 002 RW. 004 KEL. BUKIT HARAPAN KEC. SOREANG KOTA PAREPARE', '1', '1', '1', NULL, '2019-12-01 21:44:50', '2019-12-01 23:58:02'),
(431, 246, 'MEM-000038', 4, '7312051308740002', 'ILHAM UMAR', 'BATU BATU', '1974-08-13', '085298953883', '', 'ilhamumar1974@gmail.com', 'PETANI', 'XL', 'MADINING KEL. ATTANG SALO KECAMATAN MARIORIAWA', 'foto_TDI5emhRYXl2U1dDbHhjMTcyd3RQZz09.jpeg', 'ktp_TDI5emhRYXl2U1dDbHhjMTcyd3RQZz09.jpeg', 'RUSNAH', 'ISTRI', '085298953883', 'MADINING KEL. ATTANG SALO KECAMATAN MARIORIAWA', '1', '1', '1', NULL, '2019-12-01 21:48:11', '2019-12-01 21:54:54'),
(432, 205, 'MEM-000039', 4, '7326115811680001', 'ESRY PODANG SAKKUNG', 'RANTEPAO', '1968-11-18', '081243211088', '', 'berylavassalom.ba02@gmail.com', 'Wiraswasta', '', 'Jl.Pemuda Tagari Tallunglipu', NULL, NULL, 'Onesimus', 'Anak Kandung', '', 'Jl.Pemuda Tagari Tallung lipu', '1', '0', '0', NULL, '2019-12-01 21:59:38', NULL),
(433, 228, 'MEM-000040', 4, '7372035709840013', 'YUKI ASWAR', 'PAREPARE', '1984-09-17', '082188968114', '', 'yukiaswar123@gmail.com', 'IBU RUMAH TANGGA', 'M', 'JL. MENARA', 'foto_QlJ0Ty9adXorMW1lZU9WL1BlVTBOZz09.jpg', 'ktp_QlJ0Ty9adXorMW1lZU9WL1BlVTBOZz09.jpg', 'QYARA IZZ QAIREEN MAWARDI', 'ANAK', '082188968114', 'JL. MENARA', '1', '1', '1', NULL, '2019-12-01 22:18:19', '2019-12-01 22:36:45'),
(434, 208, 'MEM-000041', 4, '7326021808740002', 'AGUTINUS PARRANGAN', 'MAMUJU', '1974-08-18', '082293524546', '', 'agustinusparrangan2701@gmail.com', 'ANGGOTA DEWAN', 'L', 'JL POROS RANTEPAO-TALLUNGLIPU KEC TALLUNGLIPU KAB TORAJA UTARA', 'foto_V20yN1pKUVV5eDFhb0xDZmxHTEhqQT09.jpeg', 'ktp_V20yN1pKUVV5eDFhb0xDZmxHTEhqQT09.jpeg', 'IRIN LAMUAKA', 'ANAK KANDUNG', '0', 'JL POROS RANTEPAO-TALLUNGLIPU KEC TALLUNGLIPU KAB TORAJA UTARA', '1', '1', '1', NULL, '2019-12-01 22:59:34', '2019-12-01 23:07:46'),
(435, 430, 'MEM-000042', 4, '7315021810800002', 'MARWAN EDI', 'PAREPARE', '1980-10-18', '085294546111', '', 'marwanedi1980@gmail.com', 'WIRASWASTA', 'L', 'KAE\'E RT.001 RW. 001 DESA TASIWALIE SUPPA PINRANG', 'foto_cURGdFZtR1pRQ2RncGdOdldrT2J3QT09.jpeg', 'ktp_cURGdFZtR1pRQ2RncGdOdldrT2J3QT09.jpeg', 'FITRAWATI ADNAN', 'ADIK KANDUNG', '082348333535', 'BTN TIMURAMA BLOK A.7/11 LOMPOE BACUKIKI PAREPARE', '1', '1', '1', NULL, '2019-12-01 23:30:03', '2019-12-02 08:45:24'),
(436, 385, 'AGN-000170', 3, '7304021407950003', 'AKBAR TANJUNG NURDIN', 'TANETEA', '1995-07-14', '082195680216', '085299461282', 'akbartanjungnur14@gmail.com', 'Mahasiswa', 'S', 'JL. LANTO DG PASEWANG KEC. TAMALATEA KOTA MAKASSAR', 'foto_djBod3dhNmJldHVlVXoxTmJDWHY3Zz09.jpg', 'ktp_djBod3dhNmJldHVlVXoxTmJDWHY3Zz09.jpg', 'Rahmat', 'Kakak', '085299461282', 'Kab.jeneponto', '1', '1', '1', NULL, '2019-12-02 00:03:12', '2019-12-02 02:02:47'),
(437, 0, 'FON-000008', 1, '7372040710860004', 'Achmad Hidayat', 'parepare', '1986-11-07', '082349654656', '', 'adzan.collection62@gmail.com', 'Pemai Network Sejati (PNS)', 'XXL', 'JL. PINISI NO. 78 KEC. BACUKIKI BARAT KOTA PAREPARE', 'foto_TCtJRmNJSlR2QlFOb0Rta28zSlZEZz09.jpeg', 'ktp_TCtJRmNJSlR2QlFOb0Rta28zSlZEZz09.jpeg', 'Jihadiyah Rusdi', 'Ibu Kandung', '09876787654345', 'JL. PINISI NO. 78 KEC. BACUKIKI BARAT KOTA PAREPARE', '1', '1', '1', NULL, '2019-12-02 00:09:11', '2019-12-02 00:15:55'),
(438, 430, 'MEM-000043', 4, '7372021510580001', 'H. ABD. KADIR MATHAR, SE', 'PAREPARE', '1958-10-15', '081245940120', '', 'kadir1958abdul@gmail.com', 'PENSIUNAN', 'XL', 'JL. H. A. ABUBAKAR NO. 19 KEL. UJUNG SABBANG KEC. UJUNG KOTA PAREPARE', 'foto_am5BV0pVcm1YRkFvakgzaXd1eXB3Zz09.jpeg', 'ktp_am5BV0pVcm1YRkFvakgzaXd1eXB3Zz09.jpeg', 'KAMARDY ANUGRAH KADIR MATHAR', 'ANAK', '085342823767', 'JL. H. A. ABUBAKAR NO. 19 KEL. UJUNG SABBANG KEC. UJUNG KOTA PAREPARE', '1', '1', '1', NULL, '2019-12-02 00:11:07', '2019-12-02 09:25:59'),
(439, 437, 'COF-000031', 2, '7372040710860002', 'Achmad Hidayat', 'parepare', '1986-11-07', '082349654656', '', 'tradingbtc01@gmail.com', 'Pemain Network Sejati (PNS)', 'XXL', 'JL. PINISI NO. 78 KEC. BACUKIKI BARAT KOTA PAREPARE', 'foto_VFZ4a3pwKzhUY2Q1cEtVY0VZTEcvdz09.jpeg', 'ktp_VFZ4a3pwKzhUY2Q1cEtVY0VZTEcvdz09.jpeg', 'Jihadiyah Rusdi', 'Ibu Kandung', '09876545678', 'JL. PINISI NO. 78 KEC. BACUKIKI BARAT KOTA PAREPARE', '1', '1', '1', NULL, '2019-12-02 00:12:50', '2019-12-02 00:26:29'),
(440, 439, 'AGN-000171', 3, '7372040710860003', 'Zaenab', 'parepare', '1990-02-19', '085242852679', '', 'zaenabalsyam@gmail.com', 'Bidan', 'XL', 'JL. PINISI NO. 78 KEC. BACUKIKI BARAT KOTA PAREPARE', 'foto_bHJxbzRUNHRybjhydnFTYUI2MERFdz09.jpg', 'ktp_bHJxbzRUNHRybjhydnFTYUI2MERFdz09.jpeg', 'Jihadiyah Rusdi', 'Mertua', '0987876545678', 'JL. PINISI NO. 78 KEC. BACUKIKI BARAT KOTA PAREPARE', '1', '1', '1', NULL, '2019-12-02 00:15:47', '2019-12-02 00:29:38'),
(441, 439, 'AGN-000172', 3, '9109017005780004', 'Roswaty', 'makassar', '2019-10-29', '081354006205', '', 'roswatty@gmail.com', '', '', 'Jl. Pa\'bongkayya No.67 Kel. Laikang, Kec. Biringkanaya, Makassar', NULL, NULL, '', '', '', '', '0', '0', '0', NULL, '2019-12-02 00:20:40', '2019-12-02 01:17:13'),
(442, 225, 'MEM-000044', 4, '7318207112630001', 'MARTHINA SEMBO', 'TANA TORAJA', '1963-12-31', '085398025166', '', 'marthinasembo529@gmail.com', 'PEGAWAI NEGERI SIPIL', '', 'TANDINGAN BANGA REMBON\r\nTANA TORAJA', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 00:23:29', NULL),
(443, 437, 'COF-000032', 2, '7372045311740002', 'Sriwana', 'parepare', '2019-12-24', '085242217995', '', 'sriwanamulyansyah@gmail.com', '', '', 'jl.baumassepe parepare', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 00:39:19', NULL),
(444, 439, 'AGN-000173', 3, '7372011510770001', 'Masnama syam', 'parepare', '2019-12-23', '081354834545', '', 'bochae.syam@gmail.com', '', '', 'jl garuda 2 blok A no 9 perumnas wekkee kota parepare', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 00:41:19', NULL),
(445, 443, 'AGN-000174', 3, '7372022101780001', 'H.Herman B', 'parepare', '1978-01-21', '0811423188', '', 'h.herman.basir@gmail.com', '', '', 'jl. lasinrang no. 264 kota parepare', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 00:44:04', NULL),
(446, 443, 'AGN-000175', 3, '7372040812990001', 'Muhammad Virgiawan Maulana Jasmin', 'parepare', '1999-12-08', '082150350916', '', 'virgiawanmaulana125@gmail.com', '', '', 'jl. bau massepe kota parepare', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 00:46:35', NULL),
(447, 443, 'AGN-000176', 3, '7311050309800001', 'Diman Syahputra', 'lapakka', '1980-09-03', '082197488900', '', 'dimansyahputra0309@gmail.com', '', '', 'lapakka kec. mallusetasi kab. barru', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 00:48:39', NULL),
(448, 443, 'AGN-000177', 3, '7372041508750001', 'Mulyansyah Amin', 'nunukan', '1975-08-15', '085259029298', '', 'mulyansyah457@gmail.com', '', '', 'jl. bau massepe', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 00:50:23', NULL),
(449, 225, 'MEM-000045', 4, '7326024202820001', 'LUDIA KARAMBE', 'PANGLI', '1982-02-02', '082291803177', '', 'ludiakarambe98@gmail.com', 'PNS', '', 'LINGKUNGAN KALAWA UTARA\r\nPANGLI  SESEAN\r\nTORAJA UTARA', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 00:52:01', NULL),
(450, 412, 'AGN-000178', 3, '7371092409790007', 'YOS SUDARSO MANGGUALI', 'Masamba', '1978-09-24', '082348024651', '', 'darsothere@gmail.com', '', '', 'toraja', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 00:52:12', NULL),
(451, 211, 'COF-000033', 2, '7326024202820002', 'Hj. Nursinah', 'makassar', '1960-11-12', '082189184059', '', 'nursinah.thalibdul@icloud.com', '', '', 'Jl. Hertasning 6 no.24', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 01:07:39', NULL),
(452, 451, 'AGN-000179', 3, '7318207112630002', 'Muhammad Thaib', 'Jakarta', '1987-03-28', '085931978187', '', 'muh.thaib28@gmail.com', '', '', 'Jl hertasning 6 no.24', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 01:09:57', NULL),
(453, 211, 'COF-000034', 2, '7372035709840015', 'Widya Sri Handayani', 'Lampung', '1981-04-18', '087784458581', '', 'radya.sastrawangi81@gmail.com', '', '', 'jl Garuda raya no 39 Rt002/001 Beji Timur Kota Depok', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 01:12:17', NULL),
(454, 437, 'COF-000035', 2, '9107017005780004', 'ROSWATY', 'SORONG', '1978-05-30', '081354006205', '', 'roswaty@gmail.com', '', '', 'Jl. Pa\'bongkayya No.67 Kel. Laikang, Kec. Biringkanaya, Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 01:22:13', NULL),
(455, 454, 'AGN-000180', 3, '9107018005780004', 'ROSWATY', 'SORONG', '1978-05-30', '081354006205', '', 'dolly_sholly@hotmail.com', '', '', 'Jl. Pa\'bongkayya No.67 Kel. Laikang, Kec. Biringkanaya, Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 01:25:30', '2019-12-02 01:26:13'),
(456, 269, 'MEM-000046', 4, '3173012109790001', 'Irawan', 'Bandung', '1979-09-21', '087823297203', '', 'irawanklein86@gmail.com', 'swasta', '', 'Kp Tanah Koja No.43 RT 001 RW 003. Kel Duri Kosambi. Kec Cengkareng. Jakarta', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 02:20:20', NULL),
(457, 269, 'MEM-000047', 4, '7371014401560002', 'Theresia Heriawaty', 'Ujung Pandang', '1956-01-04', '085340531095', '', 'heriawatythreis@gmail.com', 'IRT', '', 'Jl. Haji Bau No 44. RT 002 RW 001. Kel Kunjung Mae. Kec Mariso. Makassar', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 07:32:05', NULL),
(458, 240, 'MEM-000048', 4, '7318023101880001', 'JEFRIAN TANDU\'', 'MAKALE', '1988-01-01', '081242649149', '', 'jefrian.tandu@yahoo.com', 'WIRASWASTA', 'XL', 'GASING, MENGKENDEK, TANA TORAJA, SULAWESI SELATAN', 'foto_YUozUWdPOFpSWFU4aXVPQmhrRkJIdz09.jpg', 'ktp_YUozUWdPOFpSWFU4aXVPQmhrRkJIdz09.jpg', 'JEFRIAN TANDU\'', 'ANAK', '081242649149', 'GASING, MENGKENDEK, TANA TORAJA, SULAWESI SELATAN', '1', '1', '1', NULL, '2019-12-02 08:27:29', '2019-12-02 08:33:57'),
(459, 226, 'MEM-000049', 4, '7326154706700004', 'Damaris mangngape', 'Angin-angin', '1970-06-07', '081355604826', '', 'damaristoraja0@gmail.com', 'Swasta', 'L', 'Gantanan', 'foto_VkdpdXEzMTNrSXZFVjlMYTdjUnZMZz09.jpg', 'ktp_VkdpdXEzMTNrSXZFVjlMYTdjUnZMZz09.jpg', 'Tinus tangkelayuk', 'Suami', '085255658338', 'Gantanan', '1', '1', '1', NULL, '2019-12-02 09:32:43', '2019-12-02 09:42:56'),
(460, 207, 'MEM-000050', 4, '7372016501960002', 'Catur suci suryaningsih', 'Parepare', '1996-01-25', '082333309125', '', 'catursucisuryaningsih@yahoo.com', 'Swasta', '', 'Komp.perum.PNS bandar madaniblok A 2/5', NULL, NULL, 'Dwie reskiyanti', 'Saudara kandung', '085252145567', 'Jompie, parepare', '1', '0', '0', NULL, '2019-12-02 10:08:52', NULL),
(461, 252, 'AGN-000181', 3, '7602011310810005', 'Tri Budianto Hartadi', 'manado', '1981-09-20', '08114343241', '', 'tri.hartadi@gmail.com', '', '', 'Ranotana Ling. III, Sario', NULL, NULL, '', '', '', '', '1', '0', '0', NULL, '2019-12-02 10:46:44', NULL),
(462, 440, 'MEM-000051', 4, '9312193106830000', 'ABD. RAJAB', 'PINRANG', '1993-10-10', '085342088268', '', 'rajabbasseang93@gmail.com', 'Mahasiswa', 'L', 'Jl. Laupe soreang. Kota Parepare', 'foto_WVhEa0dBMjN2RWtTdy81RDFSemdJZz09.jpeg', 'ktp_WVhEa0dBMjN2RWtTdy81RDFSemdJZz09.jpeg', 'Ismawanti', 'sepupu', '00', 'Pasaparang, Basseang, Pinrang', '1', '1', '1', NULL, '2019-12-02 11:21:28', '2019-12-02 11:24:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `auth_person`
--
ALTER TABLE `auth_person`
  ADD PRIMARY KEY (`id_auth`) USING BTREE;

--
-- Indexes for table `contoh`
--
ALTER TABLE `contoh`
  ADD PRIMARY KEY (`id_contoh`) USING BTREE;

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id_deposit`) USING BTREE;

--
-- Indexes for table `history_comission`
--
ALTER TABLE `history_comission`
  ADD PRIMARY KEY (`di_history`) USING BTREE;

--
-- Indexes for table `investment`
--
ALTER TABLE `investment`
  ADD PRIMARY KEY (`id_invest`,`kode_invest`) USING BTREE;

--
-- Indexes for table `investment_dividen`
--
ALTER TABLE `investment_dividen`
  ADD PRIMARY KEY (`id_invest_dividen`) USING BTREE;

--
-- Indexes for table `investment_profit`
--
ALTER TABLE `investment_profit`
  ADD PRIMARY KEY (`id_invest_profit`) USING BTREE;

--
-- Indexes for table `level_person`
--
ALTER TABLE `level_person`
  ADD PRIMARY KEY (`id_level`) USING BTREE;

--
-- Indexes for table `pengeluaran_baju`
--
ALTER TABLE `pengeluaran_baju`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rekening_person`
--
ALTER TABLE `rekening_person`
  ADD PRIMARY KEY (`id_rekening_person`) USING BTREE;

--
-- Indexes for table `setting_financial`
--
ALTER TABLE `setting_financial`
  ADD PRIMARY KEY (`id_financial`) USING BTREE;

--
-- Indexes for table `setting_rekening`
--
ALTER TABLE `setting_rekening`
  ADD PRIMARY KEY (`id_rekening`) USING BTREE;

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`) USING BTREE;

--
-- Indexes for table `tb_person`
--
ALTER TABLE `tb_person`
  ADD PRIMARY KEY (`id_person`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_person`
--
ALTER TABLE `auth_person`
  MODIFY `id_auth` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

--
-- AUTO_INCREMENT for table `contoh`
--
ALTER TABLE `contoh`
  MODIFY `id_contoh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id_deposit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `history_comission`
--
ALTER TABLE `history_comission`
  MODIFY `di_history` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment`
--
ALTER TABLE `investment`
  MODIFY `id_invest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `investment_dividen`
--
ALTER TABLE `investment_dividen`
  MODIFY `id_invest_dividen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `investment_profit`
--
ALTER TABLE `investment_profit`
  MODIFY `id_invest_profit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `level_person`
--
ALTER TABLE `level_person`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengeluaran_baju`
--
ALTER TABLE `pengeluaran_baju`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rekening_person`
--
ALTER TABLE `rekening_person`
  MODIFY `id_rekening_person` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `setting_rekening`
--
ALTER TABLE `setting_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_person`
--
ALTER TABLE `tb_person`
  MODIFY `id_person` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
