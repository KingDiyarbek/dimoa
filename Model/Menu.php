<?php

namespace dimoa\Model;

require_once 'config/connect.php';

use connect;

class Menu
{
    public function getMenuAndNameCategory()
    {
        $query = "SELECT menu.*, category.Name_category FROM menu INNER JOIN category ON menu.Category_idCategory = category.idCategory";
        $query = mysqli_query((new connect())->ConnectToDB(),$query);
        $query = mysqli_fetch_all($query, MYSQLI_ASSOC);
        return $query;
    }
}
