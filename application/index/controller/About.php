<?php

namespace app\index\controller;
use app\common\controller\Home;
class About extends Home
{

    //关于我们
    public function aboutus(){
        return $this->view->fetch();
    }
}