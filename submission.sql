/*
 * CSCI 23200 - Alvin Lam
 * KADE - Khinshan Khan, Adeeb Rahman, Darren Liang, Emily Fang
 * Idea - Anime Tracker
 */

/* Part 1: Table Creation */
CREATE TABLE users(
  user_id INTEGER PRIMARY KEY,
  username TEXT,
  email TEXT,
  password TEXT
);

CREATE TABLE anime(
  anime_id INTEGER PRIMARY KEY,
  title TEXT,
  description TEXT
);

CREATE TABLE genre(
  genre_id INTEGER PRIMARY KEY,
  genre TEXT
);

CREATE TABLE anime_list(
  user_id INTEGER REFERENCES users(user_id),
  anime_id INTEGER REFERENCES anime(anime_id),
  rating INTEGER
);

CREATE TABLE genre_to(
  anime_id INTEGER REFERENCES anime(anime_id),
  genre_id INTEGER REFERENCES genre(genre_id)
);

/* Part 2: Populate Tables via Insertion */

-- genre table

INSERT INTO genre VALUES (1, 'Action');
INSERT INTO genre VALUES (2, 'Adventure');
INSERT INTO genre VALUES (3, 'Comedy');
INSERT INTO genre VALUES (4, 'Drama');
INSERT INTO genre VALUES (5, 'Fantasy');
INSERT INTO genre VALUES (6, 'Game');
INSERT INTO genre VALUES (7, 'Historical');
INSERT INTO genre VALUES (8, 'Horror');
INSERT INTO genre VALUES (9, 'Isekai');
INSERT INTO genre VALUES (10, 'Magic');
INSERT INTO genre VALUES (11, 'Martial Arts');
INSERT INTO genre VALUES (12, 'Mecha');
INSERT INTO genre VALUES (13, 'Music');
INSERT INTO genre VALUES (14, 'Mystery');
INSERT INTO genre VALUES (15, 'Psychological');
INSERT INTO genre VALUES (16, 'Romance');
INSERT INTO genre VALUES (17, 'Samurai');
INSERT INTO genre VALUES (18, 'School');
INSERT INTO genre VALUES (19, 'Sci-Fi');
INSERT INTO genre VALUES (20, 'Seinen');
INSERT INTO genre VALUES (21, 'Shoujo');
INSERT INTO genre VALUES (22, 'Shounen');
INSERT INTO genre VALUES (23, 'Slice of Life');
INSERT INTO genre VALUES (24, 'Space');
INSERT INTO genre VALUES (25, 'Sports');
INSERT INTO genre VALUES (26, 'Super Power');
INSERT INTO genre VALUES (27, 'Supernatural');
INSERT INTO genre VALUES (28, 'Thriller');
INSERT INTO genre VALUES (29, 'Vampire');

-- anime table

