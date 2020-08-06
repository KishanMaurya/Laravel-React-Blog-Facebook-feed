-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2020 at 12:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_reactjs`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2020_04_09_122852_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'https://firebasestorage.googleapis.com/v0/b/blog-6c4ce.appspot.com/o/l1.png?alt=media&token=40725bac-d045-4405-ab4b-46a5a55e74ae', 'Laravel_react', 'Setting React - Laravel Without using Laravel mix\nMore than once i have found my self having to host my backend and my frontend separately, and running multiple deployments. Although it has its benefit, it can be quite expensive to maintain. Deploying your react and laravel app on the same server still gives you most of the benefits of deploying them separately. They might live on the same server but they are still two reusable entities communicating with each other. Let me show how you can set up your laravel and react project on one server.\n\n\nKishan maurya', '2020-08-06 03:36:27', '2020-08-06 03:36:27'),
(2, 'https://firebasestorage.googleapis.com/v0/b/blog-6c4ce.appspot.com/o/l11.png?alt=media&token=e39c4c7d-5278-4d02-8126-70e821c691da', 'How to  use React+Laravel', 'Here is a real simple guide to creating a Laravel/React app, and getting the page loaded in no time.\nThis is part of a series of stories I am writing, which will set the basis for a simple CRUD app.\nAssumptions: You need to have a few things already installed..\n\nCreate a new Laravel App\n$ laravel new AppName\n$ cd AppName\nSetup Laravel for React\nIn the Laravel docs, we have the capability to switch out the default Vue scaffolding and replace it with what we need to use React, so lets do that now.\n$ php artisan preset react\n# Now initialise our setup\n$ npm install\n$ npm run dev\nHomepage\nWe need to trim the default bloat out and replace it with a simple setup to get our React app working. It is important that we add the CSRF token into our head, so our requests can be validated later on.\nOur main page should look something like this\nviews/welcome.blade.php\n<!doctype html>\n<html lang=\"{{ str_replace(\'_\', \'-\', app()->getLocale()) }}\">\n    <head>\n        <meta charset=\"utf-8\">\n        <meta name=\"viewport\" \n              content=\"width=device-width, initial-scale=1\">\n        <title>Example Site</title>\n        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/app.css\">\n        <meta name=\"csrf-token\" content=\"{{ csrf_token() }}\">\n    </head>\n    <body>\n        <div id=\"example\"></div>\n        <script type=\"text/javascript\" src=\"js/app.js\"></script>\n    </body>\n</html>\nExample.js\nLets remove the default bloat, and add a classic Hello (React) World!\nImage for post\nAfter this, we will need to run the npm run dev command to recompile our assets.\n\n\n\nKishan Maurya', '2020-08-06 03:39:05', '2020-08-06 03:39:05'),
(3, 'https://firebasestorage.googleapis.com/v0/b/blog-6c4ce.appspot.com/o/download.png?alt=media&token=c5da3531-5fa3-44ec-819e-3201e09f4609', 'What is React , and Why react is famous , Than other JavaScript language', 'React is an open-source JavaScript library for building user interfaces. It is maintained by Facebook and a community of individual developers and companies. React can be used as a base in the development of single-page or mobile applications\n\nReact is a JavaScript library created by Facebook\n\nReact is a User Interface (UI) library\n\nReact is a tool for building UI components', '2020-08-06 03:45:31', '2020-08-06 03:45:31'),
(4, 'https://firebasestorage.googleapis.com/v0/b/blog-6c4ce.appspot.com/o/download%20(1).png?alt=media&token=1a0beef0-32e4-4b4e-a525-9199f6ba1ae1', 'What is Laravel and how to use.', 'Laravel is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model–view–controller architectural pattern and based on Symfony.\n\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things\n\nLaravel is a free, open-source[3] PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model–view–controller (MVC) architectural pattern and based on Symfony. Some of the features of Laravel are a modular packaging system with a dedicated dependency manager, different ways for accessing relational databases, utilities that aid in application deployment and maintenance, and its orientation toward syntactic sugar.[4][5]:2,5–9[6][7]', '2020-08-06 09:19:59', '2020-08-06 09:19:59'),
(5, 'https://firebasestorage.googleapis.com/v0/b/blog-6c4ce.appspot.com/o/download%20(2).png?alt=media&token=5de44ef2-8381-4f52-96ed-f05ea3d67d6b', 'What is Node js', 'Node.js is an open-source, cross-platform, JavaScript runtime environment that executes JavaScript code outside a web browser.\n\nAs an asynchronous event-driven JavaScript runtime, Node.js is designed to build scalable network applications. In the following \"hello world\" example, many connections can be handled concurrently. Upon each connection, the callback is fired, but if there is no work to be done, Node.js will sleep.\n\nconst http = require(\'http\');\n\nconst hostname = \'127.0.0.1\';\nconst port = 3000;\n\nconst server = http.createServer((req, res) => {\n  res.statusCode = 200;\n  res.setHeader(\'Content-Type\', \'text/plain\');\n  res.end(\'Hello World\');\n});\n\nserver.listen(port, hostname, () => {\n  console.log(`Server running at http://${hostname}:${port}/`);\n});\nThis is in contrast to today\'s more common concurrency model, in which OS threads are employed. Thread-based networking is relatively inefficient and very difficult to use. Furthermore, users of Node.js are free from worries of dead-locking the process, since there are no locks. Almost no function in Node.js directly performs I/O, so the process never blocks. Because nothing blocks, scalable systems are very reasonable to develop in Node.js.\n\nIf some of this language is unfamiliar, there is a full article on Blocking vs. Non-Blocking.\n\nNode.js is similar in design to, and influenced by, systems like Ruby\'s Event Machine and Python\'s Twisted. Node.js takes the event model a bit further. It presents an event loop as a runtime construct instead of as a library. In other systems, there is always a blocking call to start the event-loop. Typically, behavior is defined through callbacks at the beginning of a script, and at the end a server is started through a blocking call like EventMachine::run(). In Node.js, there is no such start-the-event-loop call. Node.js simply enters the event loop after executing the input script. Node.js exits the event loop when there are no more callbacks to perform. This behavior is like browser JavaScript — the event loop is hidden from the user.\n\nHTTP is a first-class citizen in Node.js, designed with streaming and low latency in mind. This makes Node.js well suited for the foundation of a web library or framework.\n\nNode.js being designed without threads doesn\'t mean you can\'t take advantage of multiple cores in your environment. Child processes can be spawned by using our child_process.fork() API, and are designed to be easy to communicate with. Built upon that same interface is the cluster module, which allows you to share sockets between processes to enable load balancing over your cores.', '2020-08-06 09:21:51', '2020-08-06 09:21:51'),
(6, 'https://firebasestorage.googleapis.com/v0/b/blog-6c4ce.appspot.com/o/download.jpg?alt=media&token=442a79ff-e8a1-47d6-acc9-1088e3b5303a', 'What is Python', 'Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.\n\nWhat is Python? Executive Summary\nWhat is Python? Executive Summary\nPython is an interpreted, object-oriented, high-level programming language with dynamic semantics. Its high-level built-in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development, as well as for use as a scripting or glue language to connect existing components together. Python\'s simple, easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance. Python supports modules and packages, which encourages program modularity and code reuse. The Python interpreter and the extensive standard library are available in source or binary form without charge for all major platforms, and can be freely distributed.\n\nOften, programmers fall in love with Python because of the increased productivity it provides. Since there is no compilation step, the edit-test-debug cycle is incredibly fast. Debugging Python programs is easy: a bug or bad input will never cause a segmentation fault. Instead, when the interpreter discovers an error, it raises an exception. When the program doesn\'t catch the exception, the interpreter prints a stack trace. A source level debugger allows inspection of local and global variables, evaluation of arbitrary expressions, setting breakpoints, stepping through the code a line at a time, and so on. The debugger is written in Python itself, testifying to Python\'s introspective power. On the other hand, often the quickest way to debug a program is to add a few print statements to the source: the fast edit-test-debug cycle makes this simple approach very effective.\n\nSee also some comparisons between Python and other languages.', '2020-08-06 09:27:59', '2020-08-06 09:27:59');

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
(1, 'KISHAN MAURYA', 'kkmaurya.0095@gmail.com', NULL, '$2y$10$mOXH.DlIKMF6OJae6ZR1M.KicFyltHPacFcRXDspLTXqkONUiZ9F6', NULL, '2020-08-06 02:37:36', '2020-08-06 02:37:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
