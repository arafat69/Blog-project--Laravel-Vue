-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 10:03 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sports', '2022-01-02 03:21:07', '2022-01-03 00:17:30'),
(2, 'News', '2022-01-02 03:24:53', '2022-01-02 03:24:53'),
(6, 'Test', '2022-01-03 00:23:17', '2022-01-03 00:23:17'),
(8, 'Test2', '2022-01-06 21:26:03', '2022-01-06 21:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `mail`, `comment`, `date`, `created_at`, `updated_at`) VALUES
(1, 7, 'Arafat Ali', 'arafataliar69@gmail.com', 'Donec consectetuer ligula vulputate sem tristique.', '08 Jan 2022', '2022-01-07 23:33:59', '2022-01-07 23:33:59'),
(2, 7, 'Arafat Ali', 'arafatali@gmail.com', 'Donec consectetuer ligula vulputate sem tristique. Donec consectetuer ligula\nvulputate sem tristique. Donec consectetuer ligula\nvulputate sem tristique.', '08 Jan 2022', '2022-01-07 23:35:56', '2022-01-07 23:35:56'),
(3, 6, 'Afrin Sultana', 'afrin@gmail.com', 'Images come in all sizes. So do screens. Responsive images automatically adjust to fit the size of the screen.', '08 Jan 2022', '2022-01-08 00:15:38', '2022-01-08 00:15:38'),
(4, 6, 'Abcd', 'abcd@gmail.com', '???????????? ?????? ????????????????????? ???????????? ??????????????? ???????????? ????????????????????????????????? ???????????????', '08 Jan 2022', '2022-01-08 00:28:13', '2022-01-08 00:28:13'),
(5, 7, 'Arafat', 'arafatali@gmail.com', 'Amar sonar bangla ami tomai valobashi', '12 Jan 2022', '2022-01-12 04:17:05', '2022-01-12 04:17:05'),
(6, 7, 'Arafat', 'arafatali@gmail.com', 'Amar sonar bangla ami tomai valobashi', '12 Jan 2022', '2022-01-12 04:18:46', '2022-01-12 04:18:46'),
(7, 7, 'Sports', 'sport@gmail.com', 'asfghbgkfdvfkhgbfdbvfkhbgfvbdf', '12 Jan 2022', '2022-01-12 04:48:12', '2022-01-12 04:48:12'),
(8, 6, 'Abcd', 'sport@gmail.com', 'erdtfgyuhjikol', '12 Jan 2022', '2022-01-12 04:50:52', '2022-01-12 04:50:52'),
(9, 5, 'Abcd', 'sport@gmail.com', 'sdfghjkertyuio', '14 Jan 2022', '2022-01-14 00:12:37', '2022-01-14 00:12:37'),
(10, 4, 'Arafat Ali', 'arafatali@gmail.com', 'Cambodia_PM_visito-Myanmar_sparks_protests_from_coup_opponents\nCambodia_PM_visito-Myanmar_sparks_protests_from_coup_opponents', '14 Jan 2022', '2022-01-14 00:36:08', '2022-01-14 00:36:08'),
(11, 4, 'Test', 'test@gmail.com', 'A simple secondary alert???check it out!', '15 Jan 2022', '2022-01-15 01:10:36', '2022-01-15 01:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_02_072633_create_categories_table', 2),
(6, '2022_01_04_134954_create_posts_table', 3),
(7, '2022_01_08_050811_create_comments_table', 4),
(8, '2022_01_24_135231_create_sidebars_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `description`, `file`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2', 'Customizing The Default Date Format', '<p>You may customize the default serialization format by overriding the serializeDate method. This method does not affect how your dates are formatted for storage in the database:</p>', '1641527323post.jpg', 'Customizing_The_Default_Date_Format', NULL, '2022-01-06 21:48:43', '2022-01-12 08:29:04'),
(2, '2', '????????????????????????????????? ???????????? ?????????', '<p>?????????????????????????????? ???????????? ???????????????????????? ??????????????? ?????????????????? ??????????????? ???????????????????????? ?????????????????? ???????????? ??????????????? ?????? ????????? ??????????????????????????? ?????????????????????????????? ????????????????????? ?????? ???????????? ?????????????????? ????????? ??????????????? ??????????????? ?????????????????? ???????????? ???????????? ?????????????????????????????? (???????????????) ?????????????????? ????????? ???????????? ???????????? ??????????????????????????? ???????????? ?????????????????? ??? ????????????????????? ?????????????????? ??????????????? ??????????????? ??????????????????????????????????????? ????????????????????? ????????????????????? ???????????????????????????????????? ????????? ?????????????????? ?????? ?????????????????? ????????????, ?????? ????????? ????????? ?????????????????????????????????????????? ??????????????? ???????????? ?????????????????? ?????????????????? ????????? ????????? ????????? ???????????? ???????????? ????????? ??????????????????????????????????????? ??????????????? ????????????????????? ???????????? ?????? ??????, ????????? ????????????????????? ?????????????????? ?????????????????? ??????????????????</p><p>???????????????????????????????????? ????????????????????? ??????????????????????????? ??????????????? ????????????????????????????????? ??? ?????????????????????????????? ???????????????????????? ????????????????????? ????????? ??????????????? ?????????????????????????????? ????????????, ????????????????????????????????? ??????????????????????????????????????? ?????????????????? ???????????? ????????? ???????????? ?????????????????? ??????????????? ????????? ?????????????????? ????????? ???????????? ???????????? ??????????????????????????? ????????? ???????????? ????????????????????? ???????????? ????????? ????????? ????????? ???????????? ????????????, ???????????????????????????????????? ??????????????? ?????????????????????????????????????????? ????????????????????? ????????? ???????????? ????????? ???????????? ??????????????? ?????????????????? ???????????? ???????????????????????? ?????????????????????????????? ????????????????????? ??????????????????????????? ??????????????? (?????????????????????) ????????? ???????????? ?????????????????? ?????????????????? ?????? ????????????????????????????????? ??????????????? ???????????? ????????? ?????????????????? ???????????? ???????????? ??????????????? ???????????? ???????????????, ????????????????????? ???????????? ????????????????????? ????????? ???????????? ???????????? ???????????? ??? ??????????????????????????? ?????????????????????????????? ?????????????????????????????? ???????????????????????? ?????????????????? ?????????????????? ???????????? ??????????????? ???????????????????????????????????? ???????????? ???????????? ??????????????????????????? (???????????????) ??? ??????????????????????????? ???????????? ?????????????????????????????? (???????????????) ??????????????? ?????????????????? ?????????????????? ???????????? ????????????????????? ??????????????? ??????????????? ?????? ????????????????????????????????? ????????? ???????????? ?????????????????? ?????? ???????????? ??????????????????</p><p>??????????????? ??????????????????????????????????????? ????????????, ?????????????????? ??????????????????????????? ?????????????????? ???????????????????????? ?????????????????????????????? ????????????????????? ??????????????????????????? ????????????????????? (?????????????????????) ???????????? ????????????????????? ????????? ?????????????????????????????????????????? ??????????????? ??????????????????, ???????????????????????? ?????????????????? ?????????????????? ?????????????????? ????????? ?????????????????? ?????????????????? ???????????? ?????????????????????????????? ????????????????????? ???????????? ?????????????????? ????????? ????????????????????????????????? ?????? ????????????????????????</p><p>??????????????? ????????????????????????????????? ???????????? ????????????, ??????????????? ?????????????????? ?????????????????? ?????????????????? ??????????????? ???????????? ??????????????????????????? ???????????? ????????????????????????????????? ?????????????????? ??? ?????????????????? ???????????? ??? ??????????????? ????????? ????????????????????? ????????? ?????????????????? ?????? ??????????????? ???????????? ??? ????????????????????????????????? ????????????????????? ?????????????????? ????????? ?????????????????? ???????????????</p><p>??????????????? ?????? ?????????????????? ????????? ??????????????? ???????????????????????? ?????????, ????????? ???????????????????????????????????? ?????????????????? ???????????? ??????????????? ????????? ???????????? ?????????????????????????????????????????? ??????????????? ???????????????????????? ???????????? ????????? ???????????? ??????????????? ????????? ???????????? ????????????????????????????????? ??????????????????????????? ?????????????????? ???????????? ?????? ?????????????????????, ??????????????? ?????????????????? ????????????????????? ?????????????????? ????????? ???????????? ??????????????????????????? ?????????????????????????????? ???????????????????????? ??????????????????????????? ???????????? ???????????? ?????????????????? ????????????????????? ???????????? ?????? ???????????? ????????? ??????????????? ????????????????????????????????? ???????????????????????? ???????????????????????? ????????????????????? ??????????????? ?????? ???????????? ?????????????????????????????? ??????????????? ??????????????? ?????????????????? ??????????????? ????????? ?????????????????????????????? ????????? ???????????? ???????????? ???????????????, ???????????? ????????????????????? ?????????????????????????????? ?????? ??????????????????????????? ??????????????????????????? ??????????????? ?????????????????? ?????? ????????????????????? ?????????????????? ?????????????????? ??????????????? ?????????????????? ??????????????????????????? ?????????????????? ????????? ????????? ???????????? ????????? ?????? ??????????????????????????? ??????????????????????????????????????? ????????????????????? ?????????????????? ????????? ???????????????????????????????????? ?????????????????????</p><p><a href=\"https://www.ittefaq.com.bd/print-edition/second-edition/172324/%E0%A6%B6%E0%A7%87%E0%A7%9F%E0%A6%BE%E0%A6%B0%E0%A6%AC%E0%A6%BE%E0%A6%9C%E0%A6%BE%E0%A6%B0%E0%A7%87--%E0%A6%86%E0%A6%B6%E0%A6%BE%E0%A6%B0-%E0%A6%86%E0%A6%B2%E0%A7%8B?fbclid=IwAR1KpCMCUq6gDJq95_ufAqR5irq4qxxWaAMBwauKeiLfRMu56IKwTLqSmKg\">??????????????? ???????????????????????? ??? ????????????????????????</a></p>', '1641527407post.jpg', '?????????????????????????????????-????????????-?????????', NULL, '2022-01-06 21:50:07', '2022-01-12 08:28:28'),
(3, '2', '?????????????????? ??????????????? ?????? ??????????????? ?????????????????? ??????????????????????????????', '<p><strong>??????????????? ???????????????????????? ????????????????????? ????????? ?????????????????? ??????????????? ?????????????????? ??????????????? ?????????????????? ?????? ??????????????? ????????????????????? ????????????????????????????????? ??????????????? ??????????????? ???????????? ????????? ?????????????????? ???????????????????????????????????? ????????????????????? ?????? ??????????????? ??? ?????????????????? ??????????????????????????? ?????????????????? ???????????? ?????????????????? ?????????????????? ????????????????????? ?????????????????? ?????????????????? ?????????????????? ????????? ??????????????? ????????? ???????????????????????? ?????? ??????????????? ????????? ???????????????????????? ???????????????????????? ?????????????????? ??? ??????????????? ???????????? ??????????????? ??????????????? ???????????? ??????????????? ?????????????????? ????????? ??????????????? ????????????????????? ????????????????????????????????????????????? ??????????????? ?????????????????? ??????????????? ??? ???????????????????????? ??????????????????????????????-?????????????????????????????? ???????????????????????? ??????????????????????????? ??????????????? ???????????? ????????? ????????????????????? ???????????????????????????????????????????????? ??????????????????????????? ???????????? ???????????????????????? ???????????? ?????????????????????????????? ????????????????????????????????????</strong> ??????????????? ???????????? ??? ?????????????????? ?????????????????????????????? ??????????????? ????????????????????? ??????. ???????????????????????? ??????????????? ?????????????????????????????? ????????????, ??????????????? ???????????????????????? ??????????????? ????????????????????? ????????? ??????????????? ???????????????????????? ??????????????? ????????????????????? ???????????????????????? ????????????????????? ???????????????????????????????????? ?????????????????? ???????????? ???????????? ????????????????????? ??????????????? ??????????????? ??????????????? ??????????????? ?????????????????? ????????? ?????????????????? ??????????????????????????? ???????????? ???????????????????????? ???????????? ???????????? ????????????????????? ???????????? ?????????????????? ???????????????????????? ????????????????????? ???????????????????????????????????? ????????? ??????????????? ???????????? ?????????????????????????????? ????????? ????????????????????? ????????????????????? ?????????????????????????????? ???????????? ?????????????????? ????????? ????????????????????? ??????????????? ??????????????? ???????????????, ?????? ???????????????????????????????????????????????? ??????????????????????????????????????? ???????????? ???????????? ??????????????? ???????????? ?????????????????????????????? ????????????????????? ????????????????????? ???????????? ????????? ???????????? ???????????? ?????? ????????????, ?????????????????? ?????????????????? ??????????????? ???????????? ????????? ??????????????? ?????????????????????????????? ????????? ?????????????????? ?????? ????????????????????????????????? ??????????????? ??????????????? ?????????????????? ?????? ??????????????? ????????????????????? ???????????????????????????????????? ????????????????????? ??????????????????????????? ?????????????????? ?????????????????? ???????????? ???????????????????????? ????????????, ?????????????????? ???????????????????????? ???????????? ???????????????????????? ??????????????? ?????????????????????????????? ??????????????? ?????????????????? ???????????????????????? ????????? ???????????? ?????????????????? ??? ??????????????? ??????????????? ???????????? ?????????????????? ???????????????????????? ?????????????????? ???????????? ???????????? ????????? ?????????????????????????????? ????????? ????????????????????? ????????????????????????????????? ???????????? ?????? ????????? ????????? ??????????????? ????????????????????? ???????????????????????????, ????????????????????? ???????????????????????????, ????????????, ???????????? ????????????????????????, ?????????????????????????????? ????????????????????? ?????? ??????????????????????????? ???????????????????????? ???????????? ?????????????????? ??????????????? ??? ?????? ???????????????????????????, ????????????????????? ??????????????????????????????????????? ????????? ???????????? ?????? ?????????????????? ?????????????????? ?????????, ?????? ?????????????????? ???????????????????????? ??????????????? ???????????????????????? ???????????? ??????????????? ????????? ???????????? ?????????????????? ??????????????????????????? ?????????????????? ???????????? ??? ???????????????????????? ??????????????? ????????????????????????????????????????????? ??????????????????????????? ???????????? ?????????????????? ?????????????????? ???????????????????????? ?????????????????? ???????????????????????? ????????????????????? ???????????????????????????????????? ??????????????? ?????????????????????????????? ????????????????????? ??????????????? ?????????????????????????????? ??? ?????? ????????????????????? ??????????????????????????????????????? ?????? ??????????????????????????? ??????-??????????????????????????? ??????????????????????????? ????????????????????????????????? ?????????????????? ????????????????????? ????????????, ?????????????????????????????? ????????? ?????????????????? ???????????? ???????????????????????? ???????????? ?????????????????????????????????????????? ????????? ?????????????????? ????????????????????? ???????????? ???????????? ???????????? ???????????? ?????????????????????????????????????????? ????????????????????? ?????????????????????????????? ????????????????????????????????? ??? ?????????????????? ???????????????????????? ??????????????? ??????????????? ??????????????? ????????????, ?????????????????? ??????????????????????????? ???????????????????????? ????????? ??????????????? ?????????????????? ????????????????????????????????????????????? ?????? ???????????????????????? ??????????????? ???????????? ??????????????? ??????????????? ????????????????????? ????????????????????????????????? ???????????????????????? ?????? ??????????????? ????????? ???????????? ??????????????? ???????????????????????? ??????????????? ?????????????????? ??????????????? ??????????????? ?????????????????????????????????????????? ????????? ?????????????????? ?????????????????? ???????????? ??????????????????????????????????????? ?????????????????????????????? ????????????????????? ?????? ?????????????????????????????? ????????????????????????, ???????????? ?????????????????? ?????? ????????????????????????????????? ??????????????? ??????????????? ?????????????????? ?????????????????? ?????????????????? ?????????????????? ?????? ?????????????????? ?????? ????????????????????????????????? ?????????????????? ??? ???????????? ?????? ???????????? ?????????????????????????????? ?????????????????? ??????????????? ?????????????????? ?????????????????? ??? ??????????????? ????????? ???????????? ??????????????? ?????? ??????????????? ????????? ?????????????????? ??? ??????????????? ?????? ???????????? ???????????? ????????? ?????? ??????????????? ?????????????????? ??? ??????????????? ????????? ???????????? ??????????????? ?????? ???????????????????????? ??????????????? ?????????????????? ?????????????????? ????????? ???????????? ???????????????</p>', '1641527546post.jpg', '??????????????????-???????????????-?????????????????????-??????????????????-??????????????????????????????', NULL, '2022-01-06 21:52:26', '2022-01-12 08:27:30'),
(4, '2', 'Cambodia PM visit to Myanmar sparks protests from coup opponents', '<p><strong>Cambodian Prime Minister Hun Sen will start a visit to Myanmar on Friday for talks with its military rulers, triggering protests across the conflict-torn nation by coup opponents who fear his trip will provide more legitimacy to the junta.</strong></p><p>His visit will be the first by a head of government to Myanmar since the army overthrew the elected administration of Aung San Suu Kyi on Feb 1 last year, sparking months of protests and a bloody crackdown.</p><p>Cambodia is current chair of the Association of Southeast Asian Nations, which has been leading diplomatic efforts to resolve the crisis in Myanmar and which adopted a five-point \"consensus\" peace plan in April.</p><p>Some other ASEAN countries including Indonesia have expressed frustration at the junta\'s failure to implement the peace deal, which has fanned divisions in the 10-member bloc.</p><p>In Myanmar, opponents of military rule have said Hun Sen is backing the junta by making the trip.</p><p>In Depayin, about 300 km (186 miles) north of the capital Naypyidaw, protesters burned a poster of the Cambodian prime minister and chanted \"Hun Sen don\'t come to Myanmar. We don\'t want dictator Hun Sen\", photographs on social media showed.</p><p>There were also reports of protests in Mandalay and the Tanintharyi and Monywa regions.</p><p>In a speech on Wednesday, Hun Sen called for restraint from all sides in Myanmar and for the peace plan to be followed through.</p><p>\"Brothers in Myanmar, do you want your country to fall into a real civil war or want it solved?\" he said. \"The first point of the consensus is the patience, the cessation of violence. This is the goal that we want.\"</p><p>After a phone call this week with Hun Sen, Indonesian President Joko Widodo said in messages on Twitter if there was no significant progress in the peace plan only non-political representatives from Myanmar should be allowed at ASEAN meetings</p><p>Min Ko Naing, a leading activist in Myanmar, said in a social media post that Hun Sen would face massive protests over his visit, which would hurt ASEAN.</p><p>The General Strike Coordination Body, which pools more than 260 organisations opposed to the coup in Myanmar, also denounced Hun Sen\'s visit, accusing him of backing Myanmar\'s military rulers.</p><p>Hun Sen is one of the world\'s longest serving leaders and Western countries and human rights groups have long condemned him for crackdowns on opponents, civil rights groups and the media in Cambodia.</p><p>Amnesty International\'s Deputy Regional Director for Research Emerlynne Gil said Hun Sen should cancel his trip and \"lead ASEAN to strong action to address the country???s dire human rights situation\".</p><p>The Cambodian foreign ministry said Hun Sen will meet military leader Min Aung Hlaing, but the US-funded RFA (Radio Free Asia) cited a junta spokesman as saying he would not meet Suu Kyi, who is on trial and faces nearly a dozen cases that carry a combined maximum sentences of more than 100 years in prison.</p>', '1641527697post.jpg', 'Cambodia_PM_visito-Myanmar_sparks_protests_from_coup_opponents', NULL, '2022-01-06 21:54:57', '2022-01-12 08:26:40'),
(5, '2', 'India\'s COVID-19 cases set for new highs as omicron spreads', '<p><strong>India\'s daily COVID-19 cases jumped to 117,100 on Friday, a five-fold increase in a week and on course to overtake its previous infection peak as the fast-spreading omicron variant replaces Delta in cities</strong></p><p>Government officials have privately said they are working under the assumption that daily infections will surpass the record of more than 414,000 set in May, given what has happened in countries such as the United States where daily cases recently rose past 1 million.</p><p>\"We will clearly surpass our record shortly and reach a new peak by early February,\" MD Gupte, a former director of the state-run National Institute of Epidemiology and an immunisation adviser to the government, told Reuters.</p><p>\"Given the size of our population, we will report more daily cases than the US But what we have seen is that these cases are much more mild, so the need for hospitalisation and oxygen and all that is not picking up.\"</p><p>He said India\'s high rate of infection during a previous major wave in April and May, as well as vaccinations, would mean a reduction in the severity of the illness for those infected by the Omicron variant.</p>', '1641550129post.jpg', 'India\'s_COVID-19_cases_set_for_new_highs_as_omicron_spreads', NULL, '2022-01-07 04:08:49', '2022-01-12 08:23:54'),
(6, '2', 'Bangladesh win was good for the game, says NZ stalwart Taylor', '<p><strong>New Zealand\'s defeat in the opening match may have marred Ross Taylor\'s farewell Test series but the retiring stalwart believes Bangladesh\'s shock victory at Mount Maunganui was a massive boost for the game and the format.</strong></p><p>Bangladesh, currently ranked ninth, stunned world Test champions New Zealand by eight wickets on Wednesday for their first victory against New Zealand at the 16th attempt.</p><p>A smarting New Zealand will be bidding to level the series in Christchurch, which hosts the second and final Test from Sunday, and give Taylor a fitting farewell.</p><p>After a decade-and-half in international cricket, Taylor, however, took a philosophical view of their opening Test debacle.</p><p>\"If you look at it from a neutral point of view, I think it was good for world cricket,\" the 37-year-old told reporters at the Hagley Oval.</p><p>\"I think for Bangladesh to come in, a proud nation with a lot of proud history, for the game of cricket and Test cricket, I don\'t think this was a bad result.</p><p>\"Obviously, we were disappointed that we didn\'t put up a bit of a contest. We were outplayed the whole time but I think for Test cricket to survive, we need Bangladesh to be a thriving nation.\"</p><p>The victory at Mount Maunganui was among the biggest shocks in the history of Test cricket as one of the poorest performers in the longest format of the game snapped New Zealand\'s 17-match unbeaten streak on home soil.</p><p>Taylor hoped the side under Mominul Haque would only get better with time.</p>', '1641550245post.jpg', 'Bangladesh-win-was-good-for-the-game', NULL, '2022-01-07 04:10:45', '2022-01-12 04:50:09'),
(7, '2', '???????????? ?????? ????????????????????? ???????????? ??????????????? ???????????? ????????????????????????????????? ??????????????? ???????????????????????????', '<p><strong>???????????? ???????????????-?????? ?????? ???????????? ???????????????, ???????????? ????????? ????????? ??????????????? ????????????????????? ?????????????????? ???????????? ??????????????? ????????????????????? ??????????????????????????? ???????????? ??????????????? ????????????????????? ????????????????????????????????? ????????????????????????????????? ????????????????????? ???????????????????????????</strong></p><p>????????????????????? ??????????????????????????????????????? ????????????????????? ????????? ??????????????? ??????????????? ???????????????????????? ????????????????????? ???????????????????????? ?????? ????????????????????????????????? ???????????? ??? ??????????????? ????????? ????????? ?????? ?????????????????????????????? ???????????????????????? ?????????????????? ?????????????????? ????????????????????????</p><p>??????????????????????????? ????????????????????????????????? ?????? ??????????????? ???????????????????????? ???????????????, ???????????? ????????????????????? ?????????????????? ??????????????????????????? ???????????? ?????? ???????????????????????? ????????? ????????? ??????????????? ????????? ???????????? ????????? ???????????? ???????????? ???????????? ?????? ????????????????????? ???????????? ????????????????????? ???????????????????????? ???????????? ?????? ????????????????????? ?????? ??????????????? ???????????? ?????? ??????, ????????? ???????????? ???????????? ??????????????? ?????????, ?????????????????? ???????????? ???????????????, ??????????????? ???????????? ?????????????????? ?????????, ????????? ???????????? ????????? ?????? ??????????????? ????????????????????????????????????????????????????????? ?????????????????? ?????? ??????????????????????????? ????????????????????????????????? ?????????????????? ??????????????? ???????????????,??? ?????????????????? ???????????????</p><p>????????????????????????????????? ?????????????????????????????? ???????????????????????? ?????????????????????????????? ????????? ?????? ??????????????? ????????? ???????????? ??????????????? ???????????? ?????????????????? ???????????????; ?????? ???????????????????????????????????? ?????? ??????????????? ?????? ??????????????? ?????? ???????????? ????????????????????? ??????????????????????????? ????????????????????????????????? ?????????????????? ????????????????????? ?????? ?????? ?????????????????????????????? ?????? ???????????? ?????????????????? ?????????????????????</p><p>?????? ?????????????????? ????????????????????????????????? ????????????????????? ?????????????????????????????? ?????????????????? ??????????????? ???????????? ?????????????????? ?????? ????????? ?????? ??????????????? ?????????????????? ???????????? ????????????????????? ?????????????????? ????????????????????? ?????? ??????????????? ????????? ???????????????????????????</p><p>???????????????????????????????????? ???????????????????????? ???????????????????????? ??????????????????????????? ??? ???????????? ??????????????? ????????? ????????????,??? ?????????????????? ???????????????????????????</p><p>?????? ????????? ????????????????????? ????????????????????????????????? ??? ???????????? ?????? ????????? ??????????????? ??????????????? ??????????????? ?????????????????? ????????? ?????????????????????; ??? ?????????????????? ?????? ???????????? ??????????????????????????? ?????????????????? ?????? ??????????????????</p><p>?????????????????? ???????????? ?????????????????????, ????????????????????????????????? ????????????????????? ???????????????????????? ?????????????????? ???????????? ?????? ????????????????????? ???????????? ??????????????? ??????????????????????????? ???????????? ??????????????? ????????? ????????? ?????????????????????</p><p>????????????????????????????????? ????????? ???????????? ???????????? ??????????????????????????? ?????????????????? ???????????? ?????? ????????? ???????????? ???????????? ???????????? ??????????????????????????? ??????????????????????????? ???????????? ?????????????????? ?????? ??????????????? ????????? ???????????????????????? ????????????????????? ???????????? ?????????????????? ?????????????????? ??????????????? ??????????????????????????????</p><p>????????? ????????? ?????????????????????????????? ????????????????????? ???????????????-?????? ?????? ??????????????????????????? ???????????? ????????????????????????????????? ??????????????? ?????? ????????? ????????????????????????, ????????? ?????????????????? ?????????????????? ????????? ????????? ??????????????? ?????????????????????????????????</p><p>??????????????????????????? ??????????????????????????? ?????????????????? ??????????????????????????? ???????????????????????????????????? ????????? ???????????? ????????? ?????????????????? ???????????? ???????????? ?????????????????? ??????????????????</p><p>?????????????????????????????? ????????? ????????????????????? ???????????? ????????? ???????????? ????????? ??? ????????????????????????????????? ???????????????????????? ?????????????????? ???????????????????????? ???????????????????????? ?????? ?????? ?????????????????? ???????????????, ?????? ?????????????????? ????????????????????? ???????????? ????????????????????????????????? ???????????? ??????????????? ??????????????????</p>', '1641550499post.jpg', '????????????_??????_?????????????????????_????????????_???????????????_????????????_?????????????????????????????????_???????????????_???????????????????????????', NULL, '2022-01-07 04:14:59', '2022-01-12 01:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `sidebars`
--

CREATE TABLE `sidebars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebars`
--

INSERT INTO `sidebars` (`id`, `name`, `skill`, `description`, `photo`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Arafat Ali', 'Web Developer', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt, dolore.123</p>', '1643219115sidebar.jpg', NULL, NULL, NULL, '2022-01-26 11:57:17'),
(2, NULL, NULL, NULL, NULL, 'fab fa-facebook-f', '#', '2022-01-25 10:23:11', '2022-01-25 10:23:11'),
(3, NULL, NULL, NULL, NULL, 'fab fa-linkedin-in', '#', '2022-01-25 10:41:22', '2022-01-25 10:41:22'),
(4, NULL, NULL, NULL, NULL, 'fab fa-facebook-f', '#', '2022-01-25 10:46:15', '2022-01-25 10:46:15'),
(5, NULL, NULL, NULL, NULL, 'fab fa-linkedin', '12', '2022-01-25 10:47:03', '2022-01-26 10:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arafat', 'arafataliar69@gmail.com', NULL, '$2y$10$VqcDZf8dDy/DTU4cGMMT6.krqU126hDeRgm1FOBO1ijMmk01L84/K', 'tATVwOpFC5R4RzLWbg23QcP1yIWWKXfE9RdEjvKxoDu5x9IT3uvzwHEVhU7K', '2021-12-31 00:09:49', '2021-12-31 00:09:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidebars`
--
ALTER TABLE `sidebars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sidebars`
--
ALTER TABLE `sidebars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
