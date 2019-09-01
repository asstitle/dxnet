<?php
namespace app\admin\model;
use think\Model;
class CasesLists extends Model
{
    // 表名
    protected $name = 'case_lists';
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    // 定义时间戳字段名
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';
}