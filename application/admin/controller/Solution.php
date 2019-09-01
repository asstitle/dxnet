<?php
namespace app\admin\controller;
use app\common\controller\Backend;
use think\Db;
class Solution extends Backend
{
    //解决方案
    public function index(){
        return $this->fetch();
    }

}