<?php
namespace app\index\controller;
use app\common\controller\Home;
class Develop extends Home
{
    //开发服务
   public function develop(){
       return $this->fetch();
   }
}