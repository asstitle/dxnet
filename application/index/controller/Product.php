<?php

namespace app\index\controller;
use app\common\controller\Home;
class Product extends Home
{
    //产品服务1
   public function plan(){
       return $this->fetch();
   }
    //产品服务2
    public function plan1(){
        return $this->fetch();
    }
    //产品服务3
    public function plan2(){
        return $this->fetch();
    }
    //产品服务4
    public function plan3(){
        return $this->fetch();
    }
}