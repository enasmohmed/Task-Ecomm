-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2021 at 03:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add customer', 9, 'add_customer'),
(34, 'Can change customer', 9, 'change_customer'),
(35, 'Can delete customer', 9, 'delete_customer'),
(36, 'Can view customer', 9, 'view_customer'),
(37, 'Can add order', 10, 'add_order'),
(38, 'Can change order', 10, 'change_order'),
(39, 'Can delete order', 10, 'delete_order'),
(40, 'Can view order', 10, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$J2DW53uIgo3M$8RKtxxuy39gDhlkPxiJmkG+6V0QDpU1OxN8xDu47idw=', '2021-02-07 17:50:31.456774', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2021-02-07 17:41:56.403677');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-02-07 17:50:54.543675', '1', 'Man', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-02-07 17:52:17.414861', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-02-07 18:39:23.659832', '1', 'Man-Cloths', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(4, '2021-02-07 18:42:50.234340', '2', 'Vegetables', 1, '[{\"added\": {}}]', 8, 1),
(5, '2021-02-07 18:42:58.229308', '2', 'Vegetables', 2, '[]', 8, 1),
(6, '2021-02-07 18:45:33.336261', '3', 'Women-cloths', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-02-07 18:45:51.834260', '4', 'Mobiles', 1, '[{\"added\": {}}]', 8, 1),
(8, '2021-02-07 18:54:47.370351', '2', 'Product object (2)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2021-02-07 18:57:02.387971', '3', 'Product object (3)', 1, '[{\"added\": {}}]', 7, 1),
(10, '2021-02-07 18:57:43.464994', '4', 'Product object (4)', 1, '[{\"added\": {}}]', 7, 1),
(11, '2021-02-07 19:03:36.733592', '5', 'Product object (5)', 1, '[{\"added\": {}}]', 7, 1),
(12, '2021-02-07 19:04:24.822102', '6', 'Product object (6)', 1, '[{\"added\": {}}]', 7, 1),
(13, '2021-02-07 19:05:11.659272', '7', 'Product object (7)', 1, '[{\"added\": {}}]', 7, 1),
(14, '2021-02-07 19:27:58.382791', '8', 'Product object (8)', 1, '[{\"added\": {}}]', 7, 1),
(15, '2021-02-07 19:28:33.213508', '9', 'Product object (9)', 1, '[{\"added\": {}}]', 7, 1),
(16, '2021-02-07 19:29:17.572979', '10', 'Product object (10)', 1, '[{\"added\": {}}]', 7, 1),
(17, '2021-02-07 19:30:24.766371', '11', 'Product object (11)', 1, '[{\"added\": {}}]', 7, 1),
(18, '2021-02-07 19:32:23.183055', '12', 'Product object (12)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'store', 'category'),
(9, 'store', 'customer'),
(10, 'store', 'order'),
(7, 'store', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-07 17:39:10.808350'),
(2, 'auth', '0001_initial', '2021-02-07 17:39:12.701816'),
(3, 'admin', '0001_initial', '2021-02-07 17:39:27.163860'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-07 17:39:32.061529'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-07 17:39:32.455428'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-07 17:39:34.697215'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-07 17:39:37.139677'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-07 17:39:37.269331'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-07 17:39:37.323229'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-07 17:39:39.011668'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-07 17:39:39.051615'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-07 17:39:39.094446'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-07 17:39:39.226715'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-07 17:39:39.393230'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-07 17:39:39.547260'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-07 17:39:39.622998'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-02-07 17:39:40.575753'),
(18, 'sessions', '0001_initial', '2021-02-07 17:39:40.929122'),
(19, 'store', '0001_initial', '2021-02-07 17:39:41.376944'),
(20, 'store', '0002_auto_20201230_1853', '2021-02-07 17:39:41.426810'),
(21, 'store', '0003_category', '2021-02-07 17:39:42.489955'),
(22, 'store', '0004_product_category', '2021-02-07 17:39:44.382776'),
(23, 'store', '0005_auto_20201230_2007', '2021-02-07 17:39:47.246016'),
(24, 'store', '0006_customer', '2021-02-07 17:39:47.651979'),
(25, 'store', '0007_auto_20201231_1905', '2021-02-07 17:39:47.797592'),
(26, 'store', '0008_order', '2021-02-07 17:39:48.156891'),
(27, 'store', '0009_auto_20210105_2213', '2021-02-07 17:39:51.723608'),
(28, 'store', '0010_auto_20210108_2144', '2021-02-07 17:39:53.835945'),
(29, 'store', '0011_auto_20210108_2145', '2021-02-07 17:39:53.873885'),
(30, 'store', '0012_auto_20210111_0043', '2021-02-07 17:39:53.930690'),
(31, 'store', '0013_auto_20210111_0116', '2021-02-07 17:39:54.039399'),
(32, 'store', '0014_auto_20210207_1938', '2021-02-07 17:39:54.115243');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('iffq5fgncqjblh6nu3lr0era15xp8m8f', '.eJxVjz1uwzAMhe-iOTAiyZJVT02nLDlAJ4P6i9zIUiHJQxHk7qWKDCkHEvj43iN4JwvsLSx7dWVZLZkJJYdXpsHcXOoL-wXpmgeTUyurHrpkeG7rcMnWxY-n9l9AgBq6m1GuLPPcT04DtXAU05ug3hjNnKeSGsWENBRGetRCjtwo4N5IYyepFdcYaqA0Mt_JRGZ6IBz7A-FeW95c-WN-LbUtCTaHF0-fpzO6IrwgbSFGCIjdBmtEBD8QQO8QE9j1_dopvrih4jvk1E1SjIph4SCPX73tYPg:1l97gM:Sxuab3df-S9dhanEUrN9U5ubJnGiOTHE4ca22dLuLrc', '2021-02-22 14:38:30.795713'),
('vm953iy6yjff0upsy5bt5y3lngc7kzsl', '.eJxVjDsOgzAQBe-ydWSxNv6EMj1nsHbXdiCJQMJQIe4eIdHQvpl5OwgtK3T78YBI2zrEreYljgk6QLhtTPLN0wnSh6b3rGSe1mVkdSrqolX1c8q_1-XeDgaqw1lrNCHpYorPTJiosf5psYiwzgUdStDWCVKLDVvXGglkijhJ3nEwDMcfOqQ7mg:1l8o6d:KUR1RX6pOFcqHPpWJ5wOvtCSZNzsb4uSJ1Xf9BVq0LM', '2021-02-21 17:44:19.636405');

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `name`) VALUES
(1, 'Man-Cloths'),
(2, 'Vegetables'),
(3, 'Women-cloths'),
(4, 'Mobiles');

-- --------------------------------------------------------

--
-- Table structure for table `store_customer`
--

CREATE TABLE `store_customer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_customer`
--

INSERT INTO `store_customer` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`) VALUES
(1, 'AYAH', 'Abdallah', '65482222548', 'ayahabualnadi@gmail.com', 'pbkdf2_sha256$216000$JGT7xEXDshu0$9Kq4qf/pxXdUIOqUEiuqNvxLrmMKD8gbzeZlLgkGfNA=');

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `quantity`, `price`, `date`, `customer_id`, `product_id`, `address`, `phone`, `status`) VALUES
(1, 1, 6, '2021-02-07 20:35:19.629039', 1, 4, 'ayahabualnadi@gmail.com', '65482222548', 0),
(2, 1, 3, '2021-02-07 20:35:19.629039', 1, 5, 'ayahabualnadi@gmail.com', '65482222548', 0),
(3, 1, 7, '2021-02-07 20:35:19.629039', 1, 6, 'ayahabualnadi@gmail.com', '65482222548', 0),
(4, 1, 50, '2021-02-07 20:35:19.629039', 1, 7, 'ayahabualnadi@gmail.com', '65482222548', 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `name`, `price`, `description`, `image`, `category_id`) VALUES
(1, 'Men T-Shirt', 50, 'This is shirt', 'uploads/products/538228-0286_1-510x649_gEEXUmv.jpeg', 1),
(2, 'Red-Shirt', 50, 'This is shirt for man', 'uploads/products/printed-shirt-500x500_wlhHbqg.jpg', 1),
(3, 'Onions - 1Kg', 5, NULL, 'uploads/products/10000148_28-fresho-onion_DYkkYYA.jpg', 2),
(4, 'Tomato - 1Kg', 6, NULL, 'uploads/products/10000200-2_2-fresho-tomato-hybrid_yhIFCRI.jpg', 2),
(5, 'Potato', 3, NULL, 'uploads/products/10000159-2_7-fresho-potato_C3BiwNI.jpg', 2),
(6, 'Ginger - 1Kg', 7, NULL, 'uploads/products/10000119-2_3-fresho-ginger_JGK8VBw.jpg', 2),
(7, 'Black - Shirt', 50, 'This is shirt for man', 'uploads/products/mens-black-shirt-500x500_xPszmNZ.jpg', 1),
(8, 'Capsicum - 1Kg', 8, NULL, 'uploads/products/10000069-2_28-fresho-capsicum-green_4G2zY7u.jpg', 2),
(9, 'Garlic', 0, NULL, 'uploads/products/download_V21VOvR.jpg', 2),
(10, 'Oppo-Reno5', 0, NULL, 'uploads/products/Oppo-Reno5-image_EG7y6SJ.jpg', 4),
(11, 'Blue-Shirt', 55, NULL, 'uploads/products/82a21af7711e43fd230e3c6150522ddb_Wl1VxS7.jpg', 1),
(12, 'Xiaomi-Poco-M3', 400, NULL, 'uploads/products/Xiaomi-Poco-M3_H8iXYwO.jpg', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_customer_id_13d6d43e_fk_store_customer_id` (`customer_id`),
  ADD KEY `store_order_product_id_11796f0f_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_customer`
--
ALTER TABLE `store_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_customer_id_13d6d43e_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`),
  ADD CONSTRAINT `store_order_product_id_11796f0f_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
