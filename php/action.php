<?php
/**
 * Created by PhpStorm.
 * User: yanfeng
 * Date: 2016/6/6
 * Time: 15:19
 */
date_default_timezone_set('Asia/Shanghai');
require_once("Log.php");
require_once("Config.php");
require_once("utils.php");
try {
    $db     = get_db_connection($db_config);
    $result = $db->query("SELECT blog_id,title FROM blog")->fetchAll();
} catch (PDOException $e) {
    Log::write($e->getMessage());
}
