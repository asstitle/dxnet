<?php
namespace app\index\controller;
use app\common\controller\Home;

class News extends Home
{
  //新闻页
  public function news(){
      return $this->fetch();
  }
  //新闻详情
  public function newsinfo(){
      return $this->fetch();
  }
}