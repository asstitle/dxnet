<?php

namespace app\index\controller;
use app\common\controller\Home;

class Index extends Home
{

    //首页
    public function index()
    {
        return $this->view->fetch();
    }
    //新闻页
    public function news()
    {
        $newslist = [];
        return jsonp(['newslist' => $newslist, 'new' => count($newslist), 'url' => 'https://www.fastadmin.net?ref=news']);
    }

}
