-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 15 Maj 2024, 12:55
-- Wersja serwera: 10.5.15-MariaDB-0+deb11u1
-- Wersja PHP: 7.3.33-7+0~20220929.100+debian11~1.gbpdb2e49

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `db_f11943`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sentences`
--

CREATE TABLE `sentences` (
  `sentence_id` int(10) NOT NULL,
  `word_id` int(10) NOT NULL,
  `sentence` varchar(255) NOT NULL,
  `translation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `sentences`
--

INSERT INTO `sentences` (`sentence_id`, `word_id`, `sentence`, `translation`) VALUES
(1, 1, 'The brush is on the table', 'Szczotka jest na stole'),
(2, 1, 'She forgot to buy a new brush', 'Ona zapomniała kupić nową szczotkę'),
(3, 2, 'He dropped a mug full of coffee', 'On upuścił kubek pełen kawy'),
(4, 2, 'I cannnot find my favorite mug', 'Nie mogę znaleźć mojego ulubionego kubka'),
(5, 3, 'Can you pass me the plate?', 'Czy możesz podać mi talerz?'),
(6, 3, 'The plate is dirty', 'Talerz jest brudny'),
(7, 4, 'I need a fork to eat the salad', 'Potrzebuję widelca, żeby zjeść sałatkę'),
(8, 4, 'The fork is on the floor', 'Widelec jest na podłodze'),
(9, 5, 'The knife is very sharp', 'Nóż jest bardzo ostry'),
(10, 5, 'She cut her finger with a knife', 'Ona skaleczyła się nożem'),
(11, 6, 'The spoon is in the drawer', 'Łyżka jest w szufladzie'),
(12, 6, 'I need a spoon to eat the soup', 'Potrzebuję łyżki, żeby zjeść zupę'),
(13, 7, 'The glass is empty', 'Szklanka jest pusta'),
(14, 7, 'He broke the glass', 'On stłukł szklankę'),
(15, 8, 'The jug is full of water', 'Dzbanek jest pełen wody'),
(16, 8, 'She poured the milk from the jug', 'Ona wylała mleko z dzbanka'),
(17, 9, 'The kettle is boiling', 'Czajnik się gotuje'),
(18, 9, 'I need a kettle to make tea', 'Potrzebuję czajnika, żeby zrobić herbatę'),
(19, 10, 'The pot is on the stove', 'Garnek jest na kuchence'),
(20, 10, 'She cooked a soup in the pot', 'Ona ugotowała zupę w garnku'),
(21, 11, 'The bowl is full of fruit', 'Miska jest pełna owoców'),
(22, 11, 'I need a bowl to eat the cereal', 'Potrzebuję miski, żeby zjeść płatki'),
(23, 12, 'The dog is barking', 'Pies szczeka'),
(24, 12, 'She has a big dog', 'Ona ma dużego psa'),
(25, 13, 'The cat is sleeping', 'Kot śpi'),
(26, 13, 'He is allergic to cats', 'On jest uczulony na koty'),
(27, 14, 'The horse is running', 'Koń biegnie'),
(28, 14, 'She has a white horse', 'Ona ma białego konia'),
(29, 15, 'The cow is eating grass', 'Krowa je trawę'),
(30, 15, 'He has a farm with cows', 'On ma farmę z krowami'),
(31, 16, 'The pig is rolling in the mud', 'Świnia toczy się w błocie'),
(32, 16, 'She has a pig as a pet', 'Ona ma świnie jako zwierzę domowe'),
(33, 17, 'The sheep is grazing', 'Owca pasie się'),
(34, 17, 'He has a sheep farm', 'On ma farmę owiec'),
(35, 18, 'The goat is climbing the tree', 'Koza wdrapuje się na drzewo'),
(36, 18, 'She has a goat in her garden', 'Ona ma kozę w swoim ogrodzie'),
(37, 19, 'The chicken is laying eggs', 'Kura składa jaja'),
(38, 19, 'Chickens are running around the yard', 'Kury biegają po podwórku'),
(39, 20, 'The duck is swimming in the pond', 'Kaczka pływa w stawie'),
(40, 20, 'She has a duck as a pet', 'Ona ma kaczkę jako zwierzę domowe'),
(41, 21, 'The goose is flying south', 'Gęś leci na południe'),
(42, 21, 'He has a goose farm', 'On ma farmę gęsi'),
(43, 22, 'The turkey is eating corn', 'Indyk je kukurydzę'),
(44, 22, 'She has a turkey for Thanksgiving', 'Ona ma indyka na Święto Dziękczynienia'),
(45, 23, 'The rabbit is hopping', 'Królik skacze'),
(46, 23, 'He has a rabbit as a pet', 'On ma królika jako zwierzę domowe'),
(47, 24, 'The mouse is hiding', 'Mysz się ukrywa'),
(48, 24, 'She is afraid of mice', 'Ona boi się myszy'),
(49, 25, 'The rat is gnawing on the wood', 'Szczur gryzie drewno'),
(50, 25, 'He has a rat in his basement', 'On ma szczura w swoim piwnicy'),
(51, 26, 'The hamster is running in the wheel', 'Chomik biega w kole'),
(52, 26, 'She has a hamster in a cage', 'Ona ma chomika w klatce'),
(53, 27, 'The octopus is swimming in the ocean', 'Ośmiornica pływa w oceanie'),
(54, 27, 'I tried octopus for the first time', 'Pierwszy raz spróbowałem ośmiornicy'),
(55, 28, 'The spider is spinning a web', 'Pająk tka sieć'),
(56, 28, 'She is afraid of spiders', 'Ona boi się pająków'),
(57, 29, 'The scorpion is hiding in the sand', 'Skorpion ukrywa się w piasku'),
(58, 29, 'He has a scorpion as a pet', 'On ma skorpiona jako zwierzę domowe'),
(59, 30, 'The snake is slithering on the ground', 'Wąż pełza po ziemi'),
(60, 30, 'She is afraid of snakes', 'Ona boi się węży'),
(61, 31, 'The lizard is sunbathing on the rock', 'Jaszczurka opala się na skale'),
(62, 31, 'He has a lizard in a terrarium', 'On ma jaszczurkę w terrarium'),
(63, 32, 'The frog is croaking', 'Żaba rechocze'),
(64, 32, 'She got scared of a frog', 'Ona przestraszyła się żaby'),
(65, 33, 'The turtle is swimming in the pond', 'Żółw pływa w stawie'),
(66, 33, 'Turtles have hard shells', 'Zółwie mają twarde skorupy'),
(67, 34, 'The crocodile is lurking in the water', 'Krokodyl czai się w wodzie'),
(68, 34, 'She saw a crocodile in the river', 'Ona zobaczyła krokodyla w rzece'),
(69, 35, 'The elephant is eating leaves', 'Słoń je liście'),
(70, 35, 'Slonie sa największymi zwierzętami lądowymi', 'Elephants are the largest land animals'),
(71, 36, 'The lion is roaring', 'Lew ryczy'),
(72, 36, 'She saw a lion in the zoo', 'Ona zobaczyła lwa w zoo'),
(73, 37, 'The teacher is explaining the lesson', 'Nauczyciel wyjaśnia lekcję'),
(74, 37, 'She is a teacher at the local school', 'Ona jest nauczycielką w lokalnej szkole'),
(75, 38, 'The doctor is examining the patient', 'Lekarz bada pacjenta'),
(76, 38, 'The doctor is not available right now', 'Lekarz jest teraz niedostępny'),
(77, 39, 'The nurse is taking care of the patient', 'Pielęgniarka opiekuje się pacjentem'),
(78, 39, 'The nurse is on a break', 'Pielęgniarka jest na przerwie'),
(79, 40, 'The policeman is directing traffic', 'Policjant kieruje ruchem'),
(80, 40, 'The policeman is writing a ticket', 'Policjant wystawia mandat'),
(81, 41, 'The firefighter is putting out the fire', 'Strażak gasi pożar'),
(82, 41, 'The firefighter is a hero', 'Strażak to bohater'),
(83, 42, 'The cook is preparing the meal', 'Kucharz przygotowuje posiłek'),
(84, 42, 'The cook is a master chef', 'Kucharz to mistrz kuchni'),
(85, 43, 'The waiter is serving the food', 'Kelner podaje jedzenie'),
(86, 43, 'The waiter is taking orders', 'Kelner przyjmuje zamówienia'),
(87, 44, 'The driver is driving the bus', 'Kierowca prowadzi autobus'),
(88, 44, 'The driver is waiting for the passengers', 'Kierowca czeka na pasażerów'),
(89, 45, 'The pilot is flying the plane', 'Pilot pilotuje samolot'),
(90, 45, 'The pilot is checking the weather', 'Pilot sprawdza pogodę'),
(91, 46, 'The sailor is steering the ship', 'Żeglarz steruje statkiem'),
(92, 46, 'The sailor is raising the sails', 'Żeglarz podnosi żagle'),
(93, 47, 'The soldier is marching in formation', 'Żołnierz maszeruje w szyku'),
(94, 47, 'The soldier is saluting the flag', 'Żołnierz salutuje flagę'),
(95, 48, 'The singer is performing on stage', 'Piosenkarz występuje na scenie'),
(96, 48, 'The singer is recording a new album', 'Piosenkarz nagrywa nowy album'),
(97, 49, 'The actor is rehearsing the lines', 'Aktor odbywa próby kwestii'),
(98, 49, 'The actor is reading the script', 'Aktor czyta scenariusz'),
(99, 50, 'The painter is painting a landscape', 'Malarz maluje pejzaż'),
(100, 50, 'The painter is using a paint brush', 'Malarz używa pędzla'),
(101, 51, 'The writer is working on a new book', 'Pisarz pracuje nad nową książką'),
(102, 51, 'The writer is looking for inspiration', 'Pisarz szuka inspiracji'),
(103, 52, 'The journalist is interviewing the politician', 'Dziennikarz przeprowadza wywiad z politykiem'),
(104, 52, 'The journalist is writing an article', 'Dziennikarz pisze artykuł'),
(105, 53, 'The photographer is taking pictures', 'Fotograf robi zdjęcia'),
(106, 53, 'The photographer is developing the film', 'Fotograf wywołuje film'),
(107, 54, 'The scientist is conducting an experiment', 'Naukowiec przeprowadza eksperyment'),
(108, 54, 'The scientist is making a discovery', 'Naukowiec dokonuje odkrycia'),
(109, 55, 'The engineer is designing a new bridge', 'Inżynier projektuje nowy most'),
(110, 55, 'The engineer is building a prototype', 'Inżynier buduje prototyp'),
(111, 56, 'The mechanic is fixing the car', 'Mechanik naprawia samochód'),
(112, 56, 'The mechanic is changing the oil', 'Mechanik wymienia olej'),
(113, 57, 'The electrician is installing the wiring', 'Elektryk instaluje instalację elektryczną'),
(114, 57, 'The electrician is repairing the circuit', 'Elektryk naprawia obwód'),
(115, 58, 'The plumber is fixing the leaky pipe', 'Hydraulik naprawia przeciekającą rurę'),
(116, 58, 'The plumber is unclogging the drain', 'Hydraulik odblokowuje odpływ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'tomasznowak', 'tomasznowak@poczta.pl', 'Passwd123'),
(2, 'kamilkowalski', 'kamil.kowal@poczta.pl', 'Passwd123');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `words`
--

CREATE TABLE `words` (
  `word_id` int(10) NOT NULL,
  `word` varchar(50) NOT NULL,
  `translation` varchar(50) NOT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `words`
--

INSERT INTO `words` (`word_id`, `word`, `translation`, `category`) VALUES
(1, 'brush', 'szczotka', 'thing'),
(2, 'mug', 'kubek', 'thing'),
(3, 'plate', 'talerz', 'thing'),
(4, 'fork', 'widelec', 'thing'),
(5, 'knife', 'nóż', 'thing'),
(6, 'spoon', 'łyżka', 'thing'),
(7, 'glass', 'szklanka', 'thing'),
(8, 'jug', 'dzbanek', 'thing'),
(9, 'kettle', 'czajnik', 'thing'),
(10, 'pot', 'garnek', 'thing'),
(11, 'bowl', 'miska', 'thing'),
(12, 'dog', 'pies', 'animal'),
(13, 'cat', 'kot', 'animal'),
(14, 'horse', 'koń', 'animal'),
(15, 'cow', 'krowa', 'animal'),
(16, 'pig', 'świnia', 'animal'),
(17, 'sheep', 'owca', 'animal'),
(18, 'goat', 'koza', 'animal'),
(19, 'chicken', 'kurczak', 'animal'),
(20, 'duck', 'kaczka', 'animal'),
(21, 'goose', 'gęś', 'animal'),
(22, 'turkey', 'indyk', 'animal'),
(23, 'rabbit', 'królik', 'animal'),
(24, 'mouse', 'mysz', 'animal'),
(25, 'rat', 'szczur', 'animal'),
(26, 'hamster', 'chomik', 'animal'),
(27, 'octopus', 'ośmiornica', 'animal'),
(28, 'spider', 'pająk', 'animal'),
(29, 'scorpion', 'skorpion', 'animal'),
(30, 'snake', 'wąż', 'animal'),
(31, 'lizard', 'jaszczurka', 'animal'),
(32, 'frog', 'żaba', 'animal'),
(33, 'turtle', 'żółw', 'animal'),
(34, 'crocodile', 'krokodyl', 'animal'),
(35, 'elephant', 'słoń', 'animal'),
(36, 'lion', 'lew', 'animal'),
(37, 'teacher', 'nauczyciel', 'job'),
(38, 'doctor', 'lekarz', 'job'),
(39, 'nurse', 'pielęgniarka', 'job'),
(40, 'policeman', 'policjant', 'job'),
(41, 'firefighter', 'strażak', 'job'),
(42, 'cook', 'kucharz', 'job'),
(43, 'waiter', 'kelner', 'job'),
(44, 'driver', 'kierowca', 'job'),
(45, 'pilot', 'pilot', 'job'),
(46, 'sailor', 'żeglarz', 'job'),
(47, 'soldier', 'żołnierz', 'job'),
(48, 'singer', 'piosenkarz', 'job'),
(49, 'actor', 'aktor', 'job'),
(50, 'painter', 'malarz', 'job'),
(51, 'writer', 'pisarz', 'job'),
(52, 'journalist', 'dziennikarz', 'job'),
(53, 'photographer', 'fotograf', 'job'),
(54, 'scientist', 'naukowiec', 'job'),
(55, 'engineer', 'inżynier', 'job'),
(56, 'mechanic', 'mechanik', 'job'),
(57, 'electrician', 'elektryk', 'job'),
(58, 'plumber', 'hydraulik', 'job');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `sentences`
--
ALTER TABLE `sentences`
  ADD PRIMARY KEY (`sentence_id`),
  ADD KEY `word_id` (`word_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeksy dla tabeli `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`word_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `sentences`
--
ALTER TABLE `sentences`
  MODIFY `sentence_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `words`
--
ALTER TABLE `words`
  MODIFY `word_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `sentences`
--
ALTER TABLE `sentences`
  ADD CONSTRAINT `sentences_ibfk_1` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
