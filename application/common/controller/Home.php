<?php
namespace app\common\controller;
use think\Controller;
use think\Db;
class Home extends Controller
{
    //初始化公共首页
   public function __construct(){
       parent::__construct();
       $arr=array();
       $nav_data=Db::name('nav_name')->where(array('parent_id'=>0))->select();
       foreach($nav_data as $v){
           $v['child']=Db::name('nav_name')->where(array('parent_id'=>$v['id']))->select();
           $arr[]=$v;
           unset($v);
       }
       $this->assign('arr',$arr);
   }
}