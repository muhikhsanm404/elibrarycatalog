<?php

function is_authenticated() {
    if (isset($_SESSION['id'])) {
        return true;
    }
}

function is_admin() {
    if (isset($_SESSION['id']) && $_SESSION['is_admin'] == 1) {
        return true;
    }
}

function is_user() {
    if (isset($_SESSION['id']) && $_SESSION['is_admin'] == 0) {
        return true;
    }
}

?>