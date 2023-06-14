-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2023 pada 13.15
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elibrary`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(23, 'Boy Candra'),
(25, 'Fiersa Besari'),
(24, 'Pidi Baiq'),
(26, 'Raditya Dika'),
(27, 'Tere Liye');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `author_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `pdf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `name`, `author_id`, `cat_id`, `year`, `description`, `image`, `pdf`) VALUES
(38, 'Catatan Pendek Untuk Cinta yang Panjang', 23, 11, '2014', 'Novel ini merupakan novel non fiksi dari kisah nyata perjalanan cinta boy Candra.\r\n\r\nDi bab pertama novel ini berisi tentang perasaan boy kepada perempuan tapi boy takut perasaan cintanya ditolak. Dan benar saja, setelah boy memberanikan diri untuk menyatakan cintanya kepada perempuan itu.\r\nJawaban dari perempuan itu adalah perempuan itu sudah mempunyai kekasih. Boy pun menyesal karena dia merasa terlambat menyatakan rasanya kepada perempuan tersebut.\r\nDiam-diam boy memperhatikan perempuan pujaanya itu selama berbulan-bulan, yang sebenarnya perempuan itu sudah mempunyai kekasih.\r\nBoy seperti sudah sangat terpikat dengan perempuan itu. Sampai-sampai boy merasa jika dirinya hanya mencintai perempuan itu saja adalah hal yang sangat istimewa.\r\nSampai akhirnya boy pun tahu jika perempuan itu sudah putus dengan kekasihnya. Dan boy memberanikan diri untuk memulai chat dengannya.\r\nSelang beberapa minggu dia dan perempuan itu semakin dekat, hal itu tidak pernah dipikirkan oleh boy. Dan pada akhirnya boy menjadi pacarnya.\r\nSebelumnya gue tidak pernah berpikir bisa menjadi pacarnya secepat itu, Ratna sebelumnya mereka berdua hanya berteman.\r\nLalu mereka sepakat untuk menyebut hubungan mereka sebagai sepasang kekasih.\r\nBeberapa bulan mereka pacaran mulai muncul masalah-masalah dalam hubungan mereka hanya karena tidak sependapat satu sama lain.\r\nSebenarnya mereka hanya perlu memahami pola pikir satu sama lain. Dan akhirnya perdebatan pasang kekasih itu sudah berakhir.\r\nMereka tidak perlu saling menyalahkan satu sama lain dan tidak perlu mencari siapa yang salah karena sejatinya di dalam hubungan asmara perbedaan merupakan hal yang wajar.\r\nLama kelamaan bahwa mulai berpikir bukan hanya dengan perempuan itu saja dia dapat merasakan bahagia dia mulai bosan dengan perempuan tersebut.\r\nBoy memutuskan untuk mengakhiri hubungannya dengan wanita itu. Boy berusaha untuk melupakan perempuan itu.\r\nSesekali boy teringat tentang perjuangannya untuk mendapatkan perempuan itu dulu. Sulitnya mendapatkan perempuan itu dulu hanya berakhir dan meninggalkan patah hati yang sakitnya tersimpan di hati menurut boy.\r\nTetapi boy akhirnya menyadari semuanya harus kembali indah, boy Candra akhirnya kembali menemukan cinta yang sejati.\r\nCinta yang dapat membuat hidupnya kembali indah dan bersemi. Cinta yang dapat menyembuhkan luka-luka di masa lalunya, walaupun itu membutuhkan waktu.\r\nCinta sering kali datang dan pergi walau kamu tidak menginginkannya, cinta sejati akan memberimu rasa nyaman dan aman saat mencintai.\r\nAkhirnya kamu harus mensyukuri apapun yang telah kamu miliki hari ini.\r\nWalaupun yang kamu tunggu tidak pernah datang, walau yang kamu perjuangkan tidak pernah sadar dengan apa yang telah kamu lakukan.\r\nNikmatilah saja, kelak dia yang kamu cintai akan mengetahui betapa kerasnya kamu dalam memperjuangkannya.', 'book_images/648932ee0e24d_catatan_pendek_untuk_cinta_yang_panjang.jpg', 'pdfs/648932ee0e254_Boy-Candra-Catatan-Pendek-untuk-Cinta-yang-Panjang-karya.pdf'),
(39, 'Seperti Hujan yang Jatuh ke Bumi', 23, 11, '2016', 'Novel Seperti Hujan Yang Jatuh Ke Bumi ini menceritakan Kevin seorang mahasiswa fisika yang memiliki wajah tampan, dingin dan juga pendiam.\r\nDia aktif di berbagai forum dan komunitas pencinta alam. Meskipun Kevin dingin terhadap perempuan namun tidak kepada Nara yang lebih tepatnya sahabat kecilnya.\r\nYang merupakan mahasiswi seni tari dan musik di universitas yang sama dengan Kevin.\r\nTanpa Nara sadari Kevin diam-diam menaruh hati kepadanya.dan telah memendam rasa sejak lama.\r\nNamun, Nara mudah sekali jatuh cinta dan seringkali gagal setelah pengkhianatan sahabat dan juga pacarnya.\r\nDan kini ada satu lelaki yang mendekatinya bernama Juned dan mulai singgah di hati Nara. Juned memiliki hobi panjat tebing. Dan tak lama mereka pun akhirnya jadian.\r\nKevin yang mendengar kabar tersebut hanya bisa tersenyum meski hatinya perih. Lalu bagaimana kelanjutan kisah mereka?\r\nApakah Kevin akan menemukan tambatan hati yang baru? Atau malah menunggu Nara yang telah mencintai yang lain?\r\nJawabannya ada di novel Seperti Hujan Yang Jatuh Ke Bumi baca yuk!', 'book_images/64893497a0ec5_SEPERTI_HUJAN.jpg', 'pdfs/64893497a0ecb_Boy-Candra-Pada-Senja-yg-membawamu-pergi.pdf'),
(40, 'Sebuah Usaha Melupakan', 23, 12, '2021', 'Setelah hari-hari yang sedih berlalu. Bulan-bulan pahit memulihkan diriku. Aku menyadari satu hal; yang bukan untukku, sekeras apa pun kupaksakan, tetap saja tak akan menjadi milikku. Yang kuperjuangkan sekuat usahaku, jika kau tak memperjuangkanku sepenuh hatimu, tetap saja kita akan berlalu.\r\n\r\nHidup terlalu pendek untuk dihabiskan dengan kesedihan berkepanjangan. Aku belajar menerima diri; bahwa aku memang bukan orang yang kau inginkan. Kelak, suatu hari nanti kau juga harus belajar menyadari. Bahwa kau sudah kulupakan dan bukan orang yang penting kemudian.', 'book_images/64893651b4c46_Boy-Candra-Sebuah-Usaha-Melupakan.jpg', 'pdfs/64893651b4c4e_Boy-Candra-Sebuah-Usaha-Melupakan.pdf'),
(41, 'Senja, Hujan, & Cerita yang Telah Usai', 23, 12, '2015', 'Buku ini dipersembahkan untuk orang-orang yang pernah dilukai, hingga susah melupakan. Untuk orang-orang yang mencintai, tapi dikhianati. Juga yang mengkhianati, lalu menyadari semua bukanlah hal yang baik untuk hati. Kepada orang-orang yang diam-diam jatuh cinta, suka pada sahabat sendiri, tidak bisa berpaling dari orang yang sama, dan hal-hal yang lebih pahit dari itu. Mari mengenang, tapi jangan lupa jalan pulang. Sebab, setelah tualang panjang ke masa lalu, kamu harus menjadi lebih baik, dan mulailah menata rindu yang baru.\r\n\r\nKatakan kepada masa lalu:\r\nkita adalah cerita yang telah usai.', 'book_images/648936fd70e91_senja, hujan dan cerita yang telah usai.jpg', 'pdfs/648936fd70e97_Boy-Candra-Senja-Hujan-Cerita-yang-Telah-Usai.pdf'),
(42, 'Setelah Hujan reda', 23, 12, '2016', 'Cerita pertama pada buku ini yaitu mengisahkan kisah cinta Aris dan Lara. Mereka kedua remaja yang bertemu tanpa disengaja.\r\nBerawal dari Aris yang sering sekali memperhatikan seorang wanita yang duduk termenung di halte bus tempat biasanya dia menunggu bus ke kampusnya.\r\nDalam beberapa kesempatan, Aris memperhatikan wanita itu dengan seksama. Setiap bertemu, wajah wanita itu selalu terlihat sendu. Seperti ada kesedihan yang teramat dalam.\r\nSuatu ketika Aris mencoba memberanikan diri untuk mengajak perkenalan dan Lara namanya. Ya, ia selalu datang untuk menunggu kekasihnya menepati janji bertemu dengannya.\r\nTelah diketahui kekasihnya telah dua tahun meninggal karena kecelakaan. Dan akhirnya mereka memutuskan untuk bersama menjalin hubungan baru.\r\nSelain kisah mereka ada Nawa dan Nila. Hubungan mereka harus terbentur oleh adat istiadat suku di desanya. Dimana jika masih dalam satu suku yang sama itu artinya mereka bersaudara.\r\nDan mereka tetap menikah di Pantai Gandorah dua insan ini mengikrarkan sebuah janji sehidup semati.\r\nNamun, saat Nawa meminta izin untuk merantau demi masa depan yang lebih baik, dan dia berjanji pada Nila akan kembali menemuinya.\r\nDengan setia Nila menunggu. Namun, sampai kulitnya mengerut dan matanya mulai mengabur Nawa tak kunjung pulang.\r\nSelain mereka juga ada kisah sepasang kekasih bernama Deantara dan Natin juga sahabatnya Maya.\r\nHobi Dean adalah mematung sedangkan Natin adalah seorang yang cerdas dan berkuliah di jurusan akutansi dan kini ia menjadi Banker.\r\nDean dan Natin sudah menjalani hubungan selama 9 tahun Natin selalu sabar dengan sikap Dean yang terlampau cuek dengan dirinya.\r\nYang ada di kehidupan Dean adalah mematung.\r\nNamun setiap manusia memiliki batas kesabaran begitu pula dengan Natin pada akhirnya Natin pun meninggalkannya.\r\nDan Natin lebih memilih menikah dengan seorang PNS pilihan orang tuanya dan meninggalkan Dean yang bergelut dengan dunianya.\r\nMaya dari sahabat Dean dan Natin tahu persis bagaimana sakit hatinya Dean. Namun, apa boleh buat nasi telah menjadi bubur. Kesempatan tidak akan terjadi dua kali.\r\nDan saat ini Dean masih termenung dengan bayangan sosok Natin di kepalanya.', 'book_images/648939122552e_9789797945220_setelah_hujan_reda.jpg', 'pdfs/6489391225534_Boy-Candra-Setelah-Hujan-Reda-karya.pdf'),
(43, 'Dilan 1990', 24, 12, '2014', 'Novel Dilan 1990 “Dia Adalah Dilanku Tahun 1990” novel ini bercerita tentang kisah cinta dua remaja Bandung dan berlatar Tahun 1990.\r\nBerawal dari seorang siswa bernaa Dilan yang jatuh cinta terhadap siswi pindahan dari SMA kota Jakarta bernama Milea. Hal yang unik dari kisah mereka adalah yaitu bagaimana Dilan memperlakukan Milea.\r\nDilan memiliki beragam cara agar bisa mendapatkan perhatian dari Milea sang pujaan hatinya. Berkat kerja kerasnya tersebut akhirnya Milea merasa nyaman akan hadirnya Dilan di sisinya.', 'book_images/64893abe5b74d_dilan 1990.jpg', 'pdfs/64893abe5b753_DILAN 1 (shabrinabachtiar).pdf'),
(44, 'Dia Adalah Dilanku Tahun 1991', 24, 12, '2015', 'Sinopsis novel Dilan 2 ini menceritakan tentang Milea yang mengenang kisah cinta yang terjalin di kota romantis, Bandung. Kali ini kisahnya di mulai ketika Milea dan Dilan resmi berpacaran.\r\n\r\nDan diawali dengan menandatangani materai tentang ikrar mereka sudah berpacaran. Lalu mereka menyusuri jalanan dengan motor CB ditemani rintik hujan di kota Bandung desember 1990.\r\n\r\nKisah mereka berbeda dengan remaja pada zaman sekarang. Milea sangat bahagia pada saat itu Milea merasa sangat beruntung memiliki Dilan sebagai kekasihnya. Milea selalu rindu bila tidak bertemu Dilan.\r\n\r\nPerjuangan Kang Adi untuk mendapatkan Milea ternyata belum surut. Namun tetap saja kang Adi tidak ada di hati Milea karena sudah terisi oleh Dilan. Ada tokoh tambahan dalam novel Dilan 2 di banding novel pertamanya.Ada tambahan tokoh Yugo, Tante Anis dan juga Ayahnya Dilan. Penasaran bagaimana kelanjutan kisah percintaan mereka? Kuy, baca bukunya. Di jamin kamu akan suka dengan alur ceritanya yang seru dan bikin happy.', 'book_images/64893b8005ca2_dilan 1991.jpg', 'pdfs/64893b8005ca7_DILAN 2 (shabrinabachtiar).pdf'),
(45, 'Konspirasi Alam Semesta', 25, 11, '2017', 'Novel Konspirasi Alam Semesta menceritakan kehidupan tokoh bernama Juang Astrajingga yang lahir dari seorang ayah berjiwa “ekstapol.\r\n\r\nOleh karena itu, ia tumbuh menjadi anak yang seringkali dicemooh dan dicela oleh orang-orang, terutama tetangganya.\r\nJuang adalah seorang pria ganteng dengan brewok tipis dan alis tebal, serta bermata tajam.\r\nJuang adalah seorang pria yang sering berpetualang cinta hingga ia punya banyak mantan kekasih.\r\nSeptember 2011, Bandung, Juang mencari buku yang cukup langka. Tetapi, saat itu ia tak sengaja menabrak perempuan hingga buku-buku yang ada di sekitar mereka menjadi terjatuh.\r\nPertemuannya dengan perempuan tersebut membuat Juang terpesona, ia sampai berhenti bergerak hingga tak tahu apa yang akan direncanakan oleh semesta.\r\nSuatu waktu, Juang mempunyai tugas untuk mewawancarai anak Sinden Shinta yang mempunyai suara indah. Ternyata, anak Sinden Shinta yang bernama Ana Tidae adalah perempuan yang ia jumpai di toko buku.\r\nSetelah melaksanakan wawancara sampai selesai, Juang dan Ana Tidae berencana untuk mendaki bersama. Hingga hubungan keduanya bertambah dekat, bahkan saling merasakan jatuh cinta.\r\nTetapi, saat Ana Tidae sedang merasa nyaman dengan Juang. Mereka berdua harus terpisah karena tugas Juang sebagai seorang jurnalis.\r\nJuang kembali pulang setelah melaksanakan tugas dalam waktu berbulan-bulan. Bahkan, saat Juang kembali ke rumah, ia diuji dengan permasalahan ibundanya masuk RS. Parahnya, ibunda Juang meninggal.\r\nDari kejadian itu, Juang merasa kehilangan cahaya dalam hidupnya. Ia merasa belum mengabdi dengan orangtuanya. Ia seringkali memaki-maki dirinya sendiri.\r\nTentu saja, Ana sangat paham dengan kondisi Juang saat itu. Oleh karena itu, Ana pun tidak berniat untuk memberitahu kepada Juang bahwa Ana sedang sakit tumor di bagian kepala belakang. Bahkan, ia harus melakukan operasi.\r\nSuatu waktu, Juang malah melihat Ana sudah jatuh dalam pelukan Deri yaitu mantan kekasihnya. Tentu saja, hal tersebut membuat Juang begitu merasa kecewa.\r\nAkhirnya, Juang pergi ke Nias untuk melaksanakan tugas, sekaligus melarikan diri dari rasa cemburunya.\r\nAna yang seharusnya melakukan operasi, ia tidak menjalankannya karena mempertimbangkan biayanya. Oleh karena itu, Ana hanya berserah diri kepada semesta dan takdir. Ia hanya berpasrah untuk melanjutkan hidupnya.\r\nSuatu waktu, Juang akhirnya kembali lagi Bandung. Saat pulang, ia sudah menemui Ana sedang terbaring di Rumah Sakit. Juang pun meyakinkan Ana untuk segera melakukan operasi.\r\nDengan rasa semangat dan optimis, akhirnya Ana melakukan operasi hingga tumornya pun lenyap. Tak lama kemudian Ana dan Juang pun menikah.\r\nSetelah menikah, Juang masih sering berpergian jauh untuk bekerja. Suatu waktu, Juang ikut berkontribusi dalam membantu korban bencana alam Gunung Sinabung.\r\nTetapi, justru Juang malah meninggal terkena awan panas yang menyembur. Padahal, saat itu Ana sedang mengandung.\r\nHingga anaknya lahir diberikan nama IlYA, ia menjadi pengganti Juang untuk menemani hidup Ana.', 'book_images/64893cc448d79_9789797945350_Konspirasi-Alam-Semesta.jpg', 'pdfs/64893cc448d7e_Fiersa-Besari-Konspirasi-Alam-Semesta.pdf'),
(46, 'Garis Waktu', 25, 11, '2016', 'Pada sebuah garis waktu yang merangkak maju, akan ada saatnya kau bertemu dengan satu orang yang mengubah hidupmu untuk selamanya.\r\nPada sebuah garis waktu yang merangkak maju, akan ada saatnya kau terluka dan kehilangan pegangan.\r\nPada sebuah garis waktu yang merangkak maju, akan ada saatnya kau ingin melompat mundur pada titik-titik kenangan tertentu.\r\nMaka, ikhlaskan saja kalau begitu. Karena sesungguhnya, yang lebih menyakitkan dari melepaskan sesuatu adalah berpegangan pada sesuatu yang menyakitimu secara perlahan.\r\nDapat di simpulkan dari seluruh isi cerita novel “Garis Waktu” karya Fiersa Besari ini menceritakan curahan hati tentang perjumpaan, kasmaran, patah hati, serta keikhlasan dalam melepaskan.\r\nKemudian berakhir tokoh “Aku” menguraikan perasan-perasaannya pada “Kau” dalam bentuk surat dari April tahun pertama hingga Maret tahun kelima.\r\nDari awal berjumpa dan saling tatap hingga tak saling menetap. Karena sebuah pengkhianatan yang di lakukan oleh “Kau” tersebut dan membat “Aku” patah hati.\r\nSelain berkisah Aku, Kamu dan Dia buku ini juga terselip kisah tentang keluarga, cita-cita, dan harapan hingga perenungan tentang kematian.\r\nPesan yang disampaikan buku ini cukup menyentuh hati terlebih saat bab akhir yaitu oktober tahun kedua dimana tokoh Aku menceritakan kerinduannya terhadap orang tuanya terutama ibunya.', 'book_images/64893dcacd400_Sampul_buku_Garis_Waktu.jpg', 'pdfs/64893dcacd406_Fiersa-bisari-garis-waktu.pdf'),
(47, 'Babi Ngesot: Datang Tak Diundang Pulang Tak Berkutang', 26, 13, '2008', 'Novel Babi Ngesot menceritakan tentang perjalanan hidup Raditya Dika yang yang lucu-lucu. Salah satu bagian ceritanya yang berjudul Asal Jangan Jadi Perkedel.\r\nBagian cerita tersebut menceritakan tentang keseharian Raditya Dika saat ia mulai memasuki bangku SMA itu di SMA 70 Bulungan mulai dari saat awal Raditya memilih sekolah itu.\r\nAwalnya, tokoh Raditya ini bingung memilih sekolah saat lulus SMP. Tetapi, akhirnya ia memilih SMA 70 Bulungan. Alasannya karena deket pasar burung, deket mall, dan deket jalan besar.\r\nHingga akhirnya ia masuk sekolah dan bertemu dengan para kakak kelasnya di SMA.\r\nAwalnya kegiatan sekolah di SMA 70 Balungan dianggap tetap menyenangkan. Tetapi, ternyata lama kelamaan ia mendengar bahwa Kaka kelasnya selalu jahil dengan anak kelas satu.\r\nTernyata hal tersebut juga terjadi dengan Raditya. Ia sering dijahili oleh kaka kelasnya.\r\nBahkan, suatu waktu Radith benar-benar hampir dikencingin oleh kakak kelasnya. Tetapi, ia berhasil kabur.\r\nDi waktu-waktu kemudian hari Radith juga masih terus dijahili oleh kaka kelasnya. Hingga ia pernah berpikir untuk melawannya.\r\nKisah komedi lainnya yang diceritakan dalam novel yaitu ketika Radith pulang ke rumah. Ia bertemu dengan setan berponi. Ia memanggilnya sebagai setan Britney Spears.\r\nBanyak kejadian mistis yang diceritakan di rumahnya Radith. Bahkan, akhirnya seluruh keluarga rumah Radith pun mengalami kesurupan. Pembantu di rumahnya pun juga ikut kesurupan.\r\nSelain itu, terdapat kisah buruk Radith. Dimana saat ia berkencan, harus tetap menyiapkan babi bersayapnya.', 'book_images/648947345af17_Babi_Ngesot_2.jpeg', 'pdfs/648947345af1d_Raditya-Dika-Babi-Ngesot.pdf'),
(48, 'Cinta Brontosaurus', 26, 13, '2006', 'Novel Cinta Brontosaurus ini menceritakan tentang kisah sehari-harinya Raditya Dika yang lahir pada 28 desember 1984.\r\nNovel ini dimulai dengan kisah cinta Raditya Dika saat duduk di bangku SD.\r\nKetika duduk di bangku SD, Dika menyukai seorang anak perempuan di kelasnya yang bernama Lia. Ia memutuskan menulis surat cinta pada gadis pujaanya itu.\r\nAgar terlihat keren, ia berencana menulis surat tersebut dalam bahasa Inggris.\r\nIa bermaksud ingin mengatakan “Aku memikirkanmu setiap malam” dalam bahasa Ingrris. Sialnya ia tak tahu bagaimana cara menulisnya.\r\n“I thing of you every ….” dengan sok tahu ia mulai menulis. Tapi bagaimana menulis night?\r\nUntunglah pada saat itu tayangan Masked Rayder Knight. Aha! Langsung ia berpikir pastilah itu cara menulis “Night”.\r\nTanpa pikir panjang melanjutkan menulis “I thing of you every knight”.\r\nUntung tak dapat di raih, malang tak dapat di tolak ternyata sang pujaan hati pernah tinggal di Amerika.\r\nBukan mendapat balasan cinta malah di kritik karena penulisan kata yang salah.terlebih sang pujaan hati telah memiliki pacar.\r\nCerita di atas hanya salah satu dari ke 13 cerita di dalam buku ini.\r\nPastinya setelah membaca buku ini kamu akan sering tertawa dan karena benar-benar lucu banget. Yuk baca novelnya!', 'book_images/648948326d80b_Cinta_Brontosaurus_2.jpg', 'pdfs/648948326d817_Raditya-Dika-Cinta-brontosaurus.pdf'),
(49, 'Koala Kumal', 26, 13, '2014', 'Novel Koala Kumal ini adalah menceritakan cerita kehidupan penulis yaitu Raditya Dika sendiri yang tulisannya dikemas dengan tema komedi dan ini cerita nyata dari kehidupannya yang absurd.\r\nDi dalam novel Koala Kumal itu sendiri terdiri dari 12 bab. Dimana beberapa bab menceritakan satu tema yaitu patah hati. Mulai dari patah hati oleh sahabat, orang tanpa nama dan patah hati lainnya.\r\nDan ada salah satu judul yang membuat pembaca galau yaitu berjudul patah hati terberat. Yaitu kisah patah hati dari Trisna dimana patah hati Trisna ini mengubah cara pandangnya terhadap cinta.\r\nBab terakhir itulah yang berjudul Koala kumal dimana mantan yang dulu telah memutuskan Dika secara sepihak. Ia ingin kembali dan menyesal telah putus darinya.\r\nNamun, kali ini Dika menanggapi secara berbeda yaitu menanggapi dengan cara yang lebih dewasa.', 'book_images/648948dd71bf5_koala kumal.jpg', 'pdfs/648948dd71bf9_Raditya-Dika-Koala-Kumal.pdf'),
(50, 'Manusia Setengah Salmon', 26, 13, '2011', 'Novel Manusia Setengah Salmon ini menceritakan seorang tokoh bernama Dika dan tidak lain adalah penulis bukunya tersebut. Ia mengisahkan belum bisa move on dari mantan kekasihnya.\r\n\r\nBaca juga: Cerita Cinta Atasan dan Bawahan Seru & Menarik Banget\r\n\r\nDan orang tuanya yang mengajaknya untuk pindah rumah. Berbagai permasalahan mulai datang menghampiri.\r\n\r\nDika dan keluarganya dan memaksa ia pindah dari hal-hal yang tidak membuatnya tidak nyaman.\r\n\r\nNamun, ia mulai berusaha melewati masalah satu persatu. Mulai dari menemani ibunya mencari rumah baru hingga berusaha mencari pengganti Jessica mantan kekasihnya.\r\n\r\nDisaat yang sama ibunya menemukan rumah yang cocok, Dika bertemu dengan Patricia teman dulu waktu SMP.\r\nDika mencoba mendekati Patricia dan keduanya saling menghabiskan waktu bersama-sama. meskipun begitu Dika dan Patricia sadar bahwa bayang-bayang masa lalunya sulit untuk bisa di lupakan.\r\nLalu apakah Dika bisa berhasil melupakan bayang-bayang masa lalunya dan bisa menjalin hubungan baru dengan wanita teman SMP nya dulu?\r\nApakah Patricia juga mau menjalin hubungan Dika. Dengan segala kekonyolannya? Jawabannya hanya ada di novel Manusia Setengah Salmon. Yuk, baca!', 'book_images/64894ab419978_Manusia_Setengah_Salmon.jpg', 'pdfs/64894ab419983_Raditya-Dika-Manusia-Setengah-Salmon.pdf'),
(51, 'Radiku Makankakus (Bukan Binatang Biasa)', 26, 11, '2007', 'Dalam novel ini terdapat 13 cerita yang lucu yang akan membuat kamu tertawa tentunya.\r\nJudul cerita dalam novel ini diantaranya adalah: Balada Badut Mabok, Ngik!, Ketika Kau Menebeng, Itu Tadi Manusia Bukan?, Pertanyaan Untuk Tabib, Arti Hidup, Guruku Seperti Macan.\r\nLakukan Dengan Microwave, Dizalimi Kala Banjir, Gak Bisa Jongkok, Kacang Untuk Valentine, (.) (.), dan bukan Binatang Biasa.\r\nCerita pertama yaitu Balada Badut Mabok ini menceritakan perjalanan kehidupan Dika yang saat melakukan penelitian kehidupan badut dengan melakukan penyamaran menggunakan kostum badut.\r\nYang pertama yang ia lakukan yaitu menyewa kostum badut dengan teman asisten Pak Rofik yaitu Nanang. Dan ia memilih kostum harimau dan baju kesatria.\r\nDi cerita selanjutnya Ngik! Ini menceritakan pengalamannya saat bertemu dengan teman lamanya yang bernama Toni. Yang memiliki kelainan pada otak sehingga ia memiliki dua kepribadian.\r\nLalu selanjutnya yaitu Ketika Kau Menebeng ini menceritakan cewek pindahan dari NTB yang masih kental dengan bahasa daerahnya cewek ini diberi nama panggilan Mbip.\r\nSebetulnya tidak ada yang aneh dari Mbip ini tapi Aryo teman dari Radith menganggap bahwa Mbip merupakan cewek yang turun dari planet.\r\nDan berikutnya cerita Itu Tadi Manusia Bukan? nah, ini menceritakan pengalaman Radith yang salah masuh WC.\r\nDan menyadarinya setelah berada di dalam Stall. Pada saat itu ia mendengar cekikikan dari rombongan cewek.\r\nDan kebetulan mereka sedang bercerita tentang hantu dan ketakutan berawal ketika Radith menyalakan keran untuk cuci tangan.\r\nDan masih banyak lagi cerita seru lainnya yang kocak. Yuk baca selengkapnya di novel Radikus Makankakus.', 'book_images/64894bf0e42b4_radikus.jpg', 'pdfs/64894bf0e42ba_Raditya-Dika-Radikus-makan-kakus.pdf'),
(53, 'Pergi', 27, 4, '2018', 'Novel ini menceritakan kisah tentang Bujang yang mencari tujuan hidup, ke mana hendak pergi, melalui kenangan demi kenangan masa lalu, pertarungan hidup-mati, untuk memutuskan kemana langkah kaki akan dibawa.\r\n\r\nNovel ini merupakan kelanjutan dari sekuel novel Pulang sebelumnya. Dan novel ini masih menceritakan Bujang sebagai Pentolan keluarga Tong. Dan mengisahkan kehidupan Bujang yang telah ditinggal orang-orang terdekatnya.\r\n\r\nSeperti Mamak, Tauke Besar dan beberapa guru yang mengajarinya. Bujang bekerja sama dengan kepala tukang pukul keluarga Tong yaitu Togar dan Parwez membawa keluarga Tong menjadi lebih besar dan lebih baik.\r\n\r\n\r\n\r\nSelain itu di novel ini Bujang bertemu dengan Thomas yaitu salah satu tokoh di novel Negeri Para Bedebah dan Negeri di Ujung Tanduk . dan tokoh yang muncul beberapa kepala keluarga dari Shadaw Economy.\r\nLalu siapa sosok bertopeng misterius yang mampu mengalahkan Bujang? Dan sosok tersebut mengetahui nama asli Bujang.', 'book_images/648998dc9528f_PERGI.jpg', 'pdfs/648998dc95294_PERGI.jpg'),
(54, 'Pulang', 27, 11, '2016', 'Novel Pulang karya Tere Liye ini menceritakan tentang Bujang yang hidup di pedalaman Sumatra. Ia mewarisi darah ayahnya yang merupakan tukang pukul yang paling di segani oleh Shadow Economy.\r\n\r\nBaca juga: Resensi Novel Kamu Sekuat Aku: Sinopsis, Intrinsik & Amanat\r\n\r\nSamad ayahnya ingin Bujang meneruskan karirnya dan mengirim ia ke konglomrasi bisnis. Bujang dilatih beladiri selain itu ia dilatih studi formal di kampus terbaik.\r\n\r\nDan jadilah orang kepercayaan keluarga Tauke Besar. Mati-matian ia mempertahankan keluarga Tong dengan segala tenaga dan upaya.\r\n\r\nDan ia berkesempatan menjadi Tauke Besar menggantikan yang sebelumnya dan ia menolak jabatan yang cukup bergengsi tersebut.\r\n\r\nNamun, Bujang menolak dan lebih memilih untuk pulang ke pedalaman Sumatra dan keluar dari keluarga tersebut.\r\n', 'book_images/64899bde9bd55_pulang.jpg', 'pdfs/64899bde9bd5a_Pulang-Tere-Liye-1.pdf'),
(55, 'Bumi', 27, 14, '2014', 'Novel bumi ini menceritakan seorang anak remaja bernama Raib yang berusia 15 tahun. Sejak kecil ia sudah memiliki kekuatan yaitu menghilang dengan cara menutup kedua wajahnya dengan tangan seketika ia akan menghilang.\r\n\r\nLalu datanglah Tamus menghampirinya ketika Raib kebingungan dengan kekuatannya. Tamus adalah orang dari dunia lain yang mengirim si Putih dan Si Hitam ke rumah Raib.\r\n\r\nDan ternyata si Hitam telah mengawasi Raib dari kecil dan hanya Raib yang bisa meliha si Hitam. Lalu bagaimana kelanjutan kisah mereka? Jawabannya ada di dalam novel bumi tersebut.', 'book_images/64899e0fdfeed_Bumi.jpg', 'pdfs/64899e0fdfef4_Tere Liye - Bumi.pdf'),
(56, 'Bulan', 27, 11, '2015', 'Masih menceritakan petualangan tiga sekawan yaitu Ali, Seli, dan Raib yang dibawa oleh Miss Selena dan Av ke Klan Matahari untuk melakukan diplomasi.\r\n\r\nAv ingin menemui ketua konsil Klan Matahari untuk mencari Federasi saat melawan Tamus. Konsil Klan Matahari ingin menguasai Klan Matahari.\r\n\r\nMereka pergi dengan bantuan dari Buku Kehidupan milik Raib. Akhirnya, dengan kelebihan dan kemampuan masing-masing, mereka memutuskan pergi ke Klan Matahari.\r\n\r\nSaat tiba di Klan Matahari, mereka disambut dengan Festival Bunga Matahari. Festival Bunga Matahari merupakan suatu kompetisi yang sudah menjadi tradisi setiap tahun di Klan Matahari.\r\n\r\nRaib, Seli, Ali, dan Ily diminta untuk menjadi peserta oleh Av dan Miss Selena.\r\n\r\nDengan senjata panah dan pemukul, disertai tekad untuk melewati rintangan yang sangat berbahaya itu, mereka pun ikut berpartisipasi.\r\n\r\nSembilan kelompok dari seluruh negeri berjuang untuk mendapatkan bunga matahari pertama yang mekar di tempat rahasia. Siapa yang menemukan bunga tersebut, dialah pemenangnya.\r\n\r\n\r\nAnak muda yang tangguh dan memiliki kemampuan untuk bertahan hidup dengan baik adalah peserta lomba ini. Ada banyak rintangan untuk menemukan bunga tersebut.\r\n\r\n\r\nBunga matahari itu akan mengeluarkan senjata dan kekuatan jika yang memetiknya adalah orang yang berambisi.\r\n\r\nSementara itu, bunga matahari akan memberikan ilmu pengetahuan baru jika yang memeriknha adalah orang dengan rasa ingin tahu.\r\n\r\nPertama mereka mendapat petunjuk untuk menemukan bunyi suling yang terus terdengar. Mereka pun berhasil mendapatkan petunjuk itu setelah mendengar suara air terjun.\r\n\r\n\r\nMereka mengahadapi banyak rintangan saat melanjutkan perjalanan untuk petunjuk berikutnya. Entah itu serangan dari burung, gorila, banjir, hingga harimau yang menjadi tunggangan mereka hilang.\r\n\r\nMereka pun melanjutkan perjalanan dengan berjalan kaki.\r\n\r\nBaca juga: Resensi Novel Cinta Pertama, Novel Cinta Paling Seru!\r\nSetelah melewati perjalanan yang cukup menguras, mereka istirahat di salah satu perkampungan untuk makan siang. Akan tetapi, mereka diusir oleh warga setempat karena mereka adalah peserta Festival Bunga Matahari.\r\n\r\nMereka pun pergi meninggalkan kampung tersebut. Lalu terlihat seorang anak perempuan sedang kesakitan di pinggir sawar akibat gigitan ular. Raib bergegas memberikan obat penawar dari Hana.\r\n\r\n\r\nAnak perempuan itu pun akhirnya sembuh. Karena itu, mereka pun diijinkan untuk tinggal di kampung itu.\r\n\r\nBersama pemburu, mereka pun melanjutkan perjalanan ke sebuah danau dan bertemu dengan kelompok lain. Mereka membantu peserta lain yang nyaris dimakan gurita hingga mereka ikut terluka.\r\n\r\nLembah jamur menjadi petunjuk berikutnya. Lembah itu cukup berbahaya karena mengeluarkan tinta yang beracun. Mereka hampir saja lenyap, kalau empat harimau tunggangan mereka yang tadi menghilang tidak segera datang.\r\n\r\n\r\nHalaman rumah ibu Hana menjadi petunjuk terakhir dari perlombaan ini. Bunga matahari terlihat tumbuh dikelilingi ribuan lebah. Ketua konsil Klan Matahari dan kelompok Salamander juga sudah tiba di sana.\r\n\r\n\r\nKetua Konsil menghentikan kelompok Salamander saat mereka hendak mencabut bunga matahari itu. Ketua Konsil mengetahui bahwa kelompok Salamander melakukan kecurangan.\r\n\r\nKemudian, ketua Konsil mengumumkan bahwa kelompok yang berhak mencabut bunga matahari adalah kelompok Raib dan teman-temannya. Mereka pun diperkenankan untuk mencabut bunga matahari itu.\r\n\r\nHana pun melarang mereka karena hal itu akan membahayakan kehidupan di klan Matahari dan Bulan.\r\n\r\nKetua Konsil bersih keras ingin Raib dan teman-temannya mencabut bunga tersebut. Pada akhirnya, pertempuran pun terjadi', 'book_images/64899f0bd9359_Bulan.jpg', 'pdfs/64899f0bd935f_Tere-Liye-Bulan.pdf'),
(57, 'Bintang', 27, 14, '2017', 'Novel Bintang ini merupakan kelanjutan dari novel Bumi. Sekertaris Dewan Kota Zaramaaz dan Faar memiliki rencana jahat ingin menguasai klan Bintang, klan Bulan dan klan Matahari.\r\n\r\nRaib dan seli sementara waktu kembali pulang ke klan bumi untuk melatih kekuatannya. Sehingga mereka memiliki kekuatan yang lebih dahsyat lagi.\r\n\r\nSeli, Raib, Ali dan Miss Selena mengadakan pertemuan di rumah Seli dan menjadikan Ali sebagai komite klan Bumi. Jati diri Ali ternyata merupakan sebagai anak pengusaha sukses yang memiliki akses ke berbagai perusahaan dunia.\r\n\r\nAli juga berhasil membuka kata sandi pada tabung kapsul milik Dewan sekertaris Kota Zaramaas. Akhirnya Miss Selena meminta Raib, Ali, dan Seli melakukan perjalanan misi untuk mencari sebuah pasak bumi', 'book_images/64899fadf2ba0_bintang', 'pdfs/64899fadf2ba6_Tere-Liye-Bintang.pdf'),
(58, 'Hujan', 27, 14, '2016', 'Novel Hujan merupakan novel yang mengisahkan kisah cinta serta perjuangan hidup Lail. Saat usianya baru menginjak 13 tahun, Lail menjadi seorang yatim piatu akibat ayah dan ibu Lail yang terkena letusan Gunung Api Purba dan gempa yang membuat kota tempat mereka tinggal hancur.\r\n\r\nLail yang pada saat itu juga termasuk korban bencana berhasil diselamatkan oleh anak laki-laki bernama Esok. Lail dan Esok akhirnya menjadi sepasang yang tak terpisahkan sampai akhirnya mereka harus berpisah karena tempat pengungsian yang mereka tinggali tutup. Lail akhirnya menetap di sebuah panti sosial dan Esok diangkat menjadi anak salah satu keluarga.\r\n\r\nMereka menjalani kehidupannya masing-masing. Pertemuan mereka untuk melepas rindu dilakukan rutin sebulan sekali meski akhirnya jadwal pertemuan harus diubah akibat Esok yang harus meneruskan pendidikan di Ibu Kota. Pertemuan mereka berubah menjadi setiap Esok berlibur semester. Frekuensi pertemuan keduanya semakin jarang.\r\n\r\nSampai suatu ketika, ayah angkat Esok, wali kota, menemui Lail dan memohon agar Lail menolak tiket yang akan diberikan esok agar tiket tersebut dapat diberikan ke anaknya. Kesalahpahaman pun terjadi. Lail tak kunjung mendapatkan kabar dari Esok. Akhirnya, Lail memutuskan untuk masuk ke ruang modifikasi ingatan. Lail ingin semua memori dan beban yang ada di ingatannya menghilang. Lantas apa yang akan terjadi pada kisah Lail dan Esok?', 'book_images/6489a0fc2b3e6_Hujan.jpg', 'pdfs/6489a0fc2b3ec_Tere-Liye-Hujan.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(4, 'Adventure'),
(8, 'Biography'),
(13, 'Comedy'),
(7, 'Coming-of-age'),
(11, 'Fiksi'),
(10, 'Hacking'),
(14, 'Novel'),
(12, 'Romance'),
(6, 'Satire'),
(5, 'Science Fiction'),
(9, 'Thriller'),
(3, 'Tragedy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `issued_books`
--

CREATE TABLE `issued_books` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `address` text NOT NULL,
  `is_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `address`, `is_admin`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '9800000000', 'Blitar', 1),
(2, 'ageng', 'ageng@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '98', '98\r\n', 0),
(4, 'ari', 'ari@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '9800', 'dkjfjk', 0),
(5, 'rizal', 'rz@gmail.com', '202cb962ac59075b964b07152d234b70', '212', 'blr', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `issued_books`
--
ALTER TABLE `issued_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_id` (`book_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `issued_books`
--
ALTER TABLE `issued_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `issued_books`
--
ALTER TABLE `issued_books`
  ADD CONSTRAINT `issued_books_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issued_books_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
