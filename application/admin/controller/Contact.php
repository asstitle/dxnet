<?php

namespace app\admin\controller;
use app\common\controller\Backend;
use think\Db;
class Contact extends Backend
{
    //联系方式
   public function index(){
       if ($this->request->isAjax()) {
           $data = Db::name('company_contact')->select();
           $total = count($data);
           $result = array("total" => $total, "rows" => $data);
           return json($result);
       }
       return $this->fetch();
   }
   //添加联系方式
   public function add(){
       return $this->fetch();
   }
   //添加联系方式提交
   public function add_info(){
    if($this->request->isPost()){
        $tel=input('post.tel');
        $telphone=input('post.telphone');
        $email=input('post.email');
        $address=input('post.address');
        $qr_code=input('post.qr_code');
        $tel_match='/^1[345789]\d{9}$/';
        $email_macth='/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/';
        if(!preg_match($tel_match,$tel)){
            $this->error('手机号格式有误');
        }
        if(!preg_match($email_macth,$email)){
            $this->error('邮箱格式有误');
        }
        $data['tel']=$tel;
        $data['telphone']=$telphone;
        $data['email']=$email;
        $data['qr_code']=$qr_code;
        $data['address']=$address;
        $data['mimetype']='image/'.trim(substr($qr_code, strrpos($qr_code, '.')),'.');
        $result=Db::name('company_contact')->insert($data);
        if($result){
          $this->success('添加成功');
        }else{
          $this->error('添加失败');
        }
     }
   }
   //编辑联系方式
   public function edit($ids=null){
       $row = Db::name('company_contact')->where('id','in',$ids)->find();
       if (!$row) {
           $this->error(__('No Results were found'));
       }
       if ($this->request->isPost()) {
           $tel=input('post.tel');
           $telphone=input('post.telphone');
           $email=input('post.email');
           $address=input('post.address');
           $qr_code=input('post.qr_code');
           $tel_match='/^1[345789]\d{9}$/';
           $email_macth='/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/';
           if(!preg_match($tel_match,$tel)){
               $this->error('手机号格式有误');
           }
           if(!preg_match($email_macth,$email)){
               $this->error('邮箱格式有误');
           }
           //修改二维码，将原来的二维码删除掉
           if($row['qr_code']!=$qr_code){
               $attachmentFile = ROOT_PATH . '/public' . $row['qr_code'];
               if (is_file($attachmentFile)) {
                   @unlink($attachmentFile);
               }
           }
           $data['tel']=$tel;
           $data['telphone']=$telphone;
           $data['email']=$email;
           $data['qr_code']=$qr_code;
           $data['address']=$address;
           $data['mimetype']='image/'.trim(substr($qr_code, strrpos($qr_code, '.')),'.');
           $result=Db::name('company_contact')->where(array('id'=>$row['id']))->update($data);
           if($result){
               $this->success('更新成功');
           }else{
               $this->error('更新失败');
           }
       }
       $this->view->assign("row", $row);
       return $this->view->fetch();
   }
   //删除联系方式
   public function del($ids=null){
       $result=Db::name('company_contact')->where(array('id'=>$ids))->find();
       $attachmentFile = ROOT_PATH . '/public' . $result['qr_code'];
       if (is_file($attachmentFile)) {
           @unlink($attachmentFile);
       }
       $res=Db::name('company_contact')->where(array('id'=>$ids))->delete();
       if($res){
          $this->success('删除成功');
       }else{
           $this->error('删除失败');
       }
   }
}