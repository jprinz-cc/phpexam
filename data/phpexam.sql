--
-- Database: `phpexam`
--
DROP DATABASE IF EXISTS `phpexam`;
CREATE DATABASE IF NOT EXISTS `phpexam` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpexam`;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--
DROP TABLE IF EXISTS `quotes`;

CREATE TABLE `quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `quote` text NOT NULL,
  `source` varchar(100) NOT NULL,
  `favorite` tinyint(1) UNSIGNED NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Add user
--
DROP USER IF EXISTS `phpexamuser`@`localhost`;

CREATE USER
	`phpexamuser`@`localhost` IDENTIFIED BY 'p@ssw0rd';

GRANT ALL PRIVILEGES ON `phpexam` . `quotes` TO `phpexamuser`@`localhost`;

FLUSH PRIVILEGES;


