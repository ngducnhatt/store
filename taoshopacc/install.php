<?php
    require_once(__DIR__."/config/config.php");
    require_once(__DIR__."/config/function.php");



    // INSERT OPTIONS
    insert_options('html_footer', '');
    insert_options('text_left_footer', '');
    insert_options('text_center_footer', '');
    insert_options('email_admin', '');
    insert_options('block_f12', 'ON');
    insert_options('ck_card', 15);
    insert_options('license_key', '');
    insert_options('logo_dark', '');
    insert_options('background', '');
    $CMSNT->query("ALTER TABLE `users` ADD `ctv` INT(11) NULL DEFAULT '0' AFTER `total_money` ");
    $CMSNT->query("ALTER TABLE `orders_caythue` ADD `receiver` VARCHAR(255) NULL AFTER `username` ");
    $CMSNT->query("ALTER TABLE `orders_caythue` ADD `reason` TEXT NULL AFTER `ghichu`  ");
    $CMSNT->query("ALTER TABLE `accounts` ADD `receiver` VARCHAR(255) NULL AFTER `username` ");
    $CMSNT->query("ALTER TABLE `momo` ADD `deletedate` VARCHAR(255) NULL AFTER `status` ");
    $CMSNT->query("ALTER TABLE `bank_auto` ADD `deletedate` VARCHAR(255) NULL AFTER `username`    ");
    $CMSNT->query("ALTER TABLE `cards` ADD `deletedate` VARCHAR(255) NULL AFTER `note`  ");
    $CMSNT->query("ALTER TABLE `category_caythue` ADD `luuy` LONGTEXT NULL DEFAULT NULL AFTER `img` ");
    die('Success!');