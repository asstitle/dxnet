<?php


namespace app\admin\model;


use think\Model;

class CaseType extends Model
{
    // 表名
    protected $name = 'case_type';
    //获取类型列表
    public function get_type_lists()
    {
        $res =$this->order('id asc')->select();
        return $res;
    }
}