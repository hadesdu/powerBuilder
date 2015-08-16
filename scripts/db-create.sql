
use `h5_offline_build`;

#-------------
# Tables
#-------------


drop table if exists `resource`;
create table `sourse`(
    `id` int(10) not null auto_increment comment '自增主键。',
    `url` varchar(128) not null default '0' comment '资源路径',
    `size` decimal(6,2) not null default '0' comment '资源大小',
    `uid` char(16) not null default '0' comment '创建者的用户id',
    `name` varchar(128) not null default '' comment '资源名称',
    `ctime` datetime not null comment '创建时间',
    `start` datetime not null comment '上线时间',
    `end` datetime not null comment '下线时间',
    primary key (`id`)
) engine=innodb default charset=utf8 comment='资源列表';
