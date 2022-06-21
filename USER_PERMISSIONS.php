<?php

function is_authenticated() {
    if (isset($_SESSION['id'])) {
        return true;
    }
    return false;
}

function is_admin() {
    if (isset($_SESSION['id']) && $_SESSION['is_admin'] == 1) {
        return true;
    }
    return false;
}

function is_user() {
    if (isset($_SESSION['id']) && $_SESSION['is_admin'] == 0) {
        return true;
    }
    return false;
}

?>