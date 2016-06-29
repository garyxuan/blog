<?php
/**
 * Created by PhpStorm.
 * User: luyanfeng
 * Date: 16/6/28
 * Time: 上午11:38
 */
/**
 * @param $db_config
 * @return PDO|string
 */
function get_db_connection($db_config)
{
    $db       = "mysql:dbname={$db_config["db_name"]};host={$db_config["db_host"]}";
    $user     = $db_config["username"];
    $password = $db_config["password"];
    $encode   = array(PDO::MYSQL_ATTR_INIT_COMMAND => "set names utf8");
    try {
        $db = new PDO($db, $user, $password, $encode);
        return $db;
    } catch (\PDOException $e) {
        Log::write($e->getMessage());
    }
}