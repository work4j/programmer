# programmer
# 项目名称：程序员社区（很low，暂定）

# 版本：V0.0.1

# 项目框架：SringMVC + Mybatis + Mysql（或者 Postgresql，jdbc配置处更换下驱动） + JSP + Maven

# jdk版本：推荐 1.8

# Tomcat版本：推荐 8.0

# 分页插件：pageHelper（暂时还没加）

# 权限安全框架：木有，暂时自己写过滤器或者根据业务在代码中加判断。

# 说明：没有服务器，先自己本地建数据库。 项目访问路径 localhost:8080/programer

# 目前的目录结构：
  common: 公共类，目前放了一个工具类SystemHelper。里面有一些公用的方法，比如获取当前用户，获取session等。
  
  controller.admin: 后台管理业务的Controller。
  
  controller.fore: 前台业务的Controller。
  
  dao: dao接口和mapper.xml。
  
  filter: 过滤器，目前加了一个访问后台路径的拦截，判断是否登录和是否为后台用户。代码需完善。
  
  pojo: 实体类。
  
  service & impl: 业务逻辑  & 实现



# 2017-01-12
# 版本 V0.1.1
# 更改了过滤器代码，访问后台路径进行用户登录判断。
# 分页插件pageHelper已经加上，页面中还没有处理。
# 新增用户管理，可以查看用户列表，新增用户，删除用户。友好提示、表单验证未加。
# 后台样式用的layui。官网：http://www.layui.com/
