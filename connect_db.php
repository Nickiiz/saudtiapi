<?php
//ไฟล์นี้ใช้ติดต่อกับไฟล์กลางกับ Database ดังนั้นจึงจะใช้ร่วมกับทุก API 
class ConnectDB
{
    private $host = "localhost"; //ใช้งานจริงให้แก้เป็น IP Address หรือ Domain Name
    private $username = "root"; //username เข้าใช้งาน Database
    private $password = ""; //password เข้าใช้งาน Database
    private $dbname = "saudti_db"; //คือชื่อ Database อย่าลืมตรวจสอบให้ถูกต้อง เมื่อใช้งานจริง

    //ประกาศตัวแปรเก็บค่า Connect ไปยัง Server และ Database
    private $connDB; //ชื่อตัวแปรตั้งอะไรก็ได้ 
    //ประกาศฟังก์ชันที่ใช้ในการ Connect ไปยัง Server และ Database
    public function getConnectDB()
    {
        try {
            $this->connDB = new PDO(
                "mysql:host=$this ->host;dbname=$this ->dbname,$this ->username,$this ->password"
            );
            $this->connDB->exec("set name utf");
        } catch (PDOException $ex) {
        }

        return $this->connDB;
    }
}
