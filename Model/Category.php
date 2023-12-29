<?php

namespace dimoa\Model;

require_once 'config/connect.php';

use connect;

class Category
{
    public function getCategoryAll()
    {
        $query = "select * from category";
        $query = mysqli_query((new connect())->ConnectToDB(), $query);
        $query = mysqli_fetch_all($query,MYSQLI_ASSOC);
        return $query;
    }
}
