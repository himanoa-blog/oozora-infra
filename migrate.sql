CREATE DATABASE IF NOT EXISTS testament;

USE testament;

CREATE TABLE IF NOT EXISTS `entries` (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  title VARCHAR(300) NOT NULL,
  body TEXT NOT NULL,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  published BOOLEAN NOT NULL DEFAULT '0',
  user_id INT NOT NULL
);


CREATE TABLE IF NOT EXISTS `users` (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(256) NOT NULL,
  `uid` VARCHAR(256) NOT NULL,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `tokens` (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  user_id INT NOT NULL,
  token TEXT NOT NULL,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
