<?php //ไฟล์นี้ทำงานร่วมกันระหว่าง API กับ Database อีกที่หนึ่ง
class Member
{
    //ประกาศตัวแปรที่ใช้ในการ Connect Database
    private $connDB;
    //ประกาศ constructor ที่จะใช้สำหรับการกำหนดค่าการ Connect Database
    public function __construct($connDB) 
    {
        $this->connDB = $connDB;
    }
    //ประกาศตัวแปรที่มีจำนวนเท่ากับ Column ใน Table แนะนำให้ชื่อเหมือนกับ Column
    private $memId;
    private $memFullname;
    private $mememail;
    private $memPhone;
    private $memUsername;
    private $memRegisterDateTime;
    private $memModifyDateTime;
    
    //ประกาศตัวแปรเพื่อสำหรับใช้งานสารพัดประโยชน์
    public $message;

    //ประกาศ Function ที่จะใช้ทำงานร่วมกับ Database เช่น การเพิ่ม แก้ไข ลบ ค่นหา ตรวจสอบ ดึงข้อมูล เป็นต้น
    // เราจะประกาศฟังก์ชันร่วมกับ api ในการบันทึกข้อมูลสมาชิก/ผู้ใช้ใหม่
    // เราจะประกาศฟังก์ชันร่วมกับ api ในการตรวจสอบข้อมูลชื่อผู้ใช้และรหัสผ่านในการ login เข้าใช้งานแอป ด้วยตัวผู้ใช้งานแอป
    // เราจะประกาศฟังก์ชันร่วมกับ api ในการแก้ไขสมาชิกด้วยตัวผู้ใช้งานเอง
}
