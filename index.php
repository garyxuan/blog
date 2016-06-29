<?php
require_once("php/action.php");
?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" name="IE=EDGE">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Home</title>
    <link rel="shortcut icon" type="imange/x-icon" href="public/img/favicon.ico">
    <link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="public/css/starter-template.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About Me</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="starter_template">
        <ul class="list_ul">
            <?php
            foreach ($result as $row) {
                echo '<li class="list_li">' . $row["title"] . '</li>';
            }
            ?>
        </ul>
    </div>
</div>
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.js"></script>
</body>
</html>