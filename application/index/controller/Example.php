<?php

namespace app\index\controller;
use app\common\controller\Home;
class Example extends Home
{

    //案例中心
    public function exampleCenter(){
        return $this->fetch();
    }

    //案例信息
    public function exampleInfo(){
        return $this->fetch();
    }

}