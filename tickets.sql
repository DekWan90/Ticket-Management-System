CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `userID` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  PRIMARY KEY (`id`),
  KEY `FK1_TICKET` (`userID`),
  CONSTRAINT `FK1_TICKET` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34627 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `tickets`;

INSERT INTO `tickets` (`id`, `name`, `created_at`, `updated_at`, `subject`, `type`, `description`, `attachment`, `details`, `userID`, `status`) VALUES
	(19, 'Rose', '2019-03-14 01:08:46', '2019-03-14 01:08:46', 'Huhuhuhuhu', 'colonyShop', '<p>aaaaaaaaaaaaaaa</p>', 'C:\\Users\\PINKEXC-RES-003\\AppData\\Local\\Temp\\phpD4D6.tmp', NULL, 8, ''),
	(21, 'Ihsan', '2019-03-14 01:50:43', '2019-03-14 01:50:43', 'huhu', 'development', '<p>hhhhhhhhhhhhh</p>', 'C:\\Users\\PINKEXC-RES-003\\AppData\\Local\\Temp\\php5988.tmp', NULL, 24, ''),
	(22, 'Ihsan', '2019-03-14 01:52:33', '2019-03-14 01:52:33', 'huhu', 'development', '<p>hhhhhhhhhhhhh</p>', 'C:\\Users\\PINKEXC-RES-003\\AppData\\Local\\Temp\\php95C.tmp', NULL, 29, ''),
	(23, 'Youngbae', '2019-03-14 02:11:10', '2019-03-14 02:11:10', 'Hohohoho', 'loginIssue', '<p>FFDDSF</p>', 'C:\\Users\\PINKEXC-RES-003\\AppData\\Local\\Temp\\php1486.tmp', '{"reasonLoss":"locked","acc":"YES"}', 31, ''),
	(24, 'Daesung', '2019-03-14 02:15:52', '2019-03-14 02:15:52', 'Hohohoho', 'loginIssue', '<p>FFDDSF</p>', 'C:\\Users\\PINKEXC-RES-003\\AppData\\Local\\Temp\\php60A1.tmp', '{"reasonLoss":null,"acc":null}', 33, ''),
	(25, 'Riri', '2019-03-14 02:18:34', '2019-03-14 02:18:34', 'huhuhuhuhuhuhuhuhu', 'wallet', '<p>aaaaaaaaaaaaaaaaaaaaaaaaa</p>', 'C:\\Users\\PINKEXC-RES-003\\AppData\\Local\\Temp\\phpDC22.tmp', NULL, 45, ''),
	(26, 'Seungri', '2019-03-14 02:20:10', '2019-03-14 02:20:10', 'huhuhuhuhuhuhuhuhu', 'wallet', '<p>aaaaaaaaaaaaaaaaaaaaaaaaa</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/0b2d02de/UPFILE_0b2d02de.png', NULL, 47, ''),
	(27, 'Jinu', '2019-03-14 02:23:04', '2019-03-14 02:23:04', 'jinunununnunu', 'disable2FA', '<p>ghghgjh</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/03b80197/UPFILE_03b80197.png', '{"login2FA":"broken","backupCode":"yes","fullName":"huhuhuhu","idNum":"hguygyug","selfie":{}}', 48, ''),
	(28, 'Haha', '2019-03-14 02:40:27', '2019-03-14 02:40:27', 'rm', 'bannedAcc', '<p>9999999999</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/03780173/UPFILE_03780173.png', '{"fullName":"aaaaaaaaa","idNum":"aaaaaaaaaaa","phoneNum":"7889","selfie":{}}', 49, ''),
	(29, 'Hoon', '2019-03-14 02:45:58', '2019-03-14 02:45:58', 'hihihihi', 'bannedAcc', '<p>a</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/03bd0195/UPFILE_03bd0195.jpg', '{"fullName":"huhuhuhu","idNum":"aaaaaaaaaaa","phoneNum":"7889","selfie":"C:\\\\laragon\\\\www\\\\ticket\\\\public\\\\storage\\/attachment\\/03bd0195\\/UPFILE_03bd0195.png"}', 50, ''),
	(30, 'Zeera', '2019-03-14 03:17:26', '2019-03-14 03:17:26', 'Hb', 'bannedAcc', '<p>ty</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/05cf01f8/UPFILE_05cf01f8.png', '{"fullName":"huhuhuhu","idNum":"aaaaaaaaaaa","phoneNum":"7889","selfie":"C:\\\\laragon\\\\www\\\\ticket\\\\public\\\\storage\\/attachment\\/05cf01f8\\/UPFILE_05cf01f8.jpg"}', 51, ''),
	(31, 'j', '2019-03-14 03:36:40', '2019-03-14 03:36:40', 'j', 'receiveIssue', '<p>j</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/006b006b/UPFILE_006b006b.png', '{"currency":null,"blockExp":null,"depoAddr":null,"transactionID":null,"date":null}', 55, ''),
	(32, 'ghghghghghghghghghj', '2019-03-14 04:05:36', '2019-03-14 04:05:36', 'gfgfgfgfgfj', 'colonyShop', '<p>ffffff</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/4ce207b2/UPFILE_4ce207b2.png', NULL, 58, ''),
	(33, 'aaaaaaaaaaa', '2019-03-14 04:28:34', '2019-03-14 04:28:34', 'aaaaaaaa', 'receiveIssue', '<p>aaaaaaaa</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/190d042c/UPFILE_190d042c.png', '{"currency":"bch","blockExp":"no","depoAddr":"no","transactionID":"2019-03-16","date":"2019-03-14"}', 61, ''),
	(34, 'Aaaaaaaaaaaaaaa', '2019-03-15 01:55:25', '2019-03-15 01:55:25', 'BLACKPINK', 'development', '<p>gdgfdgfg</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/2ba70590/UPFILE_2ba70590.png', NULL, 63, ''),
	(35, 'IUUUUUUUUUUUU', '2019-03-15 02:38:54', '2019-03-15 02:38:54', 'UOOOOOOOOOO', 'development', '<p>OOOOOO</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/1da80446/UPFILE_1da80446.jpg', NULL, 66, ''),
	(36, 'anisppppppp', '2019-03-18 02:41:53', '2019-03-18 02:41:53', 'test suibject', 'colonyShop', '<p>ppppppp</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/1c0b04bc/UPFILE_1c0b04bc.jpg', NULL, 74, ''),
	(37, 'anisiiyi', '2019-03-18 02:42:28', '2019-03-18 02:42:28', 'ettw', 'loginIssue', '<p>iuuuuu</p>', 'C:\\laragon\\www\\ticket\\public\\storage/attachment/0f010360/UPFILE_0f010360.png', '{"reasonLoss":"lost","acc":"uiii"}', 75, 'Closed'),
	(34613, 'cai', '2019-03-18 09:10:44', '2019-03-18 09:10:44', 'BLACKPINK', 'development', 'aaaaaaaaa', 'C:\\laragon\\www\\loginUser\\public\\storage/attachment/0257012e/UPFILE_0257012e.jpg', NULL, 34604, 'Closed'),
	(34614, 'cai', '2019-03-18 09:14:56', '2019-03-18 09:14:56', 'Hahahaha', 'bannedAcc', '11111111', 'C:\\laragon\\www\\loginUser\\public\\storage/attachment/0257012e/UPFILE_0257012e.png', '{"fullName":"Siti Nur Shahidah","idNum":"1111111111111111111111","phoneNum":"111111111111111111","selfie":"C:\\\\laragon\\\\www\\\\loginUser\\\\public\\\\storage\\/attachment\\/0257012e\\/UPFILE_0257012e.jpg"}', 34604, 'Closed'),
	(34615, 'Shahidah', '2019-03-20 09:04:14', '2019-03-20 09:04:14', 'Try', 'general', 'Lost password', 'C:\\laragon\\www\\loginUser\\public\\storage/attachment/0dc0031b/UPFILE_0dc0031b.png', '{"category":"sell"}', 34602, 'Open'),
	(34616, 'Shahidah', '2019-03-20 09:06:15', '2019-03-20 09:06:15', 'Huhu', 'development', 'Huhuhuh', 'C:\\laragon\\www\\loginUser\\public\\storage/attachment/0dc0031b/UPFILE_0dc0031b.jpg', NULL, 34602, 'Closed'),
	(34617, 'Shahidah', '2019-03-21 08:29:15', '2019-03-21 08:29:15', 'BLACKPINK', 'development', 'Okokokokok', 'C:\\laragon\\www\\loginUser\\public\\storage/attachment/0dc0031b/UPFILE_0dc0031b.png', NULL, 34602, 'Open'),
	(34618, 'Shahidah', '2019-03-26 07:18:23', '2019-03-26 07:18:23', 'Try', 'loginIssue', 'aaaa', 'C:\\laragon\\www\\loginUser\\public\\storage/attachment/0dc0031b/UPFILE_0dc0031b.png', '{"reasonLoss":"lost","acc":"Yes"}', 34602, 'Open'),
	(34619, 'Shahidah', '2019-03-26 08:45:23', '2019-03-26 08:45:23', 'Try', 'loginIssue', 'Try', 'C:\\laragon\\www\\loginUser\\public\\storage/attachment/0dc0031b/UPFILE_0dc0031b.png', '{"reasonLoss":"lost","acc":"Yes"}', 34602, 'Open'),
	(34620, 'Shahidah', '2019-03-27 04:26:28', '2019-03-27 04:26:28', 'Hello Pulisssss', 'colonyShop', 'aaaaa', 'C:\\laragon\\www\\loginUser\\public\\storage/attachment/0dc0031b/UPFILE_0dc0031b.png', NULL, 34602, 'open'),
	(34621, 'Shahidah', '2019-03-27 04:29:54', '2019-03-27 04:29:54', 'Hello Pulisssss 2', 'colonyShop', 'aaaaaa', 'C:\\laragon\\www\\loginUser\\public\\storage/attachment/0dc0031b/UPFILE_0dc0031b.jpg', NULL, 34602, 'open'),
	(34622, 'Shahidah', '2019-03-27 04:32:16', '2019-03-27 04:32:16', 'BLACKPINK', 'bannedAcc', 'gfdg', 'C:\\laragon\\www\\loginUser\\public\\storage/attachment/0dc0031b/UPFILE_0dc0031b.png', '{"fullName":"dfff","idNum":"dfs","phoneNum":"fds","selfie":"C:\\\\laragon\\\\www\\\\loginUser\\\\public\\\\storage\\/attachment\\/0dc0031b\\/UPFILE_0dc0031b.png"}', 34602, 'open'),
	(34623, 'Shahidah', '2019-03-27 06:29:51', '2019-03-27 06:29:51', 'aaaaaaaaaaaaaaaaaaaaaaaaddddd', 'wallet', 'lllllllllllllllllll', 'attachment/0dc0031b/UPFILE_0dc0031b.png', NULL, 34602, 'open'),
	(34624, 'Shahidah', '2019-03-27 06:32:13', '2019-03-27 06:32:13', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'disable2FA', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'attachment/0dc0031b/UPFILE_0dc0031b.png', '{"login2FA":"broken","backupCode":"no","fullName":"jjjjjjjjjjjjjjjjjjjjj","idNum":"yyuuuuuuuu","selfie":"C:\\\\laragon\\\\www\\\\loginUser\\\\public\\\\storage\\/attachment\\/0dc0031b\\/UPFILE_0dc0031b.png"}', 34602, 'open'),
	(34625, 'Ainerrrr', '2019-03-27 06:36:35', '2019-03-27 06:36:35', 'Test', 'disable2FA', 'aaaaaaaaaaaa', 'attachment/0df00346/UPFILE_0df00346.png', '{"login2FA":"loss","backupCode":"yes","fullName":"azzzzzzzzzzzzzz","idNum":"aaaaaaaaaaaaa","selfie":"C:\\\\laragon\\\\www\\\\loginUser\\\\public\\\\storage\\/attachment\\/0df00346\\/UPFILE_0df00346.png"}', 34605, 'open'),
	(34626, 'Ainerrrr', '2019-03-27 06:37:56', '2019-03-27 06:37:56', '788888888888888o', 'general', 'ooooooooooo', 'attachment/0df00346/UPFILE_0df00346.png', '{"category":"colony"}', 34605, 'open');