INSERT INTO anime VALUES (1,'3-gatsu no Lion', 'Rei Kiriyama is an extraordinary shogi player. Among the few elites to have gone professional as a middle school student, he is considered a genius. But what lies behind his prodigious facade is a teenage boy who suffers immense pressure from both his family, and from the high expectations from the shogi community. Rei moves out to live a more independent life away from his family, but his unorganized lifestyle and unsociable personality show no signs of improvement. However, in a twist of fate that will prove to be a turning point in his life, Rei then encounters the Kawamoto sisters—the motherly Akari, the passionate Hinata, and the energetic Momo—who take great care of him. 3-gatsu no Lion tells the story of Rei as he reshapes his melancholic life and picks up the courage to begin facing the problems he evaded during his past.');
INSERT INTO anime VALUES (2, 'Houseki no Kuni', 'In the mysterious future, crystalline organisms called Gems inhabit a world that has been destroyed by six meteors. Each Gem is assigned a role in order to fight against the Lunarians, a species who attacks them in order to shatter their bodies and use them as decorations.Phosphophyllite, also known as Phos, is a young and fragile Gem who dreams of helping their friends in the war effort. Instead, they are told to compile an encyclopedia because of their delicate condition. After begrudgingly embarking on this task, Phos meets Cinnabar, an intelligent gem who has been relegated to patrolling the isolated island at night because of the corrosive poison their body creates. After seeing how unhappy Cinnabar is, Phos decides to find a role that both of the rejected Gems can enjoy. Houseki no Kuni follows Phos'' efforts to be useful and protect their fellow Gems.');
INSERT INTO anime VALUES (3, 'Haikyuu!!', 'Inspired after watching a volleyball ace nicknamed "Little Giant" in action, small-statured Shouyou Hinata revives the volleyball club at his middle school. The newly-formed team even makes it to a tournament; however, their first match turns out to be their last when they are brutally squashed by the "King of the Court," Tobio Kageyama. Hinata vows to surpass Kageyama, and so after graduating from middle school, he joins Karasuno High School''s volleyball team—only to find that his sworn rival, Kageyama, is now his teammate. Thanks to his short height, Hinata struggles to find his role on the team, even with his superior jumping power. Surprisingly, Kageyama has his own problems that only Hinata can help with, and learning to work together appears to be the only way for the team to be successful. Based on Haruichi Furudate''s popular shounen manga of the same name, Haikyuu!! is an exhilarating and emotional sports comedy following two determined athletes as they attempt to patch a heated rivalry in order to make their high school volleyball team the best in Japan.');
INSERT INTO anime VALUES (4, 'Detective Conan', 'Shinichi Kudou, a high school student of astounding talent in detective work, is well known for having solved several challenging cases. One day, when Shinichi spots two suspicious men and decides to follow them, he inadvertently becomes witness to a disturbing illegal activity. Unfortunately, he is caught in the act, so the men dose him with an experimental drug formulated by their criminal organization, leaving him to his death. However, to his own astonishment, Shinichi lives to see another day, but now in the body of a seven-year-old child. Perfectly preserving his original intelligence, he hides his real identity from everyone, including his childhood friend Ran Mouri and her father, private detective Kogorou Mouri. To this end, he takes on the alias of Conan Edogawa, inspired by the mystery writers Arthur Conan Doyle and Ranpo Edogawa. Detective Conan follows Shinichi who, as Conan, starts secretly solving the senior Mouri''s cases from behind the scenes with his still exceptional sleuthing skills, while covertly investigating the organization responsible for his current state, hoping to reverse the drug''s effects someday.');
INSERT INTO anime VALUES (5, 'One Piece', 'Gol D. Roger was known as the "Pirate King," the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King. Enter Monkey D. Luffy, a 17-year-old boy who defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate ransacking villages for fun, Luffy’s reason for being a pirate is one of pure wonder: the thought of an exciting adventure that leads him to intriguing people and ultimately, the promised treasure. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach the most coveted of all fortunes—One Piece.');
INSERT INTO anime VALUES (6, 'Beyond the Boundary', 'The dark fantasy follows a high school sophomore named Akihito Kanbara. Although the boy appears human, he is half youmu and invulnerable to wounds because he can heal quickly. One day, Akihito meets freshman Mirai Kuriyama when it seems she is about to jump from the school rooftop. Mirai is isolated because of her ability to manipulate blood, which is unique even among members of the spirit world. Disturbing events begin to unfold after Akihito saves Mirai.');
INSERT INTO anime VALUES (7, 'D.Gray-man', 'Allen Walker, a young man with a cursed eye, lives to destroy a weapon known as Akuma. These weapons created by the Milleneum Earl are sent out by his command to purge the world from humans. Allen Walker uses an anti-akuma weapon, Innocence, to counter the Earl''s attempts at destroying humanity. He travels to the Black Order by his mentor''s directions. There he meets with others who also fight against the Milleneum Earl''s plans. But more questions start to appear as Allen and his friends move further along to reach their goal. And these questions that seem to connect to Allen''s past.');
INSERT INTO anime VALUES (8, 'Cowboy Bebop', 'Spike Spiegel, a bounty Hunter with a dark past, lives on bounty to bounty, barely making it each time, or not making it at all. His partners Jet Black, Faye Valentine, Ed and Ein the dog all help him in his adventures from planet to planet.');
INSERT INTO anime VALUES (9, 'No Game No Life', 'Genius gamer siblings (plus being NEET & hikikomori) Sora and Shiro are known as the undefeatable "__" (blank). Their talents and skills are so good they are considered as urban legend. One day, a young boy named Teto appears before them, claiming to be the "God" of another dimension where Sora and Shiro are summoned to, in which no violence is allowed and everything is decided by a game. Of the 16 different races residing in this world, "Humanity" is the weakest. After having the vast majority of their lands captured by the other races and being driven to the brink of extinction, Sora and Shiro challenge these one-of-a-kind battles of the intellectual powers in order to save Humanity.');
INSERT INTO anime VALUES (10, 'One Outs', 'Hiromichi Kojima, the star batter of the Lycaons, heads to Okinawa to train and bring himself out of a slump. There, he meets Toua Tokuchi, a 134 km/h (83 mph) pitcher and the undisputed king of a gambling form of baseball called "One Out". At Kojima''s urging, Tokuchi signs up with the Lycaons. His contract differs form the usual, though, in that he gets 5,000,000 yen for every out he pitches, but loses 50,000,000 yen for every point he gives up.');
INSERT INTO anime VALUES (11, 'Psycho-Pass', 'Justice, and the enforcement of it, has changed. In the 22nd century, Japan enforces the Sibyl System, an objective means of determining the threat level of each citizen by examining their mental state for signs of criminal intent, known as their Psycho-Pass. Inspectors uphold the law by subjugating, often with lethal force, anyone harboring the slightest ill-will; alongside them are Enforcers, jaded Inspectors that have become latent criminals, granted relative freedom in exchange for carrying out the Inspectors'' dirty work. Into this world steps Akane Tsunemori, a young woman with an honest desire to uphold justice. However, as she works alongside veteran Enforcer Shinya Kougami, she soon learns that the Sibyl System''s judgments are not as perfect as her fellow Inspectors assume. With everything she has known turned on its head, Akane wrestles with the question of what justice truly is, and whether it can be upheld through the use of a system that may already be corrupt.');
INSERT INTO anime VALUES (12, 'Wotakoi: Love is Hard for Otaku', 'Having slept through all four of her alarms, the energetic Narumi Momose finds herself running late for her first day of work at a new office. As she races to catch her train, she makes a promise to herself that none of her coworkers will find out about her dark secret: that she is an otaku and a fujoshi. Her plan goes instantly awry, though, when she runs into Hirotaka Nifuji, an old friend from middle school. Although she tries to keep her secret by inviting him out for drinks after work, her cover is blown when he casually asks her whether or not she will be attending the upcoming Summer Comiket. Luckily for her, the only witnesses—Hanako Koyanagi and Tarou Kabakura—are otaku as well. Later that night, the pair go out for drinks so that they can catch up after all the years apart. After Narumi complains about her previous boyfriend breaking up with her because he refused to date a fujoshi, Hirotaka suggests that she try dating a fellow otaku, specifically himself. He makes a solemn promise to always be there for her, to support her, and to help her farm for rare drops in Monster Hunter. Blown away by the proposal, Narumi agrees immediately. Thus the two otaku start dating, and their adorably awkward romance begins.');
INSERT INTO anime VALUES (13, 'Vinland Saga', 'Young Thorfinn grew up listening to the stories of old sailors that had traveled the ocean and reached the place of legend, Vinland. It''s said to be warm and fertile, a place where there would be no need for fighting—not at all like the frozen village in Iceland where he was born, and certainly not like his current life as a mercenary. War is his home now. Though his father once told him, "You have no enemies, nobody does. There is nobody who it''s okay to hurt," as he grew, Thorfinn knew that nothing was further from the truth. The war between England and the Danes grows worse with each passing year. Death has become commonplace, and the viking mercenaries are loving every moment of it. Allying with either side will cause a massive swing in the balance of power, and the vikings are happy to make names for themselves and take any spoils they earn along the way. Among the chaos, Thorfinn must take his revenge and kill Askeladd, the man who murdered his father. The only paradise for the vikings, it seems, is the era of war and death that rages on.');
INSERT INTO anime VALUES (14, 'Yu Yu Hakusho: Ghost Files', 'One fateful day, Yuusuke Urameshi, a 14-year-old delinquent with a dim future, gets a miraculous chance to turn it all around when he throws himself in front of a moving car to save a young boy. His ultimate sacrifice is so out of character that the authorities of the spirit realm are not yet prepared to let him pass on. Koenma, heir to the throne of the spirit realm, offers Yuusuke an opportunity to regain his life through completion of a series of tasks. With the guidance of the death god Botan, he is to thwart evil presences on Earth as a Spirit Detective. To help him on his venture, Yuusuke enlists ex-rival Kazuma Kuwabara, and two demons, Hiei and Kurama, who have criminal pasts. Together, they train and battle against enemies who would threaten humanity''s very existence.');
INSERT INTO anime VALUES (15, 'Code Geass: Lelouch of the Rebellion', 'In the year 2010, the Holy Empire of Britannia is establishing itself as a dominant military nation, starting with the conquest of Japan. Renamed to Area 11 after its swift defeat, Japan has seen significant resistance against these tyrants in an attempt to regain independence. Lelouch Lamperouge, a Britannian student, unfortunately finds himself caught in a crossfire between the Britannian and the Area 11 rebel armed forces. He is able to escape, however, thanks to the timely appearance of a mysterious girl named C.C., who bestows upon him Geass, the "Power of Kings." Realizing the vast potential of his newfound "power of absolute obedience," Lelouch embarks upon a perilous journey as the masked vigilante known as Zero, leading a merciless onslaught against Britannia in order to get revenge once and for all.');
INSERT INTO anime VALUES (16, 'Yakusoku no Neverland', 'Surrounded by a forest and a gated entrance, the Grace Field House is inhabited by orphans happily living together as one big family, looked after by their "Mama," Isabella. Although they are required to take tests daily, the children are free to spend their time as they see fit, usually playing outside, as long as they do not venture too far from the orphanage—a rule they are expected to follow no matter what. However, all good times must come to an end, as every few months, a child is adopted and sent to live with their new family... never to be heard from again. However, the three oldest siblings have their suspicions about what is actually happening at the orphanage, and they are about to discover the cruel fate that awaits the children living at Grace Field, including the twisted nature of their beloved Mama.');
INSERT INTO anime VALUES (17, 'Fullmetal Alchemist: Brotherhood', 'Alchemy is bound by this Law of Equivalent Exchange—something the young brothers Edward and Alphonse Elric only realize after attempting human transmutation: the one forbidden act of alchemy. They pay a terrible price for their transgression—Edward loses his left leg, Alphonse his physical body. It is only by the desperate sacrifice of Edward''s right arm that he is able to affix Alphonse''s soul to a suit of armor. Devastated and alone, it is the hope that they would both eventually return to their original bodies that gives Edward the inspiration to obtain metal limbs called "automail" and become a state alchemist, the Fullmetal Alchemist. Three years of searching later, the brothers seek the Philosopher'' Stone, a mythical relic that allows an alchemist to overcome the Law of Equivalent Exchange. Even with military allies Colonel Roy Mustang, Lieutenant Riza Hawkeye, and Lieutenant Colonel Maes Hughes on their side, the brothers find themselves caught up in a nationwide conspiracy that leads them not only to the true nature of the elusive Philosopher''s Stone, but their country''s murky history as well. In between finding a serial killer and racing against time, Edward and Alphonse must ask themselves if what they are doing will make them human again... or take away their humanity.');
INSERT INTO anime VALUES(18, 'Kono Oto Tomare!', 'Gen Kudou, a koto maker, believes that his delinquent grandson Chika would never understand the profoundness of the traditional musical instrument. In an attempt to make up for his naivety and understand the words of his late grandfather, Chika tries to join the Tokise High School Koto Club. Even though the club is in dire need of members, new club president Takezou Kurata is unwilling to easily accept Chika''s application due to his bad reputation. Nonetheless, after seeing Chika''s seriousness and enthusiasm, Takezou allows the problem child to join, along with koto prodigy Satowa Houzuki and three of Chika''s energetic friends. Kono Oto Tomare! follows the merry band of musicians as they aspire to play at the national competition.');
INSERT INTO anime VALUES(19, 'JoJo no Kimyou na Bouken', 'In 1868, Dario Brando saves the life of an English nobleman, George Joestar. By taking in Dario''s son Dio when the boy becomes fatherless, George hopes to repay the debt he owes to his savior. However Dio, unsatisfied with his station in life, aspires to seize the Joestar house for his own. Wielding an Aztec stone mask with supernatural properties, he sets out to destroy George and his son, Jonathan "JoJo" Joestar, and triggers a chain of events that will continue to echo through the years to come. Half a century later, in New York City, Jonathan''s grandson Joseph Joestar discovers the legacy his grandfather left for him. When an archeological dig unearths the truth behind the stone mask, he realizes that he is the only one who can defeat the Pillar Men, mystical beings of immeasurable power who inadvertently began everything.');
INSERT INTO anime VALUES(20, 'Fruits Basket', 'Tooru Honda has always been fascinated by the story of the Chinese Zodiac that her beloved mother told her as a child. However, a sudden family tragedy changes her life, and subsequent circumstances leave her all alone. Tooru is now forced to live in a tent, but little does she know that her temporary home resides on the private property of the esteemed Souma family. Stumbling upon their home one day, she encounters Shigure, an older Souma cousin, and Yuki, the "prince" of her school. Tooru explains that she lives nearby, but the Soumas eventually discover her well-kept secret of being homeless when they see her walking back to her tent one night. Things start to look up for Tooru as they kindly offer to take her in after hearing about her situation. But soon after, she is caught up in a fight between Yuki and his hot-tempered cousin, Kyou. While trying to stop them, she learns that the Souma family has a well-kept secret of their own: whenever they are hugged by a member of the opposite sex, they transform into the animals of the Chinese Zodiac. With this new revelation, Tooru will find that living with the Soumas is an unexpected adventure filled with laughter and romance.');

