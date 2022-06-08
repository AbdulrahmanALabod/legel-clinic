<?php

class Database
{
   private $host = "localhost";
    private $username = "root";
    private $password  = "";
    private $dbname = "tlc_portal";
    private static $instance = null;
    private $connection;
    private function __construct()
    {
        $this->connection = mysqli_connect($this->host,$this->username,$this->password,$this->dbname);
    }
    public static function getInstance()
    {
        if (!self::$instance)
        {
            self::$instance = new Database();
        }
        return self::$instance;
    }
    public function getConnection()
    {
        return $this->connection;
    }
    public function destructConnection()
    {
        mysqli_close($this->connection);
    }
}