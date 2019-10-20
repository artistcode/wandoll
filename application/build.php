<?php


return [
    // 生成应用公共文件
    '__file__' => ['common.php'],

    // 定义demo模块的自动生成 （按照实际定义的文件名生成）
    'admin'     => [
        '__file__'   => ['common.php'],
        '__dir__'    => ['behavior', 'controller', 'model'],
        'controller' => [
            'Index'
            ,'Base'
            ,'Administrator' // 管理员
            ,'AdministratorGroup' // 管理员组
            ,'Menu' // 菜单管理
            ,'Member' // 会员
            ,'Marketing' // 营销
            ,'Article'//文章管理
          ],
        'model'      => [  'Index'
            ,'Administrator' // 管理员
            ,'AdministratorGroup' // 管理员组
            ,'Menu' // 菜单管理
            ,'Member' // 会员
            ,'Marketing' // 营销
            ,'Article'//文章管理
            ],
    ],

    // 其他更多的模块定义
];