-- genre_to table

-- 3-gatsu no Lion
INSERT INTO genre_to VALUES ( 1,  4); -- Drama
INSERT INTO genre_to VALUES ( 1,  6); -- Game
INSERT INTO genre_to VALUES ( 1, 20); -- Seinen
INSERT INTO genre_to VALUES ( 1, 23); -- Slice of Life

-- Houseki no Kuni
INSERT INTO genre_to VALUES ( 2,  1); -- Action
INSERT INTO genre_to VALUES ( 2,  4); -- Drama
INSERT INTO genre_to VALUES ( 2,  5); -- Fantasy
INSERT INTO genre_to VALUES ( 2, 14); -- Mystery
INSERT INTO genre_to VALUES ( 2, 20); -- Seinen

-- Haikyuu!!
INSERT INTO genre_to VALUES ( 3,  3); -- Comedy
INSERT INTO genre_to VALUES ( 3,  4); -- Drama
INSERT INTO genre_to VALUES ( 3, 18); -- School
INSERT INTO genre_to VALUES ( 3, 22); -- Shounen
INSERT INTO genre_to VALUES ( 3, 25); -- Sports

-- Detective Conan
INSERT INTO genre_to VALUES ( 4,  2); -- Adventure
INSERT INTO genre_to VALUES ( 4,  3); -- Comedy
INSERT INTO genre_to VALUES ( 4, 14); -- Mystery
INSERT INTO genre_to VALUES ( 4, 22); -- Shounen

