<?php

class connect
{
    public $hostName = '127.0.0.1';
    public $username = 'root';
    public $password = '';
    public $database = 'dimoa';

    public function ConnectToDB()
    {
        return $connect = mysqli_connect($this->hostName,$this->username, $this->password,$this->database);
    }
}