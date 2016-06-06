<?php

/**
 * Created by PhpStorm.
 * User: yanfeng
 * Date: 2016/6/6
 * Time: 15:27
 */
class Log
{
    public static function write($msg, $level = "ERR")
    {
        $date = date("Y-m-d", time());
        $file = "../log/" . $date . ".log";
        $handle = fopen($file, "a+");
        $datetime = date("Y-m-d H:i:s", time());
        $msg = "[" . $datetime . "]:" . $msg . "\n";
        fwrite($handle, $msg);
        fclose($handle);
    }
}