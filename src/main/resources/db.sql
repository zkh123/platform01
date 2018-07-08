create table users (
   id int primary key auto_increment,
   email varchar(100) unique not null,
   nickname varchar(40), -- 用户昵称 
   password varchar(40),
   activecode varchar(40), --  激活码 邮件发送 根据注册 激活码 判断 ...激活码有无过期  激活码是否正确!  
   activestate int ,  --  判断用户注册是否激活了  0  未激活  : 1: 激活成功(javamail  发送邮件  update  activestate = 1)   
   role varchar(100) ,  --  用户角色  普通用户 user  admin  商城需求决定该字段  
   registertime timestamp   -- 注册时间  : 京东 : 谢谢你陪我走了360 天
);



