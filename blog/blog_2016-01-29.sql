# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.28)
# Database: blog
# Generation Time: 2016-01-29 15:09:54 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_10_12_000000_create_users_table',1),
	('2014_10_12_100000_create_password_resets_table',1),
	('2016_01_24_122532_create_posts_table',1),
	('2016_01_27_115212_create_tags_table',2),
	('2016_01_27_115321_create_post_tag_pivot',2),
	('2016_01_28_142654_restructure_posts_table',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table post_tag_pivot
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_tag_pivot`;

CREATE TABLE `post_tag_pivot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_pivot_post_id_index` (`post_id`),
  KEY `post_tag_pivot_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_raw` text COLLATE utf8_unicode_ci NOT NULL,
  `content_html` text COLLATE utf8_unicode_ci NOT NULL,
  `page_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_draft` tinyint(1) NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_published_at_index` (`published_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `slug`, `title`, `subtitle`, `content_raw`, `content_html`, `page_image`, `meta_description`, `is_draft`, `layout`, `created_at`, `updated_at`, `published_at`)
VALUES
	(1,'in-impedit-et-harum','In impedit et harum.','','Recusandae qui debitis error sit. Voluptatem nihil necessitatibus tempora qui quisquam labore quos fugiat. Minima est omnis deserunt facilis. Ut quisquam totam vero hic.\\n\\nRepudiandae totam suscipit sint commodi pariatur. Culpa ipsam tenetur ratione facilis non. Voluptates aperiam facilis ab at sed est. Sed eum nihil adipisci et laudantium iure sunt.\\n\\nNecessitatibus ut est qui molestias consequatur eos. Natus ipsum necessitatibus atque molestias et vitae. Natus voluptatem doloribus consequuntur dolor impedit expedita. Cumque vel quo officiis asperiores adipisci sit voluptatem. Et illum aperiam quisquam adipisci et aut.\\n\\nUt consequatur aut voluptas adipisci dolores. Consectetur est accusamus sequi molestias nesciunt neque alias. Laborum optio sit sed quia voluptatem veniam.\\n\\nReiciendis vel ut qui ipsam quis ipsa. Dolorem enim ab qui aliquam hic eligendi. Et accusamus voluptatem explicabo ducimus ad. Ut maiores repellendus asperiores placeat est repudiandae.\\n\\nSoluta porro quis libero voluptate dignissimos et. Sunt maiores consequuntur nesciunt. Laboriosam eligendi sit mollitia nesciunt culpa sint qui. Quos mollitia beatae in fugiat illo sint.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2015-12-29 11:33:06'),
	(2,'cum-necessitatibus','Cum necessitatibus.','','Et adipisci dolore odit vero. Non non praesentium commodi id qui doloribus. Omnis quos nostrum quibusdam iste.\\n\\nMollitia laudantium maiores nostrum. Nam ipsum ut vel voluptatem id voluptate voluptas. Et consequatur natus error non omnis dolores aut.\\n\\nExplicabo consectetur eius eum possimus facere officia. Fugiat velit voluptate officia aut et. Nesciunt atque eum ut pariatur et sequi.\\n\\nRerum exercitationem eius non sit. Doloribus voluptas voluptatum quam possimus iste voluptas. Aspernatur ut eaque ipsum iste sint. Ipsa minus qui nihil sunt dolores nostrum.\\n\\nEligendi velit suscipit praesentium consectetur quia itaque sunt. Dolores et id dolorem nesciunt. Est dolorum ut quia qui vero hic provident.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2015-12-24 21:32:39'),
	(3,'harum-rerum-dolore-voluptas-sint-iste','Harum rerum dolore voluptas sint iste.','','Voluptatibus perspiciatis facere dolor tempora sunt earum. Non voluptatibus provident tempore est eum velit. Quos repudiandae laborum eligendi minima voluptatem. Voluptates dignissimos est qui earum.\\n\\nVel reiciendis veniam natus assumenda iure enim. Qui culpa quisquam minima harum qui. Et rerum qui aperiam ipsum voluptatem occaecati.\\n\\nTotam a enim odio porro. Ipsum et delectus temporibus cumque. Aperiam quis dolorum amet quaerat repellat temporibus consequatur vel.\\n\\nSequi ut officiis sit nisi. Dolore ea numquam asperiores porro. Omnis eveniet aliquam quis repudiandae.\\n\\nSequi corporis quis rerum ullam fugit nihil. Similique qui exercitationem molestias maxime possimus ut quo qui. Labore qui nihil omnis qui dolores pariatur. Magni corporis consequatur et repellat dolorem. Quo fuga pariatur molestiae itaque voluptas doloribus et.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-16 11:01:54'),
	(4,'doloremque-hic-quis-et-et-ipsum-architecto-voluptatem','Doloremque hic quis et et ipsum architecto voluptatem.','','Mollitia eos dolorum quidem fugiat autem. Est quasi nesciunt consequatur quos voluptatem. Voluptatum voluptas maxime corporis omnis ratione. Et porro ut quia debitis ipsa.\\n\\nDebitis ex necessitatibus repellendus soluta. Veritatis rerum molestias earum consequatur dolores iste. Itaque cum placeat qui cupiditate. Est eligendi asperiores ex doloribus atque.\\n\\nVel quaerat vitae eligendi nam ea perspiciatis. Consequuntur consequatur vero aut cumque. Sunt autem accusamus assumenda molestiae soluta.\\n\\nImpedit sequi id dolore qui ut tenetur. Officiis voluptas fuga beatae dolor. Quis impedit adipisci repudiandae ipsum non officiis voluptate. Nisi molestiae iure qui.\\n\\nLaudantium aut et voluptatibus excepturi voluptatem. Reiciendis ipsam voluptatem autem tenetur porro ut rem. Voluptatem tenetur quos quod molestiae adipisci distinctio recusandae possimus.\\n\\nAutem et id repellendus quis facere laborum quam. Nulla autem debitis eos et ullam et velit. Dolorem consequatur quis et nemo aliquid possimus rerum. Est sed excepturi quasi voluptas sed ut quis.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2015-12-30 13:09:43'),
	(5,'minima-vero-accusamus-corrupti-eligendi-voluptatem-dignissimos-dolores-et-quas-ut-ea-est','Minima vero accusamus corrupti eligendi voluptatem dignissimos dolores et quas ut ea est.','','Et vel ex incidunt consequatur. Consectetur vel dolores dicta nemo veniam optio ab.\\n\\nMolestiae earum ut dolores doloremque. In laudantium quaerat pariatur eaque qui. Quo et ut in ut ea nostrum.\\n\\nDolorum qui fugit in blanditiis cupiditate sequi. Quia inventore veritatis sapiente id quis voluptatem. Similique ratione ex molestiae. Nam ab mollitia consequatur magnam facere voluptatem ab natus. Facilis sed occaecati et doloribus velit nulla.\\n\\nVeniam beatae consequatur voluptate nulla fugiat expedita nihil. Ex sint qui ipsum at. Ex reprehenderit cum culpa magni aliquid. Ut qui quidem quo fugiat eligendi. Et blanditiis rerum dolore alias consequatur.\\n\\nEligendi delectus odio sunt impedit. Hic aliquid et provident. Commodi omnis amet at dicta tempore velit provident fugit.\\n\\nSint inventore laborum fuga possimus. Quisquam aspernatur voluptatem eos sed fugiat quisquam voluptas. Quidem expedita necessitatibus sit placeat et.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-10 16:32:39'),
	(6,'quaerat-molestiae-voluptatum-sed','Quaerat molestiae voluptatum sed.','','Perspiciatis et eos et dolor ut. Tempora consequuntur maxime distinctio corrupti nulla fuga sunt. Et minus velit ipsa. Quia illum sed est aperiam veniam reprehenderit.\\n\\nMaiores aliquam itaque assumenda. Commodi expedita maxime fugit consectetur maxime pariatur et. Aut similique eius debitis perspiciatis.\\n\\nPraesentium ipsa asperiores voluptas reprehenderit reprehenderit laboriosam laboriosam. Quaerat ipsa minus aut hic fugiat. Et quia nihil possimus non est aut nostrum.\\n\\nQuibusdam quia unde nisi dolores et expedita placeat rerum. Doloribus suscipit non qui officiis repudiandae.\\n\\nQuia labore sequi et quia labore. Nesciunt consectetur sapiente omnis voluptas velit ratione cum iste.\\n\\nTemporibus dignissimos nulla qui dolor saepe et iusto. Tempora magni quia molestiae.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-16 23:02:25'),
	(7,'hic-deleniti-delectus-repellendus-quos-ut-voluptatem','Hic deleniti delectus repellendus quos ut voluptatem.','','Rerum ex hic consequuntur qui praesentium labore. At et nihil adipisci. Aut doloremque iure id non natus.\\n\\nVoluptatibus deserunt debitis nostrum iste quia distinctio. Esse culpa enim non voluptatem magnam.\\n\\nSit fugiat est repellendus et architecto. A vitae voluptatem iure non voluptas omnis in. Excepturi qui at nihil quia sint.\\n\\nRepellat dignissimos est blanditiis ipsa. Occaecati illo nemo iusto dolores exercitationem praesentium ea. Necessitatibus nam voluptas quia quam doloribus iste. Sint aliquam quia voluptatem.\\n\\nVelit sit veniam repellat doloremque a et dolorum. Similique rerum velit modi in a pariatur unde. Sed est quo cumque. Expedita ducimus sequi aspernatur aliquam praesentium dolor. Autem voluptas in eveniet.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-12 21:20:34'),
	(8,'exercitationem-velit-omnis-iure-magni-officia-similique-quod-ea-voluptate','Exercitationem velit omnis iure magni officia similique quod ea voluptate.','','Eum voluptatem voluptas voluptatem et nam aut. Quia rem neque consequatur. Sed praesentium nam temporibus ut commodi.\\n\\nVelit est qui error autem a sapiente voluptas fugit. Esse minus aperiam est est rerum qui. Qui modi consequatur ea recusandae cum incidunt suscipit.\\n\\nSunt sint et velit non. Veritatis quibusdam vel et. Assumenda distinctio et culpa aut accusamus.\\n\\nExplicabo non facilis sit natus qui laudantium et. Odit aut quod dolore et sit. Laborum exercitationem at beatae perspiciatis fugiat.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-22 18:52:38'),
	(9,'illo-eos-modi-quis-quam-eum-similique-perspiciatis','Illo eos modi quis quam eum similique perspiciatis.','','Magnam et quidem expedita et alias. Cumque et consectetur illo quod nulla et quo. Aut nulla sit dolor. Est doloremque minima repudiandae deserunt qui perspiciatis est.\\n\\nCorrupti vel sed voluptates ut blanditiis impedit. Facere nobis commodi quas et. Aliquam debitis rerum earum et. Incidunt nostrum ut itaque consectetur explicabo et.\\n\\nSit et qui enim est natus ipsa. Enim omnis eos cumque ipsam aperiam. Et suscipit et qui quas.\\n\\nConsequatur velit quo quisquam tenetur qui voluptatem aliquid magni. Vero voluptate dolores vero dolores et aperiam iusto.\\n\\nNisi suscipit est voluptatum ad quas placeat. Assumenda velit dolor voluptatem non explicabo molestiae. Et id rerum aliquam quam omnis dignissimos molestias. Maxime placeat impedit dignissimos voluptatibus hic dolor exercitationem.\\n\\nQuaerat asperiores aut dolor debitis nesciunt. Veritatis tenetur neque amet recusandae vel saepe exercitationem. Iste possimus voluptatem voluptatem placeat. Accusamus ratione et ea culpa non et voluptas.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-21 21:26:33'),
	(10,'et-odit-nobis-et-quo-quia-qui-quidem-est-aut','Et odit nobis et quo quia qui quidem est aut.','','Corporis eum distinctio culpa sed quo aperiam quidem. Sed optio et voluptas nesciunt aut nostrum. Dolor officiis quis temporibus.\\n\\nDeleniti suscipit cum quaerat autem asperiores ea sunt. Totam ipsam sapiente tempora doloremque consequuntur veritatis.\\n\\nVoluptatibus quibusdam repudiandae eos sunt. Velit voluptas laborum et repellendus vero et. Fugit vitae quia aut cumque aut sint. Eaque sint dignissimos nam neque sequi distinctio.\\n\\nSequi tempora porro et. Excepturi quis et eos facere odit a enim. Dolorem voluptatum dolorem veniam non ipsa voluptatibus. Quasi rerum et quisquam ut at ad libero.\\n\\nEst neque laboriosam ea vero ea omnis nostrum. Quas necessitatibus dolor iure earum. Nisi officiis omnis vel enim. Molestias nulla exercitationem excepturi vel est.\\n\\nUnde corporis quibusdam est natus. Non corporis enim placeat nulla itaque. Aut ipsa aut qui soluta numquam eligendi. Nesciunt architecto nesciunt molestiae qui deserunt et.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2015-12-31 10:27:48'),
	(11,'architecto-est-at-sed-recusandae-et','Architecto est at sed recusandae et.','','Nostrum repellat fuga corrupti occaecati. Hic numquam ut voluptatibus aperiam quia ut. Occaecati velit nostrum veritatis dolor praesentium minima. Quidem odio repellat nam dolor.\\n\\nIpsa dolorem sint commodi fugiat commodi necessitatibus autem et. Vero quo consectetur aspernatur.\\n\\nDistinctio ipsam quam quis explicabo earum saepe. Voluptatem velit at in nesciunt impedit beatae aperiam. Tempora totam error porro et ut.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-03 09:45:19'),
	(12,'aliquam-et-aut-minima-sed-aut-est-dignissimos','Aliquam et aut minima sed aut est dignissimos.','','Amet eum laboriosam molestias natus dolore quisquam aliquam. Eum dolorem harum nostrum eveniet ut tempore dolorem. Numquam sed sit eligendi. Cupiditate non vel pariatur alias qui.\\n\\nReprehenderit reprehenderit praesentium voluptas qui. Iste qui aliquam vitae ex fugiat. Laboriosam inventore et aperiam laboriosam ut. Aliquid quasi quibusdam placeat nostrum id expedita enim.\\n\\nSaepe in architecto culpa laboriosam aut delectus dicta. Harum in aut repellat deleniti autem ratione quae. Esse et et qui quis voluptatum et. Temporibus facere quod porro eligendi et voluptate minus.\\n\\nRem minima ipsam hic ullam. Fuga asperiores dolores beatae enim ullam qui est. Quia officia qui est ut quos. Sed distinctio provident sapiente aspernatur consequatur.\\n\\nEa quam eum officia. Velit voluptatem omnis iure.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-05 01:59:59'),
	(13,'animi-unde-qui-voluptas-rem-quia-delectus-eum-veritatis-velit','Animi unde qui voluptas rem quia delectus eum veritatis velit.','','Perferendis modi quam doloribus nam pariatur amet id. Vel beatae voluptas dignissimos reiciendis natus. Libero dolorem repudiandae sed veritatis.\\n\\nOmnis quo maiores ratione rerum quae occaecati ut. Ipsum delectus consectetur rerum sed aliquid repellendus. Totam vitae sed molestias sapiente velit deleniti sint. Aut commodi ut mollitia suscipit sint fugit praesentium.\\n\\nAd et aut reiciendis. Fugit voluptatem fuga fugit rerum eligendi. Labore ipsa saepe quidem eveniet sint sed. Ullam sed consequatur ut fuga iure.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-15 11:31:27'),
	(14,'sit-et-fugit-quasi-velit-iusto-enim-ipsum-odio-voluptas-consequatur-sapiente','Sit et fugit quasi velit iusto enim ipsum odio voluptas consequatur sapiente.','','Qui omnis beatae ducimus sed consequatur nemo ea sed. Fugit esse ipsum nostrum libero ullam id earum. Natus mollitia voluptatem deleniti a excepturi vitae. Omnis voluptatem iste deleniti nihil adipisci. Eligendi velit voluptatem ducimus unde atque.\\n\\nSapiente ducimus at architecto nulla omnis corporis illo. Reprehenderit vel omnis molestiae beatae. Rerum et quo officiis tenetur incidunt ducimus. Sed excepturi dolores voluptate.\\n\\nQuia similique atque modi quam alias ipsa. Voluptatem occaecati odit laborum voluptatem non magni dolorem. Ipsum dicta nobis ea aut.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2015-12-26 05:50:22'),
	(15,'ut-eligendi-qui-nostrum','Ut eligendi qui nostrum.','','Totam blanditiis et sequi quis. Aliquam consectetur et cupiditate. Nam iusto reiciendis iste. Voluptate aut fugiat et quam occaecati. Eum dolor id perferendis quaerat itaque voluptas placeat.\\n\\nDucimus expedita nam unde beatae qui. Et dolore odio odit est tenetur debitis. Necessitatibus sit inventore ut sed ut quae.\\n\\nVeritatis nihil et dolores voluptas labore quibusdam. Praesentium at cupiditate molestiae et eligendi enim nesciunt ab. Ab magnam quam animi saepe eum omnis. Delectus sapiente mollitia dolorum rerum voluptas non et quos.\\n\\nIncidunt consectetur fugit odio inventore provident laudantium exercitationem. Et praesentium voluptate voluptas in quibusdam id. Est est ex quidem quidem earum illo et.\\n\\nOdit ullam tempore sapiente quis vero libero voluptas veniam. Est et eaque doloremque commodi. Hic aut fugit quia illo unde.\\n\\nQui quasi dolorem vitae quaerat earum pariatur eos est. In id voluptatem ut in ipsum.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-14 13:01:51'),
	(16,'et-fugit-qui-tempore-fugit-beatae-vel','Et fugit qui tempore fugit beatae vel.','','Voluptatem dignissimos earum assumenda voluptas non accusantium quisquam exercitationem. Veritatis nulla a deserunt corrupti voluptatem et. Recusandae rerum hic sequi doloribus odio temporibus adipisci.\\n\\nOfficia reprehenderit culpa accusamus ea asperiores. Nulla dolorem alias velit et voluptatem inventore ad. Sit vel sit rerum animi cum est numquam.\\n\\nFugit nam et commodi quia ea in. Et et possimus veritatis aut dolor. Recusandae qui eum et quo et illum.\\n\\nPossimus in sed iusto est illum voluptas. Alias consequatur non officia porro eum. Mollitia quibusdam quas voluptatem est. Architecto perspiciatis omnis ducimus in atque.\\n\\nEx fugit omnis tempora natus fugiat voluptatem ipsum enim. Aut assumenda autem sunt est in. Adipisci ut aperiam eligendi. Perspiciatis cumque et occaecati eos et omnis aliquid.\\n\\nImpedit quo eos in consectetur earum soluta eveniet quia. Suscipit aperiam doloribus voluptatibus quis consequatur. Nisi quaerat et quia aut. Vero accusantium id sunt itaque.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2016-01-18 11:03:36'),
	(17,'aut-dignissimos-omnis-earum-provident-ullam','Aut dignissimos omnis earum provident ullam.','','Quae porro reiciendis inventore sequi accusamus odio. Expedita minima quas quia nostrum consectetur. Sunt nobis eum aut laudantium deserunt minima quia. Quia sit commodi nihil et vero amet assumenda.\\n\\nEnim quo voluptatem temporibus rerum consequuntur. Error at dolores quo et. Neque delectus in iusto eius. Omnis tempora non autem et aut sit.\\n\\nRem accusamus error praesentium temporibus. Sed architecto vero dolorem aperiam similique. Similique nisi consectetur provident aut porro facilis consequatur.\\n\\nNesciunt voluptas consequatur qui tempora aut aut. Eum ducimus et ipsa est. Iste nihil autem corrupti voluptatibus ut aut autem. Est eveniet animi aliquid nam autem.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2015-12-30 23:33:20'),
	(18,'accusantium-et-ut-voluptatem','Accusantium et ut voluptatem.','','Nesciunt facilis qui perspiciatis dolore nihil error. Repellendus doloremque itaque non et et. Quisquam sapiente et temporibus sunt.\\n\\nQuisquam voluptatem dolor rerum itaque. Sequi velit optio voluptatem ut et fugiat. Laudantium quisquam similique tempora sunt. Repellendus temporibus et ab distinctio.\\n\\nConsequuntur voluptatem quam neque ad error eaque libero. Quos ut nemo corporis explicabo recusandae voluptas est. Ex saepe numquam et corrupti aliquam dolor consequatur. Architecto sint aut deserunt laudantium aliquid enim et. Omnis eaque vel in dignissimos sequi maiores quae.\\n\\nRepudiandae omnis nihil non laborum magni sint rerum. Possimus provident quis fugit omnis. Distinctio quos sint non ea unde.\\n\\nAccusamus eum tempora est quaerat ab quam et. Veniam ut commodi aut repellendus aut sequi laboriosam. Quia vel qui architecto aspernatur est voluptatibus enim. Excepturi itaque necessitatibus inventore omnis et maxime maiores odit.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2015-12-26 15:46:55'),
	(19,'beatae-enim-velit-laudantium-autem-quia-consectetur-culpa','Beatae enim velit laudantium autem quia consectetur culpa.','','Saepe quaerat necessitatibus eius consequatur enim. Omnis quas libero magnam eum est odio fugiat. Ratione qui quam aut minus. Natus id architecto vitae adipisci possimus vel. Et aut fuga accusamus ut a hic architecto eaque.\\n\\nAccusamus illo corrupti odio eaque odit. Incidunt tenetur ipsa ut ad. Quo nobis eum est voluptatibus ullam adipisci.\\n\\nRepellendus est nobis magni qui perferendis sint qui. Nobis illum eum explicabo ut perspiciatis accusamus. Dolorum adipisci corporis nobis dolorem natus earum consectetur. Repudiandae ipsa dolore repellat.\\n\\nNecessitatibus consequatur vel dolorum eaque ad molestiae. Voluptate dolores in magnam incidunt ipsam est. Hic doloribus hic qui inventore ut sunt modi.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2015-12-30 00:41:52'),
	(20,'nihil-est-quia-saepe-fugiat-qui','Nihil est quia saepe fugiat qui.','','Sed earum quia excepturi ut minus. Facere dolor impedit magnam rerum iste. Veniam pariatur sed sint neque.\\n\\nAnimi asperiores et autem enim id. Assumenda tempora rem quo ratione. Voluptatem facilis iusto sed officia ea mollitia.\\n\\nQui est sit distinctio aperiam natus enim. Quia impedit fugit perferendis maiores vel sed quidem dolorum. Assumenda aut sit dolorem possimus est voluptatem non rem. Eos eum autem aperiam quidem aut officia deleniti.\\n\\nDelectus sit deserunt ea. Qui quibusdam consequatur cum accusamus. Commodi et non quibusdam soluta omnis suscipit. Amet soluta dolore quia excepturi voluptatum tempora et qui. Molestiae quia debitis delectus excepturi excepturi et.\\n\\nOdit rem officia beatae ea ratione et. Sint explicabo adipisci nihil temporibus. Praesentium ut corrupti voluptate magni amet et. Velit ducimus occaecati est architecto nobis minima deserunt.\\n\\nNatus ea nisi repellendus perspiciatis omnis quia ea. Illo repudiandae rerum iste sunt at nobis assumenda. Tenetur qui nisi dolore exercitationem inventore eligendi. Sit dicta et laborum hic.','','','',0,'','2016-01-24 12:39:05','2016-01-24 12:39:05','2015-12-31 15:36:27');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'blog.layouts.index',
  `reverse_direction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_tag_unique` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `tag`, `title`, `subtitle`, `page_image`, `meta_description`, `layout`, `reverse_direction`, `created_at`, `updated_at`)
VALUES
	(1,'test','test','test','/','test            \r\n        ','blog.layouts.index','0','2016-01-27 14:47:36','2016-01-27 14:47:36');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'lzinev','zeacev@gmail.com','$2y$10$MtCeg4.l3s6tKod4lP1ui.8GYn6hcd4wLFOkLF.cwx/oNTPEWbQWC','wnIQbbN3I16AIY8EhSaGPGvNRplYkrNT0g3lr65xZ4z5qo32BO6SY3cMgntF','2016-01-24 14:48:00','2016-01-24 14:57:53');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
