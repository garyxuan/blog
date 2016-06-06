<?php
/**
 * Created by PhpStorm.
 * User: yanfeng
 * Date: 2016/6/6
 * Time: 15:19
 */
require_once("Log.php");
require_once("Config.php");
$db = "mysql:dbname={$db_config["dbname"]};host={$db_config["host"]}";
$user = $db_config["username"];
$password = $db_config["password"];
try {
    $db = new PDO($db, $user, $password);
} catch (\PDOException $e) {
    Log::write($e->getMessage());
}