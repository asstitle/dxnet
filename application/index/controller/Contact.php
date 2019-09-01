<?php
namespace app\index\controller;
use app\common\controller\Home;
use think\Db;
class Contact extends Home
{
    //联系方式
    public function contant(){
        $data=Db::name('company_contact')->order('id desc')->find();
        $this->assign('data',$data);
        return $this->view->fetch();
    }
}