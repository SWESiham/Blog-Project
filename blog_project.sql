-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2025 at 08:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('siham@g.com|127.0.0.1', 'i:1;', 1739179784),
('siham@g.com|127.0.0.1:timer', 'i:1739179784;', 1739179784);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 10, 2, 'WOW!', '2025-02-10 18:01:43', '2025-02-10 18:01:43'),
(2, 10, 2, 'Greattt!!!!!!', '2025-02-10 18:02:00', '2025-02-10 18:02:00'),
(3, 10, 1, 'that\'s Helpfulll♡', '2025-02-11 15:07:22', '2025-02-11 15:07:22'),
(4, 10, 1, 'thx♡', '2025-02-11 15:08:05', '2025-02-11 15:08:05'),
(5, 10, 1, 'GREAATTTT!!!!', '2025-02-11 15:19:35', '2025-02-11 15:19:35'),
(6, 11, 1, 'WOW!!', '2025-02-11 15:23:44', '2025-02-11 15:23:44'),
(7, 11, 1, 'Sounds Great', '2025-02-11 16:10:18', '2025-02-11 16:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_09_162915_posts', 2),
(5, '2025_02_10_011039_add_image_to_posts_table', 3),
(6, '2025_02_10_195744_comments', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`, `image`) VALUES
(10, 2, 'Hack your brain: beat stress, ace assessment preparation and master the art of studying', 'Hi, I’m Hijab from Lahore, Pakistan. While exploring my University’s Virtual Learning Environment, I noticed a variety of insightful blogs shared by my fellow students. That’s when I thought, why not write my own?  \r\n\r\nNow, I’m no expert or life coach. I’m just a student like you, navigating the complexities of studying, assessments and everything in between. Here’s a summary of what has worked for me: \r\n\r\nPlan ahead: create a study schedule to stay organised and reduce anxiety around assessments and assignments.\r\nPractice past papers: understand assessment patterns and improve your ability to critically answer questions.  \r\nTake care of yourself: prioritise health, rest and avoid last-minute cramming. \r\nCreate a study schedule (yes, it’s worth it!) \r\nThe first step to conquering your studies is showing your brain that you’re super organised. By setting up a schedule, you create a roadmap that reduces stress and provides clarity on what needs to be done.  \r\n\r\nHere’s a simple strategy. Imagine today is 1 January and you have assessments starting on 15 February. Your goal is to complete your syllabus by 30 January. Start by listing all the dates between 1 January and 30 January. Divide your subjects and topics across the days. Then, stick to the schedule religiously. If life throws you a curveball (like falling unwell), rearrange the missed tasks across other days. This approach ensures steady progress, reduces last-minute cramming, and gives you a sense of control over your preparation. \r\n\r\nPast papers: your assessment prep goldmine \r\nIf there’s one thing you should prioritise during assessment preparation, it’s doing past papers. They’re essential for understanding how questions are framed and what examiners expect.  \r\n\r\nSo, why past papers? Even if you know your concepts well, knowing how to interpret questions and structure answers is crucial for success. Try to avoid memorising mark schemes. Instead, practise solving questions independently. This ensures genuine learning rather than rote memorisation. My pro tip is to start practising past papers after completing each topic. This reinforces your understanding and highlights areas of improvement.  \r\n\r\nGeneral assessment tips\r\nTo maximise your performance, follow these tried-and-tested tips for before and during your assessment period. Before your assessments, start early. Aim to finish your syllabus at least a month before, which gives you ample time for revision. Watch seminars, attend lectures and focus on understanding, not memorisation. practise, practise, practise. In my preparation, I like to solve at least five years’ worth of past papers before assessments.\r\n\r\nDuring your assessment period, prioritise your health. I find it helpful to avoid sugar (it hampers concentration), limit caffeine (too much can disrupt focus and sleep), reduce screen time (to give my eyes and brain a break), get proper sleep (your brain works best when well-rested). Finally, avoid last minute cramming. Trying to learn everything the night before often leads to forgetting previously learnt material. Trust your preparation and focus on reviewing key points.\r\n\r\nFinal thoughts\r\nStudying can feel overwhelming, but with the right strategies, it becomes manageable—and even enjoyable. Remember, it’s not just about acing assessments but also about developing habits that serve you in the long run. So, take a deep breath, plan effectively and believe in yourself. You’ve got this!\r\n\r\nHijab studies BSc Accounting & Finance in Pakistan.', '2025-02-10 17:52:08', '2025-02-10 17:52:08', 'posts/9lbQHbXFqrt3WdKkM798MPqh8mgMWb9BTfs6x0yi.jpg'),
(11, 1, 'Lessons from YouTube’s Extreme Makers', 'In 2006, a high school student from Ontario named James Hobson started posting to a new platform called YouTube. His early videos were meant for his friends, and focused on hobbies (like parkour) and silliness (like one clip in which he drinks a cup of raw eggs).\r\n\r\nHobson’s relationship with YouTube evolved in 2013. Now a trained engineer, he put his skills to work in crafting a pair of metal claws based on the Marvel character, Wolverine. The video was a hit. He then built a working version of the exoskeleton used by Matt Damon’s character in the movie Elysium. This was an even bigger hit. This idea of creating real life versions of props from comics and movies proved popular. Hobson quit his job to create these videos full-time, calling himself, “The Hacksmith.”\r\n\r\nAround the same time that Hobson got started on YouTube, a young British plumber named Colin Furze also began experimenting with the platform. Like Hobson, he began by posting videos of his hobbies (like BMX tricks) and silliness (like a stunt in which tried to serve food to moving cars).\r\n\r\nFurze’s relationship with YouTube evolved when he began posting record breaking attempts. The first in this informal series was his effort to create the world’s largest bonfire. (“I collected pallets for over a year.”) He drew attention from British media when he supercharged a mobility scooter to drive more than seventy miles per hour. This led to a brief stint as a co-host of a maker show called “Gadget Geeks” that aired on the then fledgling Sky TV. After that traditional media experience, he scored a hit on YouTube by attaching a jet engine to the back of a bicycle. He decided to fully commit to making a living on his own videos.\r\n\r\nI wrote about Hobson and Furze in my most recent essay for The New Yorker, which was titled, “A Lesson in Creativity and Capitalism from Two Zany YouTubers.” What drew my attention to these characters, and provided the main focus for my article, is what happened after they decided to make posting videos their full-time jobs.\r\n\r\nHobson adopted a standard strategy from the media industry: he tried to grow as fast as possible. He moved from his garage to a leased warehouse, and then, when that lease ran out, he took on a multi-million dollar mortgage to buy an even larger warehouse. He soon had thirty employees and around a quarter million dollars a month in overhead.\r\n\r\nFurze, by contrast, stayed small. He continued to film his videos in his home workshop and a nearby old barn. He worked almost entirely on his own, with the exception of sometimes having his wife help hold a camera, or his friend Rick come lend a hand when some extra strength was needed. Furze’s overhead was reduced to more or less the cost of materials. Everything else he earns he keeps.\r\n\r\nHobson and Furze’s opposite strategies provide a neat natural experiment in the economics of this quirky corner of YouTube. What were the results? In 2024, Hobson’s channel published twenty-five beautifully produced videos that attracted more than twenty-seven million total views. In the same period, Furze launched five solo-produced videos on his main channel that attracted eighteen million views. He also, however, maintained a second channel with behind-the-scenes footage that pushes his total views for the year to forty-three million, nearly double Hobson’s results.\r\n\r\nAs I write:\r\n\r\n“Furze’s solo success is a quirky challenge to the traditional narrative that survival requires continually growing, and that a small number of well-financed winners eventually eat most of the economic pie. He demonstrates that in certain corners of the creative economy an individual with minimal overhead can work on select attention-catching projects and earn a generous upper-middle-class income. Beyond this relatively modest scale of activity, however, the returns on additional investment rapidly diminish. As Hobson’s experience suggests, there’s no obvious path for a D.I.Y. video creator to turn his channel into a multimillion-dollar empire, even if he wants to. Furze seems to be maxing out the financial potential of his medium by staying small.”\r\n\r\nIn my article, I go on to the explore the specific reasons why small works so well in this medium (hint: it has to do with maintaining an authentic personal connection with your audience). But what I want to emphasize here is my broader conclusion. I think these particular corners of YouTube, along with some related creator-focused Internet-based technologies, including emails newsletter and podcasts, are helping to carve out space for a relatively broad “creative middle class.”\r\n\r\nAs social media continues to falter and stumble in its role as a unifying cultural force, its model of people volunteering their creative labor in return for uncompensated attention is beginning to lose its appeal. Colin Furze is one among many who are revealing an alternative engagement with the online world; one in which it’s possible for someone with sufficient talent to make a good living with minimal investment and maximal flexibility.\r\n\r\nAs I conclude in my piece, it’s still really hard to succeed in this new creative economy. But at least there’s space now to do so. As I write:\r\n\r\n“In our era of consolidation and polarization, many online spaces can seem dreary, toxic, addicting, or some combination of the three. As my colleague Kyle Chayka wrote in 2023, most of the Web just ‘isn’t fun anymore.’ In Furze, however, I sensed some of the optimism of the early Internet.”', '2025-02-11 15:23:27', '2025-02-11 15:23:27', 'posts/WvTrLr9pZ9qUrsYlBMHfT09yB593dBuFOG0xAnjH.jpg'),
(12, 1, 'The Tao of Cal', 'Between this newsletter, my podcast, my books, and my New Yorker journalism, I offer a lot of advice and propose a lot of ideas about how the modern digital environment impacts our lives, both professionally and personally, and how we should respond.\r\n\r\nThis techno-pontification covers everything from the nitty gritty details of producing good work in an office saturated with emails and Zoom, to heady decisions about shaping a meaningful life amid the nihilistic abstraction of an increasingly networked existence.\r\n\r\nWith the end of year rapidly approaching, and people finding themselves with some spare thinking time as work winds down for the holidays, I thought it might be fun to try to summarize essentially every major idea I discuss in one short primer.\r\n\r\nSo that’s what I’m attempting below! I’m sure I’m missing some key points, but this should nevertheless provide a useful road map to my esoteric mental wanderings.\r\n\r\nKnowledge Work\r\nTreat cognitive context shifts as “productivity poison.” The more you switch your attention from one target (say, a report you’re writing) to another (say, an inbox check), the more exhausted and dumber you become.\r\nThe biggest source of context shifts is digital communication. Move as much collaboration as possible out of chains of ad hoc, back and forth messaging and into something more structured.\r\nThe second biggest source of context shifts is caused by working on too many tasks at the same time. Do fewer things at once. You’ll finish each task faster (and better) and therefore accomplish more over time.\r\nFocus is like a super power in most knowledge work jobs. Train this ability. Protect deep work on your calendar. Support these sessions through special rituals and spaces.\r\nYou need specific systems to track all of your commitments. You need specific system to manage your time and attention. The pace and volume of modern knowledge work is too intense for you to casually handle it all in your head.\r\nRemote work requires more structure surrounding workload management and communication than regular office work. It’s not enough to simply give remote workers a Zoom account and a Slack handle and hope their efforts unfold as before.\r\nSources: Deep Work, A World Without Email, Slow Productivity, “Why Remote Work is So Hard–And How it Can Be Fixed”, “Why Do We Work Too Much?”, “Was Email a Mistake?”, “How to Have a More Productive Year”\r\n\r\nPersonal Technology Use\r\nYour phone should be used as a tool, not a constant companion. To accomplish this: (1) keep your phone plugged into the same spot when at home (instead of having it with you); and (2) remove all apps from your phone where someone makes more money the more you use it.\r\nMost people don’t need to use social media. If you really need to use it — e.g., for professional purposes — use it on a web browser on your laptop, and spend at most an hour a week logged in, as that’s enough for 99% of legitimate uses. There are better ways to be entertained, find news, and connect with people.\r\nDigital communication can be great, but be wary of communicating with people you’ve never actually met in person before. (That is, texting a friend is good. Arguing with a random Twitter user about presidential politics is not.)\r\nFixing your relationship with digital tools requires that you fix your analog life first. It’s not enough to stop using problematic apps and devices, you must also aggressively pursue alternative activities to fill the voids this digital abstention will create: read books, join communities, develop hard hobbies, get in shape, hatch plans to transform your career for the better. Without deeper purpose, the shallow siren song of your phone will become impossible to ignore.\r\nKids under the age of 16 shouldn’t have unrestricted access to the internet. Their brains aren’t ready for it.\r\nSources: Digital Minimalism, “Quit Social Media”, “Steve Jobs Never Wanted Us to Use Our iPhones Like This”, “Cal Newport on Kids and Smartphones”\r\n\r\nThe Deep Life\r\nIn building a meaningful and fulfilling life, it’s usually better to work backwards from a broad vision of your ideal lifestyle than it is to work forward toward a singular grand goal (e.g., a “dream job” or radical location change) that you hope will make everything better.\r\nThe best way to improve your professional life is to get good at something the market unambiguously values, and then use this “career capital” as leverage to shape your work in ways that resonate. No one owes you a great a job. You have to get great first before you demand it.\r\nSucceeding with big changes in your life requires that you first get your act together. Get comfortable with discipline (doing things that are hard in the moment but important in the long term), get organized, and reclaim your brain from constant digital distraction. Only then should initiate your ambitious plans.\r\nSources: So Good They Can’t Ignore You, “The Most Important Piece of Career Advice You Probably Never Heard”, “The Deep Life: Some Notes”, “Deep Life Stack 2.0”\r\n\r\nThe Internet and Future Technology\r\nWhen it comes to the internet, small is usually better than big. Niche online communities are more meaningful and less harmful (in terms of both content and addictive properties) than massive social platforms. Independent content formats, like podcasts and newsletters, are much better for creatives (in terms of stability, income, and autonomy) than attempting to become an influencer on a major platform. And so on.\r\nThe age of massive social network monopolies is already coming to an end. We just don’t realize it yet.\r\nGenerative AI won’t really change our daily lives in a massive way until it leaves the chatbot format and becomes more integrated into specific tools.\r\nThe biggest technology story everyone is ignoring is the end of screens. Within the next decade, AR glasses will replace essentially every screen currently in our lives — phones, laptops, tablets, computer monitors, and televisions. The ramifications on the worldwide technology sector will be absolutely massive. It will also be the end of a fully differentiated analog reality as we know it.\r\nSources: “The Rise of the Internet’s Creative Middle Class”, “TikTok and the Fall of the Social Media Giants”, “Can an AI Make Plans”, “The End of Screens?”\r\n\r\n#####\r\n\r\nSpeaking of books, my latest, Slow Productivity: The Lost Art of Accomplishment without Burnout, was named a best book of 2024 by The Economist, NPR, and Amazon. It’s also currently heavily discounted for Cyber Monday. Consider it as a great gift for yourself or someone else you know who could benefit from slowing down!\r\n(The photo used for this article was taken by Greg Kahn for a recent profile of me published in El Pais.)', '2025-02-11 16:50:28', '2025-02-11 16:50:28', 'posts/GEoJqaZVNIb6i5UNWLHj2QZONTiEai32JdRyAHWc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9YYb7McIB9LU923BXpeQoCleo16tnpGuguBGnqiv', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibTkxb2JDY201dmVwU0JvSVU3UVBRdVNCWTJqV2ZPR3FETzR3U0JOdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3N0cyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1739300579);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'siham said', 'siham@g.c', NULL, '$2y$12$DBvJ7BrVcE.1epmSMLCW0uOyHgeCaeXuyHdBRxEkfbdFihGsXOq32', NULL, '2025-02-07 13:57:04', '2025-02-11 16:59:29'),
(2, 'Gad Mahmoud', 'gad@g.c', NULL, '$2y$12$CgIi6ECwBZIXdKDOss/pWu2IYvWn1bGlptlbQN4sdpCPtADKd.V0m', NULL, '2025-02-10 12:39:13', '2025-02-10 12:39:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
