-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: fakenewstestdb
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `com`
--

DROP TABLE IF EXISTS `com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `com` (
  `id` varchar(7) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com`
--

LOCK TABLES `com` WRITE;
/*!40000 ALTER TABLE `com` DISABLE KEYS */;
INSERT INTO `com` VALUES ('com0001','handelsblatt',7.29);
/*!40000 ALTER TABLE `com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `de`
--

DROP TABLE IF EXISTS `de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `de` (
  `id` varchar(6) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table with Top domain .de';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `de`
--

LOCK TABLES `de` WRITE;
/*!40000 ALTER TABLE `de` DISABLE KEYS */;
INSERT INTO `de` VALUES ('de0001','rki',10),('de0002','bundesgesundheitsministerium',10),('de0003','berlin',10),('de0004','tagesschau',8),('de0005','zdf',8),('de0006','zeit',8),('de0007','spiegel',8),('de0008','bild',5),('de0009','titanic-magazin',0),('de0010','der-postillon',0),('de0011','welt',8),('de0012','tagesspiegel',8),('de0013','faz',8),('de0014','sueddeutsche',8),('de0015','stern',7),('de0016','taz',7),('de0017','ftd',7),('de0018','augsburger-allgemeine',7),('de0019','ksta',7),('de0020','focus',6),('de0021','abendblatt',6),('de0022','derwesten.de',6),('de0023','fr-online',6);
/*!40000 ALTER TABLE `de` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eu`
--

DROP TABLE IF EXISTS `eu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eu` (
  `id` varchar(6) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eu`
--

LOCK TABLES `eu` WRITE;
/*!40000 ALTER TABLE `eu` DISABLE KEYS */;
INSERT INTO `eu` VALUES ('eu0001','europa',10);
/*!40000 ALTER TABLE `eu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `int`
--

DROP TABLE IF EXISTS `int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `int` (
  `id` varchar(7) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `int`
--

LOCK TABLES `int` WRITE;
/*!40000 ALTER TABLE `int` DISABLE KEYS */;
INSERT INTO `int` VALUES ('int0001','who',10);
/*!40000 ALTER TABLE `int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `net`
--

DROP TABLE IF EXISTS `net`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `net` (
  `id` varchar(7) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `net`
--

LOCK TABLES `net` WRITE;
/*!40000 ALTER TABLE `net` DISABLE KEYS */;
INSERT INTO `net` VALUES ('net0001','faz',7.76);
/*!40000 ALTER TABLE `net` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nrw`
--

DROP TABLE IF EXISTS `nrw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nrw` (
  `id` varchar(7) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nrw`
--

LOCK TABLES `nrw` WRITE;
/*!40000 ALTER TABLE `nrw` DISABLE KEYS */;
INSERT INTO `nrw` VALUES ('nrw0001','land',10);
/*!40000 ALTER TABLE `nrw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offizstellen`
--

DROP TABLE IF EXISTS `offizstellen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offizstellen` (
  `Gesundheitsbeauftragter` text,
  `Coronainfowebseite` text,
  `Vorsitz` text,
  `id` int NOT NULL,
  `Stelle` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offizstellen`
--

LOCK TABLES `offizstellen` WRITE;
/*!40000 ALTER TABLE `offizstellen` DISABLE KEYS */;
INSERT INTO `offizstellen` VALUES ('Manfred Lucha','https://sozialministerium.baden-wuerttemberg.de/de/gesundheit-pflege/gesundheitsschutz/infektionsschutz-hygiene/informationen-zu-coronavirus/','Winfried Kretschmann',1,'Baden-Württemberg'),('Melanie Huml','https://www.stmas.bayern.de/coronavirus-info/','Markus Söder',2,'Bayern'),('Dilek Kalayci','https://www.berlin.de/corona/','Michael Müller',3,'Berlin'),('Ursula Nonnemacher','https://www.brandenburg.de/sixcms/detail.php?gsid=bb1.c.660515.de','Dietmar Woidke',4,'Brandenburg'),('Claudia Bernhard','https://www.bremen.de/corona','Andreas Bovenschulte',5,'Bremen'),('Cornelia Prüfer-Storcks','https://www.hamburg.de/coronavirus/','Peter Tschentscher',6,'Hamburg'),('Kai Klose','https://www.hessen.de/fuer-buerger/aktuelle-informationen-zu-corona-hessen','Volker Bouffier',7,'Hessen'),('Harry Glawe','https://www.regierung-mv.de/Landesregierung/sm/Service/Corona/','Manuela Schwesig',8,'Mecklenburg-Vorpommern'),('Carola Reimann','https://www.niedersachsen.de/Coronavirus','Stephan Weil',9,'Niedersachsen'),('Karl-Josef Laumann','https://www.land.nrw/corona','Armin Laschet',10,'Nordrhein-Westfalen'),('Sabine Bätzing-Lichtenthäler','https://www.rlp.de/de/buergerportale/informationen-zum-coronavirus/','Malu Dreyer',11,'Rheinland-Pfalz'),('Monika Bachmann','https://www.saarland.de/SID-770519D1-8C4BF030/corona.htm','Tobias Hans',12,'Saarland'),('Petra Köpping','https://www.coronavirus.sachsen.de/','Michael Kretschmer',13,'Sachsen'),('Petra Grimm-Benne','https://mw.sachsen-anhalt.de/media/coronavirus/wirtschaft/','Reiner Haseloff',14,'Sachsen-Anhalt'),('Heiner Garg','https://www.schleswig-holstein.de/DE/Landesregierung/VIII/_startseite/Artikel_2020/I/200129_Grippe_Coronavirus.html','Daniel Günther',15,'Schleswig-Holstein'),('Heike Werner','https://www.landesregierung-thueringen.de/corona-bulletin/','Bodo Ramelow',16,'Thüringen'),('Stella Kyriakides','https://ec.europa.eu/info/live-work-travel-eu/health/coronavirus-response_de','Ursula von der Leyen',17,'EU'),('Jens Spahn','https://www.bundesregierung.de/breg-de/themen/coronavirus/coronavirus-1725960','Angela Merkel',18,'Deutschland'),('','https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/nCoV.html','Lothar Wieler',19,'RKI'),('','https://www.who.int/emergencies/diseases/novel-coronavirus-2019#','Tedros Adhanom Ghebreyesus',20,'WHO'),('Peter Tauber','https://www.bundeswehr.de/de/aktuelles/coronavirus-bundeswehr','Annegret Kramp-Karrenbauer',21,'Bundeswehr');
/*!40000 ALTER TABLE `offizstellen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tops`
--

DROP TABLE IF EXISTS `tops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tops` (
  `topsid` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tops`
--

LOCK TABLES `tops` WRITE;
/*!40000 ALTER TABLE `tops` DISABLE KEYS */;
INSERT INTO `tops` VALUES ('aarp'),('abarth'),('abb'),('abbott'),('abbvie'),('abc'),('able'),('abogado'),('abudhabi'),('ac'),('academy'),('accenture'),('accountant'),('accountants'),('aco'),('actor'),('ad'),('adac'),('ads'),('adult'),('ae'),('aeg'),('aero'),('aetna'),('af'),('afamilycompany'),('afl'),('africa'),('ag'),('agakhan'),('agency'),('ai'),('aig'),('aigo'),('airbus'),('airforce'),('airtel'),('akdn'),('al'),('alfaromeo'),('alibaba'),('alipay'),('allfinanz'),('allstate'),('ally'),('alsace'),('alstom'),('am'),('americanexpress'),('americanfamily'),('amex'),('amfam'),('amica'),('amsterdam'),('analytics'),('android'),('anquan'),('anz'),('ao'),('aol'),('apartments'),('app'),('apple'),('aq'),('aquarelle'),('ar'),('arab'),('aramco'),('archi'),('army'),('arpa'),('art'),('arte'),('as'),('asda'),('asia'),('associates'),('at'),('athleta'),('attorney'),('au'),('auction'),('audi'),('audible'),('audio'),('auspost'),('author'),('auto'),('autos'),('avianca'),('aw'),('aws'),('ax'),('axa'),('az'),('azure'),('ba'),('baby'),('baidu'),('banamex'),('bananarepublic'),('band'),('bank'),('bar'),('barcelona'),('barclaycard'),('barclays'),('barefoot'),('bargains'),('baseball'),('basketball'),('bauhaus'),('bayern'),('bb'),('bbc'),('bbt'),('bbva'),('bcg'),('bcn'),('bd'),('be'),('beats'),('beauty'),('beer'),('bentley'),('berlin'),('best'),('bestbuy'),('bet'),('bf'),('bg'),('bh'),('bharti'),('bi'),('bible'),('bid'),('bike'),('bing'),('bingo'),('bio'),('biz'),('bj'),('black'),('blackfriday'),('blockbuster'),('blog'),('bloomberg'),('blue'),('bm'),('bms'),('bmw'),('bn'),('bnpparibas'),('bo'),('boats'),('boehringer'),('bofa'),('bom'),('bond'),('boo'),('book'),('booking'),('bosch'),('bostik'),('boston'),('bot'),('boutique'),('box'),('br'),('bradesco'),('bridgestone'),('broadway'),('broker'),('brother'),('brussels'),('bs'),('bt'),('budapest'),('bugatti'),('build'),('builders'),('business'),('buy'),('buzz'),('bv'),('bw'),('by'),('bz'),('bzh'),('ca'),('cab'),('cafe'),('cal'),('call'),('calvinklein'),('cam'),('camera'),('camp'),('cancerresearch'),('canon'),('capetown'),('capital'),('capitalone'),('car'),('caravan'),('cards'),('care'),('career'),('careers'),('cars'),('casa'),('case'),('caseih'),('cash'),('casino'),('cat'),('catering'),('catholic'),('cba'),('cbn'),('cbre'),('cbs'),('cc'),('cd'),('ceb'),('center'),('ceo'),('cern'),('cf'),('cfa'),('cfd'),('cg'),('ch'),('chanel'),('channel'),('charity'),('chase'),('chat'),('cheap'),('chintai'),('christmas'),('chrome'),('church'),('ci'),('cipriani'),('circle'),('cisco'),('citadel'),('citi'),('citic'),('city'),('cityeats'),('ck'),('cl'),('claims'),('cleaning'),('click'),('clinic'),('clinique'),('clothing'),('cloud'),('club'),('clubmed'),('cm'),('cn'),('co'),('coach'),('codes'),('coffee'),('college'),('cologne'),('com'),('comcast'),('commbank'),('community'),('company'),('compare'),('computer'),('comsec'),('condos'),('construction'),('consulting'),('contact'),('contractors'),('cooking'),('cookingchannel'),('cool'),('coop'),('corsica'),('country'),('coupon'),('coupons'),('courses'),('cpa'),('cr'),('credit'),('creditcard'),('creditunion'),('cricket'),('crown'),('crs'),('cruise'),('cruises'),('csc'),('cu'),('cuisinella'),('cv'),('cw'),('cx'),('cy'),('cymru'),('cyou'),('cz'),('dabur'),('dad'),('dance'),('data'),('date'),('dating'),('datsun'),('day'),('dclk'),('dds'),('de'),('deal'),('dealer'),('deals'),('degree'),('delivery'),('dell'),('deloitte'),('delta'),('democrat'),('dental'),('dentist'),('desi'),('design'),('dev'),('dhl'),('diamonds'),('diet'),('digital'),('direct'),('directory'),('discount'),('discover'),('dish'),('diy'),('dj'),('dk'),('dm'),('dnp'),('do'),('docs'),('doctor'),('dog'),('domains'),('dot'),('download'),('drive'),('dtv'),('dubai'),('duck'),('dunlop'),('dupont'),('durban'),('dvag'),('dvr'),('dz'),('earth'),('eat'),('ec'),('eco'),('edeka'),('edu'),('education'),('ee'),('eg'),('email'),('emerck'),('energy'),('engineer'),('engineering'),('enterprises'),('epson'),('equipment'),('er'),('ericsson'),('erni'),('es'),('esq'),('estate'),('esurance'),('et'),('etisalat'),('eu'),('eurovision'),('eus'),('events'),('exchange'),('expert'),('exposed'),('express'),('extraspace'),('fage'),('fail'),('fairwinds'),('faith'),('family'),('fan'),('fans'),('farm'),('farmers'),('fashion'),('fast'),('fedex'),('feedback'),('ferrari'),('ferrero'),('fi'),('fiat'),('fidelity'),('fido'),('film'),('final'),('finance'),('financial'),('fire'),('firestone'),('firmdale'),('fish'),('fishing'),('fit'),('fitness'),('fj'),('fk'),('flickr'),('flights'),('flir'),('florist'),('flowers'),('fly'),('fm'),('fo'),('foo'),('food'),('foodnetwork'),('football'),('ford'),('forex'),('forsale'),('forum'),('foundation'),('fox'),('fr'),('free'),('fresenius'),('frl'),('frogans'),('frontdoor'),('frontier'),('ftr'),('fujitsu'),('fujixerox'),('fun'),('fund'),('furniture'),('futbol'),('fyi'),('ga'),('gal'),('gallery'),('gallo'),('gallup'),('game'),('games'),('gap'),('garden'),('gay'),('gb'),('gbiz'),('gd'),('gdn'),('ge'),('gea'),('gent'),('genting'),('george'),('gf'),('gg'),('ggee'),('gh'),('gi'),('gift'),('gifts'),('gives'),('giving'),('gl'),('glade'),('glass'),('gle'),('global'),('globo'),('gm'),('gmail'),('gmbh'),('gmo'),('gmx'),('gn'),('godaddy'),('gold'),('goldpoint'),('golf'),('goo'),('goodyear'),('goog'),('google'),('gop'),('got'),('gov'),('gp'),('gq'),('gr'),('grainger'),('graphics'),('gratis'),('green'),('gripe'),('grocery'),('group'),('gs'),('gt'),('gu'),('guardian'),('gucci'),('guge'),('guide'),('guitars'),('guru'),('gw'),('gy'),('hair'),('hamburg'),('hangout'),('haus'),('hbo'),('hdfc'),('hdfcbank'),('health'),('healthcare'),('help'),('helsinki'),('here'),('hermes'),('hgtv'),('hiphop'),('hisamitsu'),('hitachi'),('hiv'),('hk'),('hkt'),('hm'),('hn'),('hockey'),('holdings'),('holiday'),('homedepot'),('homegoods'),('homes'),('homesense'),('honda'),('horse'),('hospital'),('host'),('hosting'),('hot'),('hoteles'),('hotels'),('hotmail'),('house'),('how'),('hr'),('hsbc'),('ht'),('hu'),('hughes'),('hyatt'),('hyundai'),('ibm'),('icbc'),('ice'),('icu'),('id'),('ie'),('ieee'),('ifm'),('ikano'),('il'),('im'),('imamat'),('imdb'),('immo'),('immobilien'),('in'),('inc'),('industries'),('infiniti'),('info'),('ing'),('ink'),('institute'),('insurance'),('insure'),('int'),('intel'),('international'),('intuit'),('investments'),('io'),('ipiranga'),('iq'),('ir'),('irish'),('is'),('ismaili'),('ist'),('istanbul'),('it'),('itau'),('itv'),('iveco'),('jaguar'),('java'),('jcb'),('jcp'),('je'),('jeep'),('jetzt'),('jewelry'),('jio'),('jll'),('jm'),('jmp'),('jnj'),('jo'),('jobs'),('joburg'),('jot'),('joy'),('jp'),('jpmorgan'),('jprs'),('juegos'),('juniper'),('kaufen'),('kddi'),('ke'),('kerryhotels'),('kerrylogistics'),('kerryproperties'),('kfh'),('kg'),('kh'),('ki'),('kia'),('kim'),('kinder'),('kindle'),('kitchen'),('kiwi'),('km'),('kn'),('koeln'),('komatsu'),('kosher'),('kp'),('kpmg'),('kpn'),('kr'),('krd'),('kred'),('kuokgroup'),('kw'),('ky'),('kyoto'),('kz'),('la'),('lacaixa'),('lamborghini'),('lamer'),('lancaster'),('lancia'),('land'),('landrover'),('lanxess'),('lasalle'),('lat'),('latino'),('latrobe'),('law'),('lawyer'),('lb'),('lc'),('lds'),('lease'),('leclerc'),('lefrak'),('legal'),('lego'),('lexus'),('lgbt'),('li'),('lidl'),('life'),('lifeinsurance'),('lifestyle'),('lighting'),('like'),('lilly'),('limited'),('limo'),('lincoln'),('linde'),('link'),('lipsy'),('live'),('living'),('lixil'),('lk'),('llc'),('llp'),('loan'),('loans'),('locker'),('locus'),('loft'),('lol'),('london'),('lotte'),('lotto'),('love'),('lpl'),('lplfinancial'),('lr'),('ls'),('lt'),('ltd'),('ltda'),('lu'),('lundbeck'),('lupin'),('luxe'),('luxury'),('lv'),('ly'),('ma'),('macys'),('madrid'),('maif'),('maison'),('makeup'),('man'),('management'),('mango'),('map'),('market'),('marketing'),('markets'),('marriott'),('marshalls'),('maserati'),('mattel'),('mba'),('mc'),('mckinsey'),('md'),('me'),('med'),('media'),('meet'),('melbourne'),('meme'),('memorial'),('men'),('menu'),('merckmsd'),('metlife'),('mg'),('mh'),('miami'),('microsoft'),('mil'),('mini'),('mint'),('mit'),('mitsubishi'),('mk'),('ml'),('mlb'),('mls'),('mm'),('mma'),('mn'),('mo'),('mobi'),('mobile'),('moda'),('moe'),('moi'),('mom'),('monash'),('money'),('monster'),('mormon'),('mortgage'),('moscow'),('moto'),('motorcycles'),('mov'),('movie'),('mp'),('mq'),('mr'),('ms'),('msd'),('mt'),('mtn'),('mtr'),('mu'),('museum'),('mutual'),('mv'),('mw'),('mx'),('my'),('mz'),('na'),('nab'),('nadex'),('nagoya'),('name'),('nationwide'),('natura'),('navy'),('nba'),('nc'),('ne'),('nec'),('net'),('netbank'),('netflix'),('network'),('neustar'),('new'),('newholland'),('news'),('next'),('nextdirect'),('nexus'),('nf'),('nfl'),('ng'),('ngo'),('nhk'),('ni'),('nico'),('nike'),('nikon'),('ninja'),('nissan'),('nissay'),('nl'),('no'),('nokia'),('northwesternmutual'),('norton'),('now'),('nowruz'),('nowtv'),('np'),('nr'),('nra'),('nrw'),('ntt'),('nu'),('nyc'),('nz'),('obi'),('observer'),('off'),('office'),('okinawa'),('olayan'),('olayangroup'),('oldnavy'),('ollo'),('om'),('omega'),('one'),('ong'),('onl'),('online'),('onyourside'),('ooo'),('open'),('oracle'),('orange'),('org'),('organic'),('origins'),('osaka'),('otsuka'),('ott'),('ovh'),('pa'),('page'),('panasonic'),('paris'),('pars'),('partners'),('parts'),('party'),('passagens'),('pay'),('pccw'),('pe'),('pet'),('pf'),('pfizer'),('pg'),('ph'),('pharmacy'),('phd'),('philips'),('phone'),('photo'),('photography'),('photos'),('physio'),('pics'),('pictet'),('pictures'),('pid'),('pin'),('ping'),('pink'),('pioneer'),('pizza'),('pk'),('pl'),('place'),('play'),('playstation'),('plumbing'),('plus'),('pm'),('pn'),('pnc'),('pohl'),('poker'),('politie'),('porn'),('post'),('pr'),('pramerica'),('praxi'),('press'),('prime'),('pro'),('prod'),('productions'),('prof'),('progressive'),('promo'),('properties'),('property'),('protection'),('pru'),('prudential'),('ps'),('pt'),('pub'),('pw'),('pwc'),('py'),('qa'),('qpon'),('quebec'),('quest'),('qvc'),('racing'),('radio'),('raid'),('re'),('read'),('realestate'),('realtor'),('realty'),('recipes'),('red'),('redstone'),('redumbrella'),('rehab'),('reise'),('reisen'),('reit'),('reliance'),('ren'),('rent'),('rentals'),('repair'),('report'),('republican'),('rest'),('restaurant'),('review'),('reviews'),('rexroth'),('rich'),('richardli'),('ricoh'),('rightathome'),('ril'),('rio'),('rip'),('rmit'),('ro'),('rocher'),('rocks'),('rodeo'),('rogers'),('room'),('rs'),('rsvp'),('ru'),('rugby'),('ruhr'),('run'),('rw'),('rwe'),('ryukyu'),('sa'),('saarland'),('safe'),('safety'),('sakura'),('sale'),('salon'),('samsclub'),('samsung'),('sandvik'),('sandvikcoromant'),('sanofi'),('sap'),('sarl'),('sas'),('save'),('saxo'),('sb'),('sbi'),('sbs'),('sc'),('sca'),('scb'),('schaeffler'),('schmidt'),('scholarships'),('school'),('schule'),('schwarz'),('science'),('scjohnson'),('scor'),('scot'),('sd'),('se'),('search'),('seat'),('secure'),('security'),('seek'),('select'),('sener'),('services'),('ses'),('seven'),('sew'),('sex'),('sexy'),('sfr'),('sg'),('sh'),('shangrila'),('sharp'),('shaw'),('shell'),('shia'),('shiksha'),('shoes'),('shop'),('shopping'),('shouji'),('show'),('showtime'),('shriram'),('si'),('silk'),('sina'),('singles'),('site'),('sj'),('sk'),('ski'),('skin'),('sky'),('skype'),('sl'),('sling'),('sm'),('smart'),('smile'),('sn'),('sncf'),('so'),('soccer'),('social'),('softbank'),('software'),('sohu'),('solar'),('solutions'),('song'),('sony'),('soy'),('space'),('sport'),('spot'),('spreadbetting'),('sr'),('srl'),('ss'),('st'),('stada'),('staples'),('star'),('statebank'),('statefarm'),('stc'),('stcgroup'),('stockholm'),('storage'),('store'),('stream'),('studio'),('study'),('style'),('su'),('sucks'),('supplies'),('supply'),('support'),('surf'),('surgery'),('suzuki'),('sv'),('swatch'),('swiftcover'),('swiss'),('sx'),('sy'),('sydney'),('symantec'),('systems'),('sz'),('tab'),('taipei'),('talk'),('taobao'),('target'),('tatamotors'),('tatar'),('tattoo'),('tax'),('taxi'),('tc'),('tci'),('td'),('tdk'),('team'),('tech'),('technology'),('tel'),('temasek'),('tennis'),('teva'),('tf'),('tg'),('th'),('thd'),('theater'),('theatre'),('tiaa'),('tickets'),('tienda'),('tiffany'),('tips'),('tires'),('tirol'),('tj'),('tjmaxx'),('tjx'),('tk'),('tkmaxx'),('tl'),('tm'),('tmall'),('tn'),('to'),('today'),('tokyo'),('tools'),('top'),('toray'),('toshiba'),('total'),('tours'),('town'),('toyota'),('toys'),('tr'),('trade'),('trading'),('training'),('travel'),('travelchannel'),('travelers'),('travelersinsurance'),('trust'),('trv'),('tt'),('tube'),('tui'),('tunes'),('tushu'),('tv'),('tvs'),('tw'),('tz'),('ua'),('ubank'),('ubs'),('ug'),('uk'),('unicom'),('university'),('uno'),('uol'),('ups'),('us'),('uy'),('uz'),('va'),('vacations'),('vana'),('vanguard'),('vc'),('ve'),('vegas'),('ventures'),('verisign'),('versicherung'),('vet'),('vg'),('vi'),('viajes'),('video'),('vig'),('viking'),('villas'),('vin'),('vip'),('virgin'),('visa'),('vision'),('viva'),('vivo'),('vlaanderen'),('vn'),('vodka'),('volkswagen'),('volvo'),('vote'),('voting'),('voto'),('voyage'),('vu'),('vuelos'),('wales'),('walmart'),('walter'),('wang'),('wanggou'),('watch'),('watches'),('weather'),('weatherchannel'),('webcam'),('weber'),('website'),('wed'),('wedding'),('weibo'),('weir'),('wf'),('whoswho'),('wien'),('wiki'),('williamhill'),('win'),('windows'),('wine'),('winners'),('wme'),('wolterskluwer'),('woodside'),('work'),('works'),('world'),('wow'),('ws'),('wtc'),('wtf'),('xbox'),('xerox'),('xfinity'),('xihuan'),('xin'),('xn--11b4c3d'),('xn--1ck2e1b'),('xn--1qqw23a'),('xn--2scrj9c'),('xn--30rr7y'),('xn--3bst00m'),('xn--3ds443g'),('xn--3e0b707e'),('xn--3hcrj9c'),('xn--3oq18vl8pn36a'),('xn--3pxu8k'),('xn--42c2d9a'),('xn--45br5cyl'),('xn--45brj9c'),('xn--45q11c'),('xn--4gbrim'),('xn--54b7fta0cc'),('xn--55qw42g'),('xn--55qx5d'),('xn--5su34j936bgsg'),('xn--5tzm5g'),('xn--6frz82g'),('xn--6qq986b3xl'),('xn--80adxhks'),('xn--80ao21a'),('xn--80aqecdr1a'),('xn--80asehdb'),('xn--80aswg'),('xn--8y0a063a'),('xn--90a3ac'),('xn--90ae'),('xn--90ais'),('xn--9dbq2a'),('xn--9et52u'),('xn--9krt00a'),('xn--b4w605ferd'),('xn--bck1b9a5dre4c'),('xn--c1avg'),('xn--c2br7g'),('xn--cck2b3b'),('xn--cg4bki'),('xn--clchc0ea0b2g2a9gcd'),('xn--czr694b'),('xn--czrs0t'),('xn--czru2d'),('xn--d1acj3b'),('xn--d1alf'),('xn--e1a4c'),('xn--eckvdtc9d'),('xn--efvy88h'),('xn--estv75g'),('xn--fct429k'),('xn--fhbei'),('xn--fiq228c5hs'),('xn--fiq64b'),('xn--fiqs8s'),('xn--fiqz9s'),('xn--fjq720a'),('xn--flw351e'),('xn--fpcrj9c3d'),('xn--fzc2c9e2c'),('xn--fzys8d69uvgm'),('xn--g2xx48c'),('xn--gckr3f0f'),('xn--gecrj9c'),('xn--gk3at1e'),('xn--h2breg3eve'),('xn--h2brj9c'),('xn--h2brj9c8c'),('xn--hxt814e'),('xn--i1b6b1a6a2e'),('xn--imr513n'),('xn--io0a7i'),('xn--j1aef'),('xn--j1amh'),('xn--j6w193g'),('xn--jlq61u9w7b'),('xn--jvr189m'),('xn--kcrx77d1x4a'),('xn--kprw13d'),('xn--kpry57d'),('xn--kpu716f'),('xn--kput3i'),('xn--l1acc'),('xn--lgbbat1ad8j'),('xn--mgb9awbf'),('xn--mgba3a3ejt'),('xn--mgba3a4f16a'),('xn--mgba7c0bbn0a'),('xn--mgbaakc7dvf'),('xn--mgbaam7a8h'),('xn--mgbab2bd'),('xn--mgbah1a3hjkrd'),('xn--mgbai9azgqp6j'),('xn--mgbayh7gpa'),('xn--mgbbh1a'),('xn--mgbbh1a71e'),('xn--mgbc0a9azcg'),('xn--mgbca7dzdo'),('xn--mgbcpq6gpa1a'),('xn--mgberp4a5d4ar'),('xn--mgbgu82a'),('xn--mgbi4ecexp'),('xn--mgbpl2fh'),('xn--mgbt3dhd'),('xn--mgbtx2b'),('xn--mgbx4cd0ab'),('xn--mix891f'),('xn--mk1bu44c'),('xn--mxtq1m'),('xn--ngbc5azd'),('xn--ngbe9e0a'),('xn--ngbrx'),('xn--node'),('xn--nqv7f'),('xn--nqv7fs00ema'),('xn--nyqy26a'),('xn--o3cw4h'),('xn--ogbpf8fl'),('xn--otu796d'),('xn--p1acf'),('xn--p1ai'),('xn--pbt977c'),('xn--pgbs0dh'),('xn--pssy2u'),('xn--q7ce6a'),('xn--q9jyb4c'),('xn--qcka1pmc'),('xn--qxa6a'),('xn--qxam'),('xn--rhqv96g'),('xn--rovu88b'),('xn--rvc1e0am3e'),('xn--s9brj9c'),('xn--ses554g'),('xn--t60b56a'),('xn--tckwe'),('xn--tiq49xqyj'),('xn--unup4y'),('xn--vermgensberater-ctb'),('xn--vermgensberatung-pwb'),('xn--vhquv'),('xn--vuq861b'),('xn--w4r85el8fhu5dnra'),('xn--w4rs40l'),('xn--wgbh1c'),('xn--wgbl6a'),('xn--xhq521b'),('xn--xkc2al3hye2a'),('xn--xkc2dl3a5ee0h'),('xn--y9a3aq'),('xn--yfro4i67o'),('xn--ygbi2ammx'),('xn--zfr164b'),('xxx'),('xyz'),('yachts'),('yahoo'),('yamaxun'),('yandex'),('ye'),('yodobashi'),('yoga'),('yokohama'),('you'),('youtube'),('yt'),('yun'),('za'),('zappos'),('zara'),('zero'),('zip'),('zm'),('zone'),('zuerich'),('zw'),('aaa');
/*!40000 ALTER TABLE `tops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 21:41:53