-- One Piece
INSERT INTO genre_to VALUES ( 5,  1); -- Action
INSERT INTO genre_to VALUES ( 5,  2); -- Adventure
INSERT INTO genre_to VALUES ( 5,  3); -- Comedy
INSERT INTO genre_to VALUES ( 5,  4); -- Drama
INSERT INTO genre_to VALUES ( 5,  5); -- Fantasy
INSERT INTO genre_to VALUES ( 5, 22); -- Shounen
INSERT INTO genre_to VALUES ( 5, 26); -- Super Power

-- Beyond the Boundary
INSERT INTO genre_to VALUES ( 6,  5); -- Fantasy
INSERT INTO genre_to VALUES ( 6, 23); -- Slice of Life
INSERT INTO genre_to VALUES ( 6, 27); -- Supernatural

-- D.Gray-man
INSERT INTO genre_to VALUES ( 7,  2); -- Adventure
INSERT INTO genre_to VALUES ( 7,  3); -- Comedy
INSERT INTO genre_to VALUES ( 7, 22); -- Shounen
INSERT INTO genre_to VALUES ( 7, 26); -- Super Power

-- Cowboy Bebop
INSERT INTO genre_to VALUES ( 8,  1); -- Action
INSERT INTO genre_to VALUES ( 8,  2); -- Adventure
INSERT INTO genre_to VALUES ( 8,  3); -- Comedy
INSERT INTO genre_to VALUES ( 8,  4); -- Drama
INSERT INTO genre_to VALUES ( 8, 19); -- Sci-Fi
INSERT INTO genre_to VALUES ( 8, 24); -- Space

-- No Game No Life
INSERT INTO genre_to VALUES ( 9,  2); -- Adventure
INSERT INTO genre_to VALUES ( 9,  3); -- Comedy
INSERT INTO genre_to VALUES ( 9,  5); -- Fantasy
INSERT INTO genre_to VALUES ( 9,  6); -- Game
INSERT INTO genre_to VALUES ( 9, 27); -- Supernatural

-- One Outs
INSERT INTO genre_to VALUES (10, 15); -- Psychological
INSERT INTO genre_to VALUES (10, 20); -- Seinen
INSERT INTO genre_to VALUES (10, 25); -- Sports


-- Psycho-Pass
INSERT INTO genre_to VALUES (11,  1); -- Action
INSERT INTO genre_to VALUES (11, 15); -- Psychological
INSERT INTO genre_to VALUES (11, 19); -- Sci-Fi

