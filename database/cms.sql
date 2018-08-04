-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2018 at 03:23 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'Javascript'),
(3, 'PHP'),
(4, 'Java'),
(5, 'Python');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 3, 'Aduy', 'Aduy@gmail.com', 'Agung GENDUT', 'approved', '2018-06-22'),
(3, 11, 'asa', 'Gelo@yahoo.com', 'Test', 'unapproved', '2018-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(3, 1, 'Hello', 'Rizky', '', '2018-06-08', 'Screenshot_1.png', '<p>Heloo</p>', 'helooheloo', 15, 'published', 0),
(11, 1, 'asaa', 'Edwin', '', '2018-06-22', 'ami_maison_fournaise_Edelin_de_la_Praudiere_Gare_d_eau_Conflans-1680x518.jpg', '<p>TRES</p>', 'Edwin ', 6, 'published', 8),
(12, 1, 'asaa', 'Edwin', '', '2018-06-23', 'ami_maison_fournaise_Edelin_de_la_Praudiere_Gare_d_eau_Conflans-1680x518.jpg', '<p>TRES</p>', 'Edwin ', 0, 'published', 0),
(13, 2, 'Hello', 'Rizky', '', '2018-07-24', 'Screenshot_1.png', '<p>Heloo</p>', 'helooheloo', 0, '', 0),
(15, 1, 'asaa', 'Edwin', '', '2018-06-23', 'ami_maison_fournaise_Edelin_de_la_Praudiere_Gare_d_eau_Conflans-1680x518.jpg', '<p>TRES</p>', 'Edwin ', 0, 'published', 0),
(16, 3, 'asaa4', 'Edwin', 'key', '2018-07-24', 'ami_maison_fournaise_Edelin_de_la_Praudiere_Gare_d_eau_Conflans-1680x518.jpg', '<p>TRES</p>', 'Edwin ', 0, '', 0),
(17, 1, 'Hello', 'Rizky', 'Test', '2018-07-13', 'Screenshot_1.png', '<p>Heloo</p>', 'helooheloo', 0, 'published', 0),
(18, 1, 'Test Agung', '', 'peter10', '2018-07-24', 'Elevation-chart.svg.png', '<p>Test</p>', '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`) VALUES
(4, 'admin', '$2y$10$MdBytZYqOf5esI070GVXiOaNDq9AgSxMxuoqzdOK2CJB8GlTfzG5u', 'admin', '', '', '', 'admin'),
(5, 'agung', '12345', '', '', 'agung@yahoo.com', '', 'subscriber'),
(6, 'key', '$1$4aEoqNGR$zDlDIvAkAVSlFppd4cTOT0', '', '', 'key@yahoo.com', '', 'subscriber'),
(7, 'Agung', '$2y$12$sLWYoR8.Ov5OR2h.P540YeTod.FNGmdfJGNUCRWb7ZatvPQttaYy6', '', '', 'agung@test.com', '', 'subscriber'),
(24, 'admin1', '$2y$12$VKg2FgIw6x3U2ruSBoT/u.68A.3JI8KkbhvkGGi6xdTi55b/VAwjW', '', '', 'admin1@gmail.com', '', 'subscriber'),
(25, 'admin2', '$2y$12$9FcMx3TJMbJjaCAzh.FO1uIwHE/eMJmJ7j6nXw.pmN2lkYREmcA5e', '', '', 'admin2@gmail.com', '', 'subscriber'),
(26, 'admin3', '$2y$12$2era96SA7/zC7SEq1B5DtOy9KDnYr2j5rFW5wDYJIQIbMBxhntp1m', '', '', 'admin3@gmail.com', '', 'subscriber'),
(27, 'admin4', '$2y$12$i/NMud1kgodzp2G2TCmw2OycQpnWalYfsFZasihIK0xfQc9P/tGVC', '', '', 'admin4@gmail.com', '', 'subscriber'),
(28, 'admin5', '$2y$12$G3ShYg2xdZbzU8oJjn0VhOK/UINdXBzC99PH5cvDmGzfZVu5qp06W', '', '', 'admin5@gmail.com', '', 'subscriber'),
(29, 'admin6', '$2y$12$.D7hIOj1HVwZKqPx12SXHOQE1NRKbH3dz/3/eRxKMVi6KG5rOADqS', '', '', 'admin6@yahoo.co', '', 'subscriber'),
(30, 'admin23', '$2y$12$gaffee51VHDjUa9XBRHZyuOlp5p1lVv8x3OKOA18vYzGhGd1v9Fcu', '', '', 'admin32@gmail.com', '', 'subscriber');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(6, 'dbgb0nhmnli7navvuaeoo42ofr', 1529751843),
(7, 'kbfbhgoalmr3ai83nlg3g9u49k', 1529759846),
(8, '7d21r68pkcr50emhteqcbljucb', 1529945466),
(9, 'vhngkav9ci69o9d9a3dfnlm2dt', 1530494204),
(10, 'ek7e3onq0gr5sh7e9upc0qmqlh', 1530893187),
(11, 'tnsctc8jqq2erb2shb8rl7gesf', 1531468485),
(12, 'uhu5e70nhjskg2ohm0ms9n758r', 1531533400),
(13, 'f87gkh3gkk7fosg6he53rttnor', 1532143285),
(14, 'nq7b8p7hdrfng8lp0ptu8vmtbe', 1532264438),
(15, '24jlu59siq3lt34hdctoqu8j9v', 1532264443),
(16, 'nrm344oh473q4q73jnhpr3q9oj', 1532264439),
(17, 'g69m4dlgh0h32fg5h0h7d80k4p', 1532264622),
(18, 'rhtl8eo27t2q14bfnp5u78r7k0', 1532264623),
(19, 'hc0srh2bftfbssc9dhi54e7kmq', 1532264623),
(20, 'tml0o65qve44j8etp0p179u5gs', 1532264624),
(21, 'meptsbh229tch6oh82im6mpn9e', 1532264624),
(22, 'ebavs7vl7aksj2ligs1tmnk4mo', 1532264625),
(23, 'tmcs4ma5fi3ljag5liekrbei11', 1532264625),
(24, 'cj3t9988tpi5bd41orbf160fb4', 1532264626),
(25, 'ivgho7k8nktt7qvud0ldaenisc', 1532264626),
(26, '6f8gcu29dd92c1pct1lu7mvqnm', 1532264627),
(27, '8t4b1o8bcf8j043f6qgargkugf', 1532264627),
(28, 'f28qab070tt0342h5qohb80i71', 1532264628),
(29, 'bl3tijlmde168gufktddqarua4', 1532264628),
(30, 'ntdfep1iapipvortb0isc3lvp8', 1532264629),
(31, '5inqc08joq8fgs6v17ju0i4uhq', 1532264629),
(32, '1uge3u7gs319iub8scee8gh7gr', 1532264630),
(33, 'f675br7qms0t9l3n60l0sq1jrh', 1532264630),
(34, 'gibdqdt4e3r7dmvjo66e3mhopu', 1532264631),
(35, 'hurcb0kger9e8fi4ubrhkntfqc', 1532264631),
(36, 's3qphnnfam0mcmn2rnb9qn9e64', 1532264632),
(37, '93hug6dk5anhdbrjo1678v9up5', 1532264632),
(38, 'off7fk3bn2n0raqv0t9j6eg6f8', 1532264633),
(39, 'ae84l8l6gs9e9tgi26e1ta190k', 1532264633),
(40, 'pkp8qlk79eseq9htusv4kpsfen', 1532264634),
(41, '0qgn5e4fr9bvf2ohfhrucda76a', 1532264634),
(42, '70v32omcrg3t4joq8d04fuhn56', 1532264635),
(43, 'bnnr4mauf06egu6hoe04856hsm', 1532264635),
(44, '59j76q289n5d5sm4eslvstqse3', 1532264636),
(45, 'df5uvu6h8jdpeqvc0lrpau91r5', 1532264636),
(46, 'j393g64rapapu4hk0kb4ntjhnv', 1532264637),
(47, 'e0314cm7odh6513rgkibuhis3c', 1532264637),
(48, '05v1hdmalka4pcvhdo24mg2adg', 1532264638),
(49, 'o17h6j0q677625uriqijdhs1jn', 1532264638),
(50, 'v8johqglujetr2ovpou49n9q0h', 1532264639),
(51, '9uiveu522ohm27drq3nm3dvdam', 1532264639),
(52, '2n9pddrt3io654ge4kmkjrs9lf', 1532264640),
(53, '4mt59je22ji5muub2miktnjfs1', 1532264640),
(54, 'bdbi1rhi6dqmhfkb4lc5f50dki', 1532264641),
(55, '8g6l1po3pbsbqcburml9bpmtr3', 1532264641),
(56, 'eicohg9qngtsq5jfhhur0fffn9', 1532264642),
(57, '1u4229jatafcop8dkkeacutj1d', 1532264642),
(58, 'q4draiu48msbg8o2e0e8qo6664', 1532264643),
(59, '1mll5tm3n1knm9hjc5essu88gk', 1532264643),
(60, 'tpj963fude6v8qdr48t814t752', 1532264644),
(61, 'cpah0s2sf6mfr62q5ng0o5t225', 1532264644),
(62, 's3krosm9bqe33vglo8sn7d404e', 1532264645),
(63, '4scs62igu6uof3q7gq7lgvlnbg', 1532264645),
(64, '9jalq9ca8lv7ok3m6rgrrrakc8', 1532264646),
(65, 'tt8k6iss2q5p7a2hvmtb2c1jk9', 1532264646),
(66, 'ro2g86l5n46o2kpp2dmekrgdgf', 1532264647),
(67, '92rfntga3rcdgum172trf6ltbj', 1532264647),
(68, '3p2sqnfnd3n18eaic9n69us89n', 1532264648),
(69, 'a8lc374foakk4s6faphhavgacm', 1532264648),
(70, 'hs7vik5e4r7k41v03pbjacf7dm', 1532264649),
(71, '4juhgje54ktmrltu8gbshkvcab', 1532264649),
(72, 'c3m7adguvgg96kn1mtjlosht4a', 1532264650),
(73, '7f0c9prrsegaal6sok4drt9oab', 1532264650),
(74, 's79s466o01vhrsf6focivml9dg', 1532264651),
(75, 'qnqomcek5rus44tdk4vnaibk16', 1532264651),
(76, 'nosqp2il6jve9bp7up6ndvq1pd', 1532264652),
(77, '8ul0c4134gqq83nt13c6m5k4d5', 1532264652),
(78, 'enljncaicm09c6bsudjetr4cf6', 1532264653),
(79, 'dloj50foj3src3a4ds4p5s5evs', 1532264653),
(80, '9om2h6n6vboq9flf2ldhlm1mtp', 1532264654),
(81, 'g5eu055054g068ai4bh71p3n6l', 1532264654),
(82, 'n2obfdjr1idc1qga19gp1ot2m2', 1532264655),
(83, 'tluc1t4pjjn7oor73074gek71d', 1532264655),
(84, 'f60dspdocb7jb967gahpujbd42', 1532264656),
(85, 'vmk9i0sdnm0ukmksm720jthgb4', 1532264656),
(86, 'qa7eubt22nc209oh2l0alrufjt', 1532264656),
(87, '48m22ehh1adf7blmqb3s5i11i6', 1532264657),
(88, '4eq59o4fr6et39dggch3jjpe6g', 1532264657),
(89, 'jdu60154ukv93p1gjbbt1evcc7', 1532264657),
(90, 'bf8fnsth1qrit4dmslkcif520o', 1532264658),
(91, 'v4jgb8uhm1hngqpfnine1mdadt', 1532264658),
(92, '35s65b5fa91stmfa3be4t4n1fk', 1532264658),
(93, 'f82nb3bv87ocsbnu9lpqvhld0l', 1532264659),
(94, '33vu547mdr29ltdr1l0la9pr2a', 1532264659),
(95, 't1nv89908jstq5bmnb8g6a7q94', 1532264660),
(96, 'bjm9cpvg9q2rh0s7sm6uli6fna', 1532264660),
(97, 'r0n345vk8b7v5bmf7mj86f7k9b', 1532264660),
(98, 'ep5d842am7g1pufq6p56ndv72v', 1532264660),
(99, 'l8c0ja3boi4s2kofcv0ekjqf7p', 1532264661),
(100, 'jt26p72a8i103102iu3u4lo154', 1532264661),
(101, 'it5hp3q743pq0tbpq432fveq37', 1532264661),
(102, 'v0a129vqq52npiv8elmmqgnou7', 1532264662),
(103, 'i91mamqufg4rqjgdr3h36f7es5', 1532264662),
(104, 'upr8vv685cv6kqn6qldqo39s8s', 1532264662),
(105, '42rvk2iis6u6dbn0hfaq3vrv0m', 1532264663),
(106, 'ngqrkvl8b9vk7q3i47cmu8m8o1', 1532264663),
(107, 'mk1hg8bk2vlgmpcl4m6j6bofg0', 1532264663),
(108, '78chuvs4mmv4k0rcgrhqnjgk8t', 1532264664),
(109, 'e07t1t2ro2agerinqm01avg7kb', 1532264664),
(110, 'uu35maggbd74tb074h8sj6c52a', 1532264664),
(111, '0u5ifr40nb6090j2sv14gajihg', 1532264665),
(112, '6qfa2vqka64fqthtv67op5aafo', 1532264665),
(113, 'kk6hmdsmtrnuhqk7evnhe2bfqv', 1532264665),
(114, 'i8girqi323qv6biuchqf67eglq', 1532264666),
(115, 'uad5n1n7rlg8bk54oi0qpdlqk7', 1532264667),
(116, 'h16b9t6v51j2anja2dlk8tmsj4', 1532264668),
(117, 'dgi2cdji93se593od72d291ist', 1532264669),
(118, 'rlu70npvcr2uav50ec1h31a0b2', 1532264670),
(119, 'f8melnvu1i036j0948v5naq794', 1532264671),
(120, 't1dopb4skigl2bq4p95v1iq4tk', 1532264672),
(121, 'p0p6iv9bli8olv9ohg7psmfs0n', 1532264673),
(122, 'bue08vdh8u2imfc280shak4j80', 1532264674),
(123, 'srssq7vrljqnljncsp1mvshoim', 1532264675),
(124, '0ah57lr07asf9v0i7hbjs8h3hl', 1532264676),
(125, 'nksjunulpjl2auh1ot905drf57', 1532264677),
(126, 'e2sc81nf7ho5ba4s9o9pjucda2', 1532264678),
(127, '5e8s8h0oli8g30bhm79n20hh2e', 1532264679),
(128, '2auh8cpt1rivk2jir06rk7svan', 1532264680),
(129, '3061d6ar6dn5r4knj4pudc2rs3', 1532264681),
(130, 'oug7tk3do783dm8kgoos42ao6o', 1532264682),
(131, 'q45almik256dunb7m0k34pso2j', 1532264683),
(132, 'dvpjrdc19cci26e5p3k2vjaajd', 1532264684),
(133, 'l9nbb9ci8a450ovt1b0eokrimb', 1532264685),
(134, '10j03gpsl3v7m5a3d407h0jerf', 1532264686),
(135, '3hisschfnf1ct6pipk6ho2akk0', 1532264687),
(136, 't1tjospe2f2h08qqe99onh0pdq', 1532264688),
(137, 'kch6h5442tc95gb6o4qv1is9j0', 1532264689),
(138, 'cd0hurlp7c4t8rm9a4e3o56fmh', 1532264690),
(139, 'tkp7n1orkiao8eoustdlhm2jlh', 1532264691),
(140, 'snlc66rkf5d8gefmltre6t6pp8', 1532264692),
(141, '4nuht1uvf0o3kkcnugvdh4hri8', 1532264693),
(142, 'enhq9pqmtdejghah4na1l5hkg9', 1532264694),
(143, 'bc1rtbd5p3grh5c8cp7oavhufc', 1532264695),
(144, '8icdkkh8pd42521rdr4k51s29h', 1532264696),
(145, 'ai00rhqk80bn0385blsa26ff3l', 1532264697),
(146, 'gc3ijkh30r00huk9cc4rpuap4b', 1532264698),
(147, 'ocmk9j1ajbg8kcnb0p866msjli', 1532264699),
(148, '6vrumu5i119h2pgpffjopo3k0r', 1532264700),
(149, 't1tpgjup83u04h1n46jsbbsrck', 1532264701),
(150, 'jnk6v2vog5otn8si9a6k4o26gi', 1532264702),
(151, '9hs4jjdk80i9qecpafianph552', 1532264703),
(152, '6vt4uussrha8v9f36pten0dbkl', 1532264704),
(153, 'despq7s8l843n6u7makhugur2o', 1532264705),
(154, 'dlqr4aip04pbao7ftdogb4ueug', 1532264706),
(155, 'epv1g2f3hh6qfg8iakpnonnaap', 1532264707),
(156, 'ldqklfimpd5g65a4ghc5246io9', 1532264708),
(157, '25m8sd5ks13eqm5ejvplocne4f', 1532264709),
(158, 'jbe04s1gsqso805t79e9c7791t', 1532264710),
(159, 'moqts13e5iven3lic3psksogki', 1532264711),
(160, 'hv1t0jn2au73oeag0a5ekj8gqc', 1532264712),
(161, 'u9ul2qc00cig78r5cep1b9pprq', 1532264713),
(162, 'ders3bd0k4q59qh03klvl4lr5m', 1532264714),
(163, '9mmt1odpvgrfjkgeh2je425v2o', 1532264715),
(164, 'l12tdepdoptp5vohbiqkm8u3pk', 1532264716),
(165, 'cnng2qaf1ug5u36bimabufnerb', 1532264717),
(166, 'sloud8j2nfj7l1plfb4jpe9btm', 1532264718),
(167, 'brj8fr66ugnc0aq3akpk6qb3gh', 1532264719),
(168, 'o290lv0mg70fedba31i8au0fdb', 1532264720),
(169, 'p5id2focm9cest46evrq8tv94o', 1532264721),
(170, 'sbgulc909qus1agkp2h781s263', 1532264722),
(171, '3tm31t73s60if6gt5aomj06osd', 1532264723),
(172, 'n6fahl3suao1vlv09rmiha9kft', 1532264724),
(173, 'l5jrll8g15p9ofvirnpipaeiuf', 1532264725),
(174, 'ucvcke5l79nsuv4i8aclfvdpqi', 1532264726),
(175, '60ouhf4nh2mvr2qbvha9c93i77', 1532264727),
(176, '9fcq1hmngqs0bbvb0upr08qa6u', 1532264728),
(177, 'omabs9msjp2rvqsq8bkb62b12g', 1532264729),
(178, 'jgf1lrch9pulv4v6vfmol0dh1i', 1532264730),
(179, '3qo0m7oiv3qhn7podtbg86td9c', 1532264731),
(180, 'f64om6i1non9eqf8g7rps59cdp', 1532264732),
(181, 'nacq7f65aujn2i7s6d2ii9pasi', 1532264733),
(182, 'pb1um8e3ntcbf8uu6nfsnrbueo', 1532264734),
(183, 'qn9tq53f1bhgnn76m3icm3qhrh', 1532264735),
(184, 'i05djn72t401suvsosl3p95t8j', 1532264736),
(185, 'petku1sdur6a44q22e52cnlvl5', 1532264737),
(186, '5bbj4dbrvt7s9imtqkuauj63bo', 1532264738),
(187, 'dha66jh3rptjaebqs7ldurr5l5', 1532264739),
(188, '7i66ijulgq5o9b29653d88h3kj', 1532264740),
(189, 'p8l1dkuccd0a7aqkqmjh1ipe0s', 1532264741),
(190, 'hlm81gl39a97itot5smtk1jnvm', 1532264742),
(191, '94f6crouu4opuoqpf8c42h89ka', 1532264743),
(192, 'n51639ai6dgfibrk701t60lpg2', 1532264744),
(193, '45tgosgu0q5rfopv62gf3s0qmr', 1532264745),
(194, 'fgnrc4unaj1h4v7rtcmu0ss4ch', 1532264746),
(195, 'tlv0pb8ork1ichss4rf52anv35', 1532264747),
(196, 'of5d498obalr7bu0qj5d6rsp73', 1532264748),
(197, 'u7jgi1gmgp137dta9foam755n9', 1532264749),
(198, '0uq9v03mbhdpsqp3n70mbb0cei', 1532264750),
(199, 'lv5n45kfheetmbof6r49jejokf', 1532264751),
(200, 'ndcvqpf54dfpnh0prvubs5ugj1', 1532264752),
(201, '2r2968opd0l40iuv7dujgs9bep', 1532264753),
(202, 'b5v9btchsbbji9gl237ac7oqao', 1532264754),
(203, 'b54bilanfa3nvgg7am42rg2efm', 1532264755),
(204, 'gn1bnhqo03a0kbdt33epmvf4n9', 1532264756),
(205, 'hruqscdacgi1sl9pbh6er7g9mr', 1532264757),
(206, 'gls4deqlnagj2hutb3e9auglgs', 1532264758),
(207, 'ohdpbg56ail6lp7709ln90c3i7', 1532264759),
(208, '20o7bbp0gga3ja23utu0d3a94q', 1532264760),
(209, 'ibgq5jmdmj1q35uda86u28i188', 1532264761),
(210, 'bjfb7tdc4nj08hk6pqqebucot1', 1532264762),
(211, 'utf00vdhmqjugnpp85v1ks5aos', 1532264763),
(212, 'h2opm6rgh6t26scgbubt4fgikp', 1532264764),
(213, 'lob0rofoh5f30enp3p5o98f74u', 1532264765),
(214, '591prua6mmcjtc7s6786jigjqp', 1532264766),
(215, 'q0t8pu7spaph9aubpe3qq78ste', 1532264767),
(216, 'bg3spvr272l1rctb7i5drtnv2q', 1532264768),
(217, 'ds2gqo25i7pm7rqso76kvhuou1', 1532264769),
(218, 'ta6apa2bl973avqjkbmp5kcfv9', 1532264770),
(219, '01nu4d7ke9o8jtc2ti7n7ocru0', 1532264771),
(220, 'gsl801614i93atd3fpn57cpe36', 1532264772),
(221, 'jlrv0pukdc5kkvjp8u9qv7hn6a', 1532264773),
(222, 'b2n9de2g0dsh429na47fj8v72n', 1532264774),
(223, '0vngc9bd51bvdeu30tdsssk7i4', 1532264775),
(224, 'hb3sv52ngk97aikj25k998bo2m', 1532264776),
(225, 'enn31g90jfd8cpk8q13fnje7p4', 1532264777),
(226, 'kntln6h49spp2mb9h47bp6mte1', 1532264778),
(227, 'eh0842k34sr75vkm1roblbs231', 1532264779),
(228, 'sr87r9pejff9a7i0fincc545o8', 1532264780),
(229, '3bbs42va28m83iu0nm1206a639', 1532264781),
(230, 'og1g3skjo605go6n4uvsep8erk', 1532264782),
(231, 'r717jqvvsa1a84oem6009gn2hi', 1532264783),
(232, 'ldehf065aru365v6cjing2fpbp', 1532264784),
(233, '44b1c573iuaaijdkdeaod9l3b7', 1532276735),
(234, 'f67mmiefh2pakdd3sl7ni1dfa2', 1532401979),
(235, 'lf7jigdjggk997730nos3eeg65', 1532439123),
(236, 'dcss5huq1pei8d9eqocobsim6h', 1532996072),
(237, '42g0k6ntl6lb63ru155ic21g0g', 1533027897),
(238, '9ghf2ikefpiu0ghutfph5peo93', 1533166665),
(239, 'j5omcvrmt5h8c2b8hjtfc19k7i', 1533345786);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
