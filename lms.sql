-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 08:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(17, 'Anne Frank'),
(6, 'F. Scott Fitzgerald'),
(10, 'George Orwell'),
(11, 'Harper Lee'),
(7, 'Herman Melville'),
(14, 'Isaac Asimov'),
(12, 'JD Salinger'),
(8, 'JRR Tolkien'),
(20, 'John Grisham'),
(16, 'Michelle Obama'),
(9, 'Paulo Coelho'),
(13, 'Ray Bradbury'),
(21, 'Stephen Chbosky'),
(18, 'Stephen King'),
(19, 'Stieg Larsson'),
(15, 'Walter Isaacson'),
(5, 'William Shakespeare');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `author_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `year` varchar(4) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `image` text COLLATE utf8_bin NOT NULL,
  `pdf` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author_id`, `cat_id`, `year`, `description`, `image`, `pdf`) VALUES
(10, 'To Kill a MockingBird', 11, 7, '1960', 'The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it. \"To Kill A Mockingbird\" became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.', 'book_images/ff.png', 'pdfs/ff.pdf'),
(11, 'Moby Dick', 7, 5, '1899', '', 'book_images/ok.png', 'pdfs/ok.pdf'),
(12, 'Catcher in the Rye', 12, 7, '1955', 'mnmb hj gjghjhb', 'book_images/yt.png', 'pdfs/yt.pdf'),
(15, 'Romeo and Juliet', 5, 3, '1597', 'In Romeo and Juliet, Shakespeare creates a violent world, in which two young people fall in love. It is not simply that their families disapprove; the Montagues and the Capulets are engaged in a blood feud.', 'book_images/62b14c8022b7e_romeo.jpg', 'pdfs/62b14c8022bac_lms.pdf'),
(19, 'The Great Gatsby', 6, 3, '1925', 'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway\'s interactions with mysterious millionaire Jay Gatsby and Gatsby\'s obsession to reunite with his former lover, Daisy Buchanan.', 'book_images/62b1550130813_gatsby.jpg', 'pdfs/62b155013081d_lms.pdf'),
(20, 'Hamlet', 5, 3, '1599', 'Among Shakespeare\'s plays, \"Hamlet\" is considered by many his masterpiece. Among actors, the role of Hamlet, Prince of Denmark, is considered the jewel in the crown of a triumphant theatrical career. Now Kenneth Branagh plays the leading role and co-directs a brillant ensemble performance. Three generations of legendary leading actors, many of whom first assembled for the Oscar-winning film \"Henry V\", gather here to perform the rarely heard complete version of the play. This clear, subtly nuanced, stunning dramatization, presented by The Renaissance Theatre Company in association with \"Bbc\" Broadcasting, features such luminaries as Sir John Gielgud, Derek Jacobi, Emma Thompson and Christopher Ravenscroft. It combines a full cast with stirring music and sound effects to bring this magnificent Shakespearen classic vividly to life. Revealing new riches with each listening, this production of \"Hamlet\" is an invaluable aid for students, teachers and all true lovers of Shakespeare - a recording to be treasured for decades to come. ', 'book_images/62b1553036d95_hamlet.jpg', 'pdfs/62b1553036d9c_lms.pdf'),
(21, 'Fellowship of the Ring', 8, 4, '1954', 'In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, The Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages, it fell into the hands of Bilbo Baggins, as told in The Hobbit.', 'book_images/62b155717ec2e_fellowship.jpg', 'pdfs/62b155717ec38_lms.pdf'),
(22, 'The Two Towers', 8, 4, '1954', 'Frodo and his Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in a battle in the Mines of Moria. And Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape, the rest of the company was attacked by Orcs.', 'book_images/62b155b3ea55e_two towers.jpg', 'pdfs/62b155b3ea565_lms.pdf'),
(23, 'The Return of the King', 8, 4, '1955', 'The Companions of the Ring have become involved in separate adventures as the quest continues. Aragorn, revealed as the hidden heir of the ancient Kings of the West, joined with the Riders of Rohan against the forces of Isengard, and took part in the desperate victory of the Hornburg. Merry and Pippin, captured by Orcs, escaped into Fangorn Forest and there encountered the Ents. Gandalf returned, miraculously, and defeated the evil wizard, Saruman. Meanwhile, Sam and Frodo progressed towards Mordor to destroy the Ring, accompanied by SmEagol--Gollum, still obsessed by his \'precious\'. After a battle with the giant spider, Shelob, Sam left his master for dead; but Frodo is still alive--in the hands of the Orcs. And all the time the armies of the Dark Lord are massing. J.R.R. Tolkien\'s great work of imaginative fiction has been labeled both a heroic romance and a classic fantasy fiction. By turns comic and homely, epic and diabolic, the narrative moves through countless changes of scene and character in an imaginary world which is totally convincing in its detail.', 'book_images/62b155fc830fe_return of the king.jpg', 'pdfs/62b155fc83109_lms.pdf'),
(24, 'The Alchemist', 9, 4, '1988', 'Paulo Coelho\'s masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure. His quest will lead him to riches far different—and far more satisfying—than he ever imagined. Santiago\'s journey teaches us about the essential wisdom of listening to our hearts, of recognizing opportunity and learning to read the omens strewn along life\'s path, and, most importantly, to follow our dreams.', 'book_images/62b156904c83f_alchemist.jpg', 'pdfs/62b156904c84d_lms.pdf'),
(26, 'Nineteen Eighty-Four', 10, 6, '1949', 'The new novel by George Orwell is the major work towards which all his previous writing has pointed. Critics have hailed it as his \"most solid, most brilliant\" work. Though the story of Nineteen Eighty-Four takes place thirty-five years hence, it is in every sense timely. The scene is London, where there has been no new housing since 1950 and where the city-wide slums are called Victory Mansions. Science has abandoned Man for the State. As every citizen knows only too well, war is peace.', 'book_images/62b156e2b9906_nineteen.jpg', 'pdfs/62b156e2b9913_lms.pdf'),
(27, 'Animal Farm', 10, 6, '1945', 'A farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, they set out to create a paradise of progress, justice, and equality. Thus the stage is set for one of the most telling satiric fables ever penned –a razor-edged fairy tale for grown-ups that records the evolution from revolution against tyranny to a totalitarianism just as terrible.', 'book_images/62b1573293a27_animal.jpg', 'pdfs/62b1573293a2f_lms.pdf'),
(28, 'Fahrenheit 451', 13, 5, '1953', 'Guy Montag is a fireman. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden. Montag never questions the destruction and ruin his actions produce, returning each day to his bland life and wife, Mildred, who spends all day with her television “family.” But when he meets an eccentric young neighbor, Clarisse, who introduces him to a past where people didn’t live in fear and to a present where one sees the world through the ideas in books instead of the mindless chatter of television, Montag begins to question everything he has ever known.', 'book_images/62b15795416c0_fahrenheit.pg.jpg', 'pdfs/62b15795416ca_lms.pdf'),
(29, 'Foundation', 14, 5, '1942', 'For twelve thousand years the Galactic Empire has ruled supreme. Now it is dying. But only Hari Seldon, creator of the revolutionary science of psychohistory, can see into the future -- to a dark age of ignorance, barbarism, and warfare that will last thirty thousand years. To preserve knowledge and save mankind, Seldon gathers the best minds in the Empire -- both scientists and scholars -- and brings them to a bleak planet at the edge of the Galaxy to serve as a beacon of hope for a future generations. He calls his sanctuary the Foundation.', 'book_images/62b157fce9d11_foundation.jpg', 'pdfs/62b157fce9d18_lms.pdf'),
(30, 'Steve Jobs', 15, 8, '2011', 'Steve Jobs is the authorized self-titled biography of American business magnate and Apple co-founder Steve Jobs. The book was written at the request of Jobs by Walter Isaacson, a former executive at CNN and TIME who has written best-selling biographies of Benjamin Franklin and Albert Einstein.', 'book_images/62b15824785ba_steve jobs.jpg', 'pdfs/62b15824785c4_lms.pdf'),
(31, 'Becoming', 16, 8, '2018', 'Becoming is the memoir of former first lady of the United States Michelle Obama, published in 2018. Described by the author as a deeply personal experience, the book talks about her roots and how she found her voice, as well as her time in the White House, her public health campaign, and her role as a mother. ', 'book_images/62b1584cbf53a_becoming.jpg', 'pdfs/62b1584cbf543_lms.pdf'),
(32, 'The Diary of a Young Girl', 17, 8, '1947', 'Discovered in the attic in which she spent the last years of her life, Anne Frank’s remarkable diary has become a world classic—a powerful reminder of the horrors of war and an eloquent testament to the human spirit.', 'book_images/62b15891c1edb_the diary.jpg', 'pdfs/62b15891c1ee6_lms.pdf'),
(33, 'Misery', 18, 9, '1987', 'Misery is an American psychological horror thriller novel written by Stephen King and first published by Viking Press on June 8, 1987. The novel\'s narrative is based on the relationship of its two main characters – the romance novelist Paul Sheldon and his deranged self-proclaimed number one fan Annie Wilkes.', 'book_images/62b158ceea35d_misery.pg.jpg', 'pdfs/62b158ceea364_lms.pdf'),
(34, 'The Girl With the Dragon Tattoo', 19, 9, '2005', 'Harriet Vanger, a scion of one of Sweden’s wealthiest families disappeared over forty years ago. All these years later, her aged uncle continues to seek the truth. He hires Mikael Blomkvist, a crusading journalist recently trapped by a libel conviction, to investigate. He is aided by the pierced and tattooed punk prodigy Lisbeth Salander. Together they tap into a vein of unfathomable iniquity and astonishing corruption.', 'book_images/62b15907254e3_thr girl with.jpg', 'pdfs/62b15907254ed_lms.pdf'),
(35, 'A Time to Kill', 20, 9, '1989', 'Before \"The Firm\" and \"The Pelican Brief\" made him a superstar, John Grisham wrote this riveting story of retribution and justice. In this searing courtroom drama, best-selling author John Grisham probes the savage depths of racial violence, as he delivers a compelling tale of uncertain justice in a small southern town, Clanton, Mississippi.', 'book_images/62b1593ab9443_a time to.jpg', 'pdfs/62b1593ab944a_lms.pdf'),
(36, 'The Perks of Being a Wallflower', 21, 7, '1999', 'Before \"The Firm\" and \"The Pelican Brief\" made him a superstar, John Grisham wrote this riveting story of retribution and justice. In this searing courtroom drama, best-selling author John Grisham probes the savage depths of racial violence, as he delivers a compelling tale of uncertain justice in a small southern town, Clanton, Mississippi.', 'book_images/62b1596cc1df3_the perks.jpg', 'pdfs/62b1596cc1dfa_lms.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(4, 'Adventure'),
(8, 'Biography'),
(7, 'Coming-of-age'),
(6, 'Satire'),
(5, 'Science Fiction'),
(9, 'Thriller'),
(3, 'Tragedy');

-- --------------------------------------------------------

--
-- Table structure for table `issued_books`
--

CREATE TABLE `issued_books` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_date` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `issued_books`
--

INSERT INTO `issued_books` (`id`, `book_id`, `user_id`, `issue_date`) VALUES
(9, 31, 2, '2022-07-05'),
(11, 32, 4, '2022-07-05'),
(12, 23, 4, '2022-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` text COLLATE utf8_bin NOT NULL,
  `mobile` varchar(13) COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `is_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `address`, `is_admin`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '9800000000', 'Kathmandu', 1),
(2, 'UK Virus', 'uk@gmail.com', 'c2431a9d201559f8de1dcfb6a9dd3168', '98', '98\r\n', 0),
(4, 'k bhatt', 'k@gmail.com', '8ce4b16b22b58894aa86c421e8759df3', '9800', 'dkjfjk', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `issued_books`
--
ALTER TABLE `issued_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_id` (`book_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `issued_books`
--
ALTER TABLE `issued_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `issued_books`
--
ALTER TABLE `issued_books`
  ADD CONSTRAINT `issued_books_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issued_books_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
