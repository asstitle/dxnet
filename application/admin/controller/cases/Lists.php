<?php
namespace app\admin\controller\cases;

use app\common\controller\Backend;
use fast\Tree;
use think\Db;
class Lists extends Backend
{
    protected $model = null;
    protected $model_do = null;
    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('CaseType');
        $this->model_do = model('CasesLists');
    }
    //案例列表
    public function index(){
        if ($this->request->isAjax()) {
            list($where, $sort, $order, $offset, $limit) = $this->buildparams();
            $total = Db::name('case_lists')->alias('a')
                ->join('fa_case_type b','a.type_id=b.id','LEFT')
                ->field('a.*,b.name')
                ->where($where)
                ->order($sort, $order)
                ->count();

            $list = Db::name('case_lists')->alias('a')
                ->join('fa_case_type b','a.type_id=b.id','LEFT')
                ->field('a.*,b.name')
                ->where($where)
                ->order($sort, $order)
                ->limit($offset, $limit)
                ->select();
            $result = array("total" => $total, "rows" => $list);
            return json($result);
        }
        return $this->fetch();
    }
    //添加
    public function add(){
     if($this->request->isPost()){
       $data['type_id']=input('post.type_id');
       $data['img']=input('post.img');
       $data['title']=input('post.title');
       $data['article_title']=input('post.article_title');
       $data['article_content']=htmlspecialchars(input('post.article_content'));
       $img=input('post.img');
       $data['mimetype']='image/'.trim(substr($img, strrpos($img, '.')),'.');
       $result=$this->model_do->allowField(true)->save($data);
       if($result){
         $this->success('添加成功');
       }else{
         $this->error('添加失败');
       }
     }
     $type_list=$this->model->get_type_lists();
     $this->assign('type_list',$type_list);
     return $this->fetch();
    }
    //编辑
    public function edit($ids=null){
        $row = Db::name('case_lists')->where('id','in',$ids)->find();
        if (!$row) {
            $this->error(__('No Results were found'));
        }
        if ($this->request->isPost()) {
            $data['type_id']=input('post.type_id');
            $data['img']=input('post.img');
            $data['title']=input('post.title');
            $data['article_title']=input('post.article_title');
            $data['article_content']=htmlspecialchars(input('post.article_content'));
            $img=input('post.img');
            $data['mimetype']='image/'.trim(substr($img, strrpos($img, '.')),'.');
            //修改图片，将原来的图片删除掉
            if($row['img']!=$img){
                $attachmentFile = ROOT_PATH . '/public' . $row['qr_code'];
                if (is_file($attachmentFile)) {
                    @unlink($attachmentFile);
                }
            }
            $result=Db::name('case_lists')->where('id','in',$ids)->update($data);
            if($result){
                $this->success('更新成功');
            }else{
                $this->error('更新失败');
            }
        }
        $type_list=$this->model->get_type_lists();
        $this->assign('type_list',$type_list);
        $this->view->assign("row", $row);
        $this->view->assign("content", htmlspecialchars_decode($row['article_content']));
        return $this->view->fetch();
    }
    //删除
    public function del($ids=null){
        $result=Db::name('case_lists')->where('id','in',$ids)->find();
        if($result['img']){
            $attachmentFile = ROOT_PATH . '/public' .$result['img'];
            @unlink($attachmentFile);
        }
        $res=Db::name('case_lists')->where('id','in',$ids)->delete();
        if($res){
            $this->success('删除成功');
        }else{
            $this->success('删除失败');
        }
    }
}