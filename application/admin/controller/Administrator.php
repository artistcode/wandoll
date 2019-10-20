<?php
namespace app\admin\controller;

use think\Loader;
use think\Request;

class Administrator extends  Base
{
    private static  $Model;

    protected function initialize()
    {
       parent::initialize();
       self::$Model= new \app\admin\model\Administrator();
    }
    public function index()
    {
        if ($this->request->isAjax()){
            $result =  self::$Model->select();
            dump($result);
        }
        return $this->fetch();
    }
    public function  add(){
    }
    public function  renew(){
    }
    public function  delete(){
    }

}