-- Wotakoi: Love is Hard for Otaku
INSERT INTO genre_to VALUES (12,  3); -- Comedy
INSERT INTO genre_to VALUES (12, 16); -- Romance
INSERT INTO genre_to VALUES (12, 23); -- Slice of Life

-- Vinland Saga
INSERT INTO genre_to VALUES (13,  1); -- Action
INSERT INTO genre_to VALUES (13,  2); -- Adventure
INSERT INTO genre_to VALUES (13,  4); -- Drama
INSERT INTO genre_to VALUES (13,  7); -- Historical
INSERT INTO genre_to VALUES (13, 20); -- Seinen

-- Yu Yu Hakusho: Ghost Files
INSERT INTO genre_to VALUES (14,  1); -- Action
INSERT INTO genre_to VALUES (14,  3); -- Comedy
INSERT INTO genre_to VALUES (14, 11); -- Martial Arts
INSERT INTO genre_to VALUES (14, 22); -- Shounen
INSERT INTO genre_to VALUES (14, 27); -- Supernatural

-- Code Geass: Lelouch of the Rebellion
INSERT INTO genre_to VALUES (15,  1); -- Action
INSERT INTO genre_to VALUES (15,  4); -- Drama
INSERT INTO genre_to VALUES (15, 12); -- Mecha
INSERT INTO genre_to VALUES (15, 18); -- School
INSERT INTO genre_to VALUES (15, 19); -- Sci-Fi
INSERT INTO genre_to VALUES (15, 26); -- Super Power

-- Yakusoku no Neverland
INSERT INTO genre_to VALUES (16,  8); -- Horror
INSERT INTO genre_to VALUES (16, 14); -- Mystery
INSERT INTO genre_to VALUES (16, 15); -- Psychological
INSERT INTO genre_to VALUES (16, 19); -- Sci-Fi
INSERT INTO genre_to VALUES (16, 22); -- Shounen
INSERT INTO genre_to VALUES (16, 28); -- Thriller

-- Fullmetal Alchemist: Brotherhood
INSERT INTO genre_to VALUES (17,  1); -- Action
INSERT INTO genre_to VALUES (17,  2); -- Adventure
INSERT INTO genre_to VALUES (17,  3); -- Comedy
INSERT INTO genre_to VALUES (17,  4); -- Drama
INSERT INTO genre_to VALUES (17,  5); -- Fantasy
INSERT INTO genre_to VALUES (17, 10); -- Magic
INSERT INTO genre_to VALUES (17, 22); -- Shounen

-- Kono Oto Tomare!
INSERT INTO genre_to VALUES (18,  4); -- Drama
INSERT INTO genre_to VALUES (18, 13); -- Music
INSERT INTO genre_to VALUES (18, 16); -- Romance
INSERT INTO genre_to VALUES (18, 18); -- School
INSERT INTO genre_to VALUES (18, 22); -- Shounen

-- JoJo no Kimyou na Bouken
INSERT INTO genre_to VALUES (19,  1); -- Action
INSERT INTO genre_to VALUES (19,  2); -- Adventure
INSERT INTO genre_to VALUES (19, 22); -- Shounen
INSERT INTO genre_to VALUES (19, 27); -- Supernatural
INSERT INTO genre_to VALUES (19, 29); -- Vampire

-- Fruits Basket
INSERT INTO genre_to VALUES (20,  3); -- Comedy
INSERT INTO genre_to VALUES (20,  4); -- Drama
INSERT INTO genre_to VALUES (20, 16); -- Romance
INSERT INTO genre_to VALUES (20, 21); -- Shoujo
INSERT INTO genre_to VALUES (20, 23); -- Slice of Life
INSERT INTO genre_to VALUES (20, 27); -- Supernatural

-- users table

INSERT INTO users VALUES (1, 'cake', 'cake@email.com', 'cakesaregreat');
INSERT INTO users VALUES (2, 'fruittart', 'ftart@email.com', 'ihatedurian123');
INSERT INTO users VALUES (3, 'pretzel', 'pretzel@email.com', 'ilovepretzels548');
INSERT INTO users VALUES (4, 'eaJPacman', 'eaJ@gmail.com', 'day6eaJ');
INSERT INTO users VALUES (5, 'sushi', 'sushi@yahoo.com', 'Salmon097');
INSERT INTO users VALUES (6, 'howardmarks', 'doyle07@ipyzqshop.com', '3!X9=;z8lGHDF!rab+_');
INSERT INTO users VALUES (7, 'sheridankihn', 'hirthe.ashton@maccholnee.tk', 'qPCeUQz9g!7,OYp');
INSERT INTO users VALUES (8, 'serenaklocko', 'muhammad03@triumphlotto.com', '[G5?bB+;5M2@LR');
INSERT INTO users VALUES (9, 'lindsay31', 'reed47@civoo.com', '\G8P_K{y$AN$.');
INSERT INTO users VALUES (10, 'skye76', 'rodriguez.isabe@coupor.com', 'x:3o%z2TRq[p+.f');
INSERT INTO users VALUES (11, 'hollie92', 'jenkins.heaven@ipyzqshop.com', 'Q{XPD.gy,lw2@yT{');
INSERT INTO users VALUES (12, 'lenny01', 'schmidt.larry@rackabzar.com', ']oLVhXBC[H2h?lf');
INSERT INTO users VALUES (13, 'walton55', 'augusta.smith@maccholnee.tk', '3-q%t-s37BPF(Ku#&');
INSERT INTO users VALUES (14, 'pwilkinson', 'mozell24@rackabzar.com', '6U&M=";B/dp');
INSERT INTO users VALUES (15, 'jazmyndietrich', 'jimmie.johnston@oisg.org', 'lzb]S.,{v7H8RyWBva');
INSERT INTO users VALUES (16, 'armando32', 'tavares.breiten@nvapplelab.com', 'U{8jO-9]Zf-~k');
INSERT INTO users VALUES (17, 'fschaefer', 'veronica53@rackabzar.com', 'VNs(ImR+ki+j}EqZC+');
INSERT INTO users VALUES (18, 'adonnelly', 'sjacobi@trustedchest.site', 'Y,p[rr1ZjBBP7FN$4,r');
INSERT INTO users VALUES (19, 'devonpfannersti', 'rice.ramon@nhmicrosoft.com', 'ef},4;U:`G6EPO_');
INSERT INTO users VALUES (20, 'anika42', 'ethyl74@bahistek52.com', 'CN\%@:ev6&M');

