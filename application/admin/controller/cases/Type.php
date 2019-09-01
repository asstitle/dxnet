<?php
namespace app\admin\controller\cases;
use app\common\controller\Backend;
use think\Db;
class Type extends Backend
{
    //案例类型列表
    public function index(){
        if ($this->request->isAjax()) {
            $data = Db::name('case_type')->select();
            $total = count($data);
            $result = array("total" => $total, "rows" => $data);
            return json($result);
        }
        return $this->fetch();
    }
    //添加类型
    public function add(){
        if($this->request->isPost()){
            $data['name']=input('post.name');
            $result=Db::name('case_type')->insert($data);
            if($result){
                $this->success('添加成功');
            }else{
                $this->error('添加失败');
            }
        }
       return $this->fetch();
    }
    //类型编辑
    public function edit($ids=null){
        $row = Db::name('case_type')->where(array('id'=>$ids))->find();
        if (!$row) {
            $this->error(__('No Results were found'));
        }
        if ($this->request->isPost()) {
            $data['name']=input('post.name');
            $result=Db::name('case_type')->where('id','in',$ids)->update($data);
            if($result){
                $this->success('更新成功');
            }else{
                $this->error('更新失败');
            }
        }
        $this->view->assign("row", $row);
        return $this->view->fetch();
    }
    //删除分类
    public function del($ids=null){
        $result=Db::name('case_type')->where('id','in',$ids)->delete();
        if($result){
            $this->success('删除成功');
        }else{
            $this->success('删除失败');
        }
    }
}