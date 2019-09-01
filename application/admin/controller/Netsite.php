<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use think\Db;
class Netsite extends Backend
{
    //网站导航栏
   public function index(){
       if ($this->request->isAjax()) {
           $data = Db::name('nav_name')->select();
           $total = count($data);
           $result = array("total" => $total, "rows" => $data);
           return json($result);
       }
       return $this->fetch();
   }
   //添加页面
   public function add(){
    $result=Db::name('nav_name')->where(array('parent_id'=>0))->select();
    $this->assign('result',$result);
    return $this->fetch();
   }
   //添加操作
   public function add_info(){
     $data['name']=input('post.name');
     $data['url']=input('post.url');
     $data['parent_id']=input('post.parent_id');
     $res=Db::name('nav_name')->insert($data);
     if($res){
        $this->success('添加成功');
     }else{
         $this->success('添加失败');
     }
   }
   //编辑
   public function edit($ids = null){
       $row = Db::name('nav_name')->where(array('id'=>$ids))->find();
       if (!$row) {
           $this->error(__('No Results were found'));
       }
       if ($this->request->isPost()) {
           $data['name']=input('post.name');
           $data['url']=input('post.url');
           $data['parent_id']=input('post.parent_id');
           $result = Db::name('nav_name')->where(array('id'=>$row['id']))->update($data);
           if ($result !== false) {
                $this->success('编辑成功');
            } else {
                $this->error('编辑失败');
           }
       }
       $result=Db::name('nav_name')->where(array('parent_id'=>0))->select();
       $this->assign('result',$result);
       $this->view->assign("row", $row);
       return $this->view->fetch();
   }
   //删除导航栏
   public function del($ids = null){
       $result= Db::name('nav_name')->where('id','in',$ids)->delete();
       if ($result !== false) {
           $this->success('删除成功');
       } else {
           $this->error('删除失败');
       }
   }
}