<?php

echo "Administración";

require '../init.php';

if (!is_logged_in()) {
    redirect_to('login.php');
}

if (isset($_GET['action'])) {
    $action = $_GET['action'];
}

switch ($action) {
    case 'new-post': {
            break;
        }
    case 'list-posts': {
            break;
        }
    default: {
            ?>
            <?php require __DIR__ . '/../templates/header.php'; ?>
            <h2>Administración</h2>
            <ul>
                <li><a href="?action=list-posts">Listado de posts</a></li>
                <li><a href="?action=new-post">Nuevo post</a></li>
            </ul>
            <?php require __DIR__ . '/../templates/footer.php'; ?>
            <?php
        }
}
