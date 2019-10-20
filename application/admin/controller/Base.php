<?php
namespace app\admin\controller;
use think\Controller;
class Base extends Controller
{

    protected function initialize()
    {
        $this->view->filter(function($content){
            return str_replace("./",'/template/',$content);
        });
    }
    // 格式化api
    protected  function  format(){
        $status_code = config('API_STATUS');
        dump($status_code);
    }
}