-- anime_list table
INSERT INTO anime_list VALUES (1, 8, 5);
INSERT INTO anime_list VALUES (1, 4, 9);
INSERT INTO anime_list VALUES (1, 16, 7);
INSERT INTO anime_list VALUES (1, 19, 2);
INSERT INTO anime_list VALUES (1, 10, 9);
INSERT INTO anime_list VALUES (2, 15, 8);
INSERT INTO anime_list VALUES (2, 6, 8);
INSERT INTO anime_list VALUES (2, 7, 6);
INSERT INTO anime_list VALUES (2, 3, 2);
INSERT INTO anime_list VALUES (2, 11, 2);
INSERT INTO anime_list VALUES (2, 20, 3);
INSERT INTO anime_list VALUES (2, 16, 9);
INSERT INTO anime_list VALUES (2, 4, 9);
INSERT INTO anime_list VALUES (2, 17, 10);
INSERT INTO anime_list VALUES (2, 14, 4);
INSERT INTO anime_list VALUES (2, 1, 7);
INSERT INTO anime_list VALUES (2, 10, 7);
INSERT INTO anime_list VALUES (2, 19, 7);
INSERT INTO anime_list VALUES (2, 8, 3);
INSERT INTO anime_list VALUES (2, 2, 3);
INSERT INTO anime_list VALUES (2, 5, 7);
INSERT INTO anime_list VALUES (2, 9, 8);
INSERT INTO anime_list VALUES (3, 17, 3);
INSERT INTO anime_list VALUES (3, 10, 9);
INSERT INTO anime_list VALUES (3, 8, 2);
INSERT INTO anime_list VALUES (3, 12, 3);
INSERT INTO anime_list VALUES (3, 4, 4);
INSERT INTO anime_list VALUES (3, 9, 1);
INSERT INTO anime_list VALUES (3, 2, 8);
INSERT INTO anime_list VALUES (3, 1, 9);
INSERT INTO anime_list VALUES (3, 18, 8);
INSERT INTO anime_list VALUES (4, 12, 3);
INSERT INTO anime_list VALUES (4, 4, 2);
INSERT INTO anime_list VALUES (4, 18, 8);
INSERT INTO anime_list VALUES (5, 10, 3);
INSERT INTO anime_list VALUES (5, 20, 10);
INSERT INTO anime_list VALUES (5, 3, 9);
INSERT INTO anime_list VALUES (5, 14, 2);
INSERT INTO anime_list VALUES (6, 5, 6);
INSERT INTO anime_list VALUES (6, 20, 8);
INSERT INTO anime_list VALUES (6, 11, 2);
INSERT INTO anime_list VALUES (6, 15, 8);
INSERT INTO anime_list VALUES (6, 8, 7);
INSERT INTO anime_list VALUES (6, 18, 10);
INSERT INTO anime_list VALUES (6, 10, 5);
INSERT INTO anime_list VALUES (6, 13, 4);
INSERT INTO anime_list VALUES (6, 19, 2);
INSERT INTO anime_list VALUES (6, 4, 7);
INSERT INTO anime_list VALUES (6, 17, 2);
INSERT INTO anime_list VALUES (6, 1, 6);
INSERT INTO anime_list VALUES (6, 16, 8);
INSERT INTO anime_list VALUES (6, 7, 5);
INSERT INTO anime_list VALUES (7, 4, 6);
INSERT INTO anime_list VALUES (7, 13, 6);
INSERT INTO anime_list VALUES (7, 10, 2);
INSERT INTO anime_list VALUES (7, 17, 7);
INSERT INTO anime_list VALUES (7, 8, 10);
INSERT INTO anime_list VALUES (7, 1, 9);
INSERT INTO anime_list VALUES (7, 20, 1);
INSERT INTO anime_list VALUES (7, 19, 7);
INSERT INTO anime_list VALUES (7, 2, 9);
INSERT INTO anime_list VALUES (7, 6, 2);
INSERT INTO anime_list VALUES (8, 6, 4);
INSERT INTO anime_list VALUES (8, 2, 1);
INSERT INTO anime_list VALUES (8, 13, 7);
INSERT INTO anime_list VALUES (8, 17, 2);
INSERT INTO anime_list VALUES (8, 14, 5);
INSERT INTO anime_list VALUES (8, 4, 3);
INSERT INTO anime_list VALUES (8, 7, 6);
INSERT INTO anime_list VALUES (8, 18, 6);
INSERT INTO anime_list VALUES (8, 11, 3);
INSERT INTO anime_list VALUES (8, 1, 10);
INSERT INTO anime_list VALUES (8, 8, 4);
INSERT INTO anime_list VALUES (8, 16, 8);
INSERT INTO anime_list VALUES (8, 5, 3);
INSERT INTO anime_list VALUES (8, 12, 5);
INSERT INTO anime_list VALUES (8, 3, 2);
INSERT INTO anime_list VALUES (8, 10, 7);
INSERT INTO anime_list VALUES (8, 19, 3);
INSERT INTO anime_list VALUES (9, 19, 3);
INSERT INTO anime_list VALUES (9, 17, 2);
INSERT INTO anime_list VALUES (9, 14, 6);
INSERT INTO anime_list VALUES (9, 2, 1);
INSERT INTO anime_list VALUES (9, 4, 10);
INSERT INTO anime_list VALUES (9, 9, 2);
INSERT INTO anime_list VALUES (9, 6, 10);
INSERT INTO anime_list VALUES (9, 3, 1);
INSERT INTO anime_list VALUES (9, 12, 4);
INSERT INTO anime_list VALUES (10, 3, 6);
INSERT INTO anime_list VALUES (10, 15, 1);
INSERT INTO anime_list VALUES (10, 10, 9);
INSERT INTO anime_list VALUES (10, 14, 9);
INSERT INTO anime_list VALUES (10, 7, 10);
INSERT INTO anime_list VALUES (10, 12, 4);
INSERT INTO anime_list VALUES (10, 2, 2);
INSERT INTO anime_list VALUES (10, 16, 4);
INSERT INTO anime_list VALUES (10, 11, 2);
INSERT INTO anime_list VALUES (10, 6, 5);
INSERT INTO anime_list VALUES (10, 20, 2);
INSERT INTO anime_list VALUES (10, 18, 10);
INSERT INTO anime_list VALUES (11, 7, 8);
INSERT INTO anime_list VALUES (11, 8, 10);
INSERT INTO anime_list VALUES (11, 10, 5);
INSERT INTO anime_list VALUES (11, 5, 7);
INSERT INTO anime_list VALUES (11, 20, 2);
INSERT INTO anime_list VALUES (11, 14, 9);
INSERT INTO anime_list VALUES (11, 15, 8);
INSERT INTO anime_list VALUES (11, 12, 8);
INSERT INTO anime_list VALUES (11, 2, 6);
INSERT INTO anime_list VALUES (11, 18, 3);
INSERT INTO anime_list VALUES (11, 11, 8);
INSERT INTO anime_list VALUES (11, 16, 6);
INSERT INTO anime_list VALUES (11, 19, 5);
INSERT INTO anime_list VALUES (11, 3, 3);
INSERT INTO anime_list VALUES (11, 13, 3);
INSERT INTO anime_list VALUES (11, 17, 9);
INSERT INTO anime_list VALUES (12, 14, 4);
INSERT INTO anime_list VALUES (12, 10, 3);
INSERT INTO anime_list VALUES (12, 1, 3);
INSERT INTO anime_list VALUES (12, 20, 1);
INSERT INTO anime_list VALUES (12, 2, 10);
INSERT INTO anime_list VALUES (12, 4, 7);
INSERT INTO anime_list VALUES (12, 5, 8);
INSERT INTO anime_list VALUES (12, 17, 1);
INSERT INTO anime_list VALUES (12, 8, 3);
INSERT INTO anime_list VALUES (12, 19, 3);
INSERT INTO anime_list VALUES (13, 1, 10);
INSERT INTO anime_list VALUES (13, 10, 9);
INSERT INTO anime_list VALUES (13, 15, 7);
INSERT INTO anime_list VALUES (13, 12, 10);
INSERT INTO anime_list VALUES (13, 14, 6);
INSERT INTO anime_list VALUES (13, 2, 9);
INSERT INTO anime_list VALUES (13, 7, 1);
INSERT INTO anime_list VALUES (13, 5, 2);
INSERT INTO anime_list VALUES (13, 16, 10);
INSERT INTO anime_list VALUES (13, 13, 2);
INSERT INTO anime_list VALUES (13, 9, 10);
INSERT INTO anime_list VALUES (13, 17, 4);
INSERT INTO anime_list VALUES (13, 3, 7);
INSERT INTO anime_list VALUES (13, 8, 6);
INSERT INTO anime_list VALUES (13, 4, 8);
INSERT INTO anime_list VALUES (13, 6, 8);
INSERT INTO anime_list VALUES (13, 19, 7);
INSERT INTO anime_list VALUES (13, 11, 6);
INSERT INTO anime_list VALUES (13, 18, 6);
INSERT INTO anime_list VALUES (13, 20, 3);
INSERT INTO anime_list VALUES (14, 12, 5);
INSERT INTO anime_list VALUES (14, 3, 3);
INSERT INTO anime_list VALUES (14, 1, 9);
INSERT INTO anime_list VALUES (14, 13, 5);
INSERT INTO anime_list VALUES (14, 15, 5);
INSERT INTO anime_list VALUES (14, 7, 1);
INSERT INTO anime_list VALUES (14, 5, 3);
INSERT INTO anime_list VALUES (14, 10, 9);
INSERT INTO anime_list VALUES (14, 17, 8);
INSERT INTO anime_list VALUES (14, 6, 10);
INSERT INTO anime_list VALUES (14, 16, 2);
INSERT INTO anime_list VALUES (14, 11, 8);
INSERT INTO anime_list VALUES (14, 8, 10);
INSERT INTO anime_list VALUES (14, 9, 2);
INSERT INTO anime_list VALUES (14, 4, 5);
INSERT INTO anime_list VALUES (14, 2, 9);
INSERT INTO anime_list VALUES (14, 14, 5);
INSERT INTO anime_list VALUES (14, 20, 5);
INSERT INTO anime_list VALUES (15, 16, 2);
INSERT INTO anime_list VALUES (15, 1, 1);
INSERT INTO anime_list VALUES (15, 5, 2);
INSERT INTO anime_list VALUES (15, 13, 10);
INSERT INTO anime_list VALUES (15, 20, 6);
INSERT INTO anime_list VALUES (15, 9, 6);
INSERT INTO anime_list VALUES (15, 19, 2);
INSERT INTO anime_list VALUES (15, 6, 5);
INSERT INTO anime_list VALUES (15, 4, 5);
INSERT INTO anime_list VALUES (16, 7, 7);
INSERT INTO anime_list VALUES (16, 19, 10);
INSERT INTO anime_list VALUES (16, 6, 9);
INSERT INTO anime_list VALUES (16, 13, 7);
INSERT INTO anime_list VALUES (16, 4, 8);
INSERT INTO anime_list VALUES (16, 11, 2);
INSERT INTO anime_list VALUES (16, 17, 3);
INSERT INTO anime_list VALUES (16, 5, 8);
INSERT INTO anime_list VALUES (16, 18, 9);
INSERT INTO anime_list VALUES (16, 10, 2);
INSERT INTO anime_list VALUES (17, 4, 1);
INSERT INTO anime_list VALUES (17, 5, 9);
INSERT INTO anime_list VALUES (17, 8, 5);
INSERT INTO anime_list VALUES (17, 17, 5);
INSERT INTO anime_list VALUES (17, 9, 4);
INSERT INTO anime_list VALUES (17, 1, 3);
INSERT INTO anime_list VALUES (17, 20, 3);
INSERT INTO anime_list VALUES (17, 19, 5);
INSERT INTO anime_list VALUES (17, 15, 6);
INSERT INTO anime_list VALUES (17, 13, 6);
INSERT INTO anime_list VALUES (17, 14, 10);
INSERT INTO anime_list VALUES (17, 11, 8);
INSERT INTO anime_list VALUES (17, 18, 2);
INSERT INTO anime_list VALUES (17, 6, 7);
INSERT INTO anime_list VALUES (17, 2, 2);
INSERT INTO anime_list VALUES (17, 10, 4);
INSERT INTO anime_list VALUES (17, 7, 1);
INSERT INTO anime_list VALUES (17, 16, 5);
INSERT INTO anime_list VALUES (18, 11, 7);
INSERT INTO anime_list VALUES (18, 1, 4);
INSERT INTO anime_list VALUES (18, 3, 5);
INSERT INTO anime_list VALUES (18, 7, 8);
INSERT INTO anime_list VALUES (18, 6, 9);
INSERT INTO anime_list VALUES (18, 15, 4);
INSERT INTO anime_list VALUES (18, 16, 8);
INSERT INTO anime_list VALUES (19, 9, 8);
INSERT INTO anime_list VALUES (19, 4, 5);
INSERT INTO anime_list VALUES (19, 16, 7);
INSERT INTO anime_list VALUES (19, 17, 10);
INSERT INTO anime_list VALUES (19, 8, 4);
INSERT INTO anime_list VALUES (19, 2, 4);
INSERT INTO anime_list VALUES (20, 18, 10);
INSERT INTO anime_list VALUES (20, 10, 4);
INSERT INTO anime_list VALUES (20, 8, 3);
INSERT INTO anime_list VALUES (20, 17, 4);
INSERT INTO anime_list VALUES (20, 13, 3);
INSERT INTO anime_list VALUES (20, 2, 4);
INSERT INTO anime_list VALUES (20, 6, 4);
INSERT INTO anime_list VALUES (20, 3, 2);
INSERT INTO anime_list VALUES (20, 11, 3);
INSERT INTO anime_list VALUES (20, 5, 3);
INSERT INTO anime_list VALUES (20, 16, 3);
INSERT INTO anime_list VALUES (20, 9, 9);
INSERT INTO anime_list VALUES (20, 1, 2);
INSERT INTO anime_list VALUES (20, 12, 8);
INSERT INTO anime_list VALUES (20, 7, 8);
INSERT INTO anime_list VALUES (20, 14, 8);
INSERT INTO anime_list VALUES (20, 4, 9);
INSERT INTO anime_list VALUES (20, 19, 7);

/* Part 3: Queries */

-- finding the min/max of a feature.
SELECT MIN(rating) AS anime_rating from anime_list;

-- finding the top/bottom X of a feature
-- aggregation of your data
-- illustrate your relations using JOINs
-- group by
SELECT title, COUNT(anime_id) AS anime_count from anime INNER JOIN anime_list USING(anime_id) GROUP BY anime_id ORDER BY anime_count DESC LIMIT 10;

-- finding the top/bottom X of a feature
-- aggregation of your data
-- illustrate your relations using JOINs
-- group by
-- conditionals
SELECT title, AVG(rating) AS anime_rating FROM anime INNER JOIN anime_list USING(anime_id) GROUP BY anime_id HAVING AVG(rating) > 6.5 ORDER BY 2;

-- regex
-- conditionals
SELECT title FROM anime WHERE description ~* 'high school';

-- wildcard
-- conditionals
SELECT username FROM users WHERE username LIKE 'a_%';
