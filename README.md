# wrapper

#### 项目介绍
java service wrapper 3.5.35

1. support windows x86-32 and x86-64;
2. support linux x86-32 and x86-64;
3. include apr-1.6.3, apr-util-1.6.1, crypto-1.0.0, expat-1.6.0, ssl-1.0.0, z-1.2.11, tcnative-1.2.17

#### 编译说明

1. build for singleapp:
   cd ./wrapper
   cp ./conf/wrapper.single.temp ./conf/wrapper.conf
   cp ./conf/wrapper-app-property.single.temp ./conf/wrapper-app-property.conf
   cp ./conf/wrapper-java-additional.single.temp ./conf/wrapper-java-additional.conf
   rm -rf ./conf/*.temp
2. build for tomcatapp:
   cd ./wrapper
   cp ./conf/wrapper.tomcat.temp ./conf/wrapper.conf
   cp ./conf/wrapper-app-property.tomcat.temp ./conf/wrapper-app-property.conf
   cp ./conf/wrapper-java-additional.tomcat.temp ./conf/wrapper-java-additional.conf
   rm -rf ./conf/*.temp

#### 安装教程

1. install for windows:
   wrapper-console-start.bat     : 启动控制
   wrapper-service-install.bat   : 安装服务
   wrapper-service-start.bat     : 启动服务
   wrapper-service-stop.bat      : 停止服务
   wrapper-service-uninstall.bat : 卸载服务
2. install for linux:
   wrapper-console-start.sh      : 启动控制
   wrapper-service-install.sh    : 安装服务
   wrapper-service-start.sh      : 启动服务
   wrapper-service-stop.sh       : 停止服务
   wrapper-service-uninstall.sh  : 卸载服务

#### 配置说明：

1. conf/wrapper-app-property.conf这个文件里设置服务名称
2. conf/wrapper-java-additional.conf这个文件里设置内存、端口、其他-D参数
