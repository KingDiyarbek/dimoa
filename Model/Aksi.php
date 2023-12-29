<?php

namespace dimoa\Model;

require_once '../config/connect.php';

class Aksi
{
    public function getAksiAll()
    {
        $query = "select * from aksi";
        $query = mysqli_query($connect, $query);
        return $query;
    }
}
