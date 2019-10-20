create database if not exists  wandoll;
# 管理员表
create table if not exists w_admin(
  admin_id  int unsigned  auto_increment comment '主键id',
  admin_nickname varchar(5) not null default '' comment '管理员昵称',
  admin_account  varchar(12) not null default  '' comment '管理员账号',
  admin_password char(32) not null default '' comment '管理员密码',
  admin_group_id int unsigned not null  comment '所属管理员组',
  primary key(admin_id)
)engine =myisam default  charset ='utf8' comment '管理员数据表';

CREATE TABLE IF NOT EXISTS w_admin_group(
  admin_group_id int unsigned auto_increment  comment '主键id',
  admin_group_name varchar(5)  not null default '' comment '组名称',
  menu_id  varchar(50) not null default '' comment '组权限',
  primary key(admin_group_id)
)engine =myisam default charset ='utf8' comment '管理员组';

create  table if not exists  w_menu(
  menu_id  int unsigned auto_increment  comment '主键id',
  menu_name varchar(5) not null default '' comment '菜单名称',
  menu_controller varchar(5) not null default '' comment '控制器名称',
  menu_method varchar(5) not null default '' comment '方法昵称',
  menu_icon varchar(8) not null default  ''comment  '菜单图标',
  menu_type  tinyint(1) not null default 0 comment '菜单类型  0 目录 1按钮',
  primary key(menu_id)
)engine=myisam default  charset =utf8 comment '菜单';

create table if not exists  w_article(
  article_id  int unsigned auto_increment comment '主键',
  article_title varchar(50) not null default '' comment '文章标题',
  article_source varchar(50) not null default '' comment '文章来源',
  article_author varchar(10) not null default '' comment '作者',
  article_short varchar(20) not null default '' comment '简短标题',
  article_intro varchar(30) not null default '' comment '文章简介',
  article_content text  comment '文章内容',
  article_icon varchar(30) not null default '' comment '文章图片',
  primary key(article_id)
)engine= myisam default charset =utf8;

create table if not exists   w_article_category(
  article_category_id  smallint unsigned  auto_increment  comment '主键',
  article_category_name varchar(10) not null default ''  comment '文章分类名称',
  article_category_pid  int unsigned  not null  default 0 comment  '主键id',
  primary key (article_category_id)
)engine =myisam default  charset  utf8;

