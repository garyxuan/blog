<?php
/**
 * Created by PhpStorm.
 * User: luyanfeng
 * Date: 16/6/30
 * Time: 上午10:02
 */
require_once("utils.php");
require_once("config.php");
$blog_id = $_GET["blog_id"];
try {
    $db     = get_db_connection($db_config);
    $result = $db->query("SELECT title,content FROM blog  WHERE blog_id={$blog_id}")->fetch();
    var_dump($result);
    die;
} catch (PDOException $e) {
    log($e->getMessage());
}
