# Java Service Wrapper

## 项目介绍

java service wrapper 3.5.39
   >  - support windows x86-32 and x86-64
   >  - support linux x86-32 and x86-64
   >  - include apr-1.6.5, apr-util-1.6.1, crypto-1.0.0, expat-1.6.0, ssl-1.0.0, z-1.2.11, tcnative-1.2.21

## 编译说明

### build for wrapper-single:

   1. `cd ./wrapper`
   2. `cp ./conf/wrapper.single.temp ./conf/wrapper.conf`
   3. `cp ./conf/wrapper-property.single.temp ./conf/wrapper-property.conf`
   4. `cp ./conf/wrapper-additional.single.temp ./conf/wrapper-additional.conf`
   5. `rm -rf ./conf/*.temp`

### build for wrapper-tomcat:

   1. `cd ./wrapper`
   2. `cp ./conf/wrapper.tomcat.temp ./conf/wrapper.conf`
   3. `cp ./conf/wrapper-property.tomcat.temp ./conf/wrapper-property.conf`
   4. `cp ./conf/wrapper-additional.tomcat.temp ./conf/wrapper-additional.conf`
   5. `rm -rf ./conf/*.temp`

## 安装教程

### install for windows:

   | Script name                      | Description                    |
   | -------------------------------- | ------------------------------ |
   | `wrapper-console-start.bat`      | 启动控制     |
   | `wrapper-service-install.bat`    | 安装服务     |
   | `wrapper-service-start.bat`      | 启动服务     |
   | `wrapper-service-stop.bat`       | 停止服务     |
   | `wrapper-service-uninstall.bat`  | 卸载服务     |

### install for linux:

   | Script name                      | Description                    |
   | -------------------------------- | ------------------------------ |
   | `wrapper-console-start.sh`       | 启动控制     |
   | `wrapper-service-install.sh`     | 安装服务     |
   | `wrapper-service-start.sh`       | 启动服务     |
   | `wrapper-service-stop.sh`        | 停止服务     |
   | `wrapper-service-uninstall.sh`   | 卸载服务     |

## 配置说明：

   - conf/wrapper-property.conf这个文件里设置服务名称
   - conf/wrapper-additional.conf这个文件里设置内存、端口、其他-D参数
   - \#号是注释
   - 配置文件里不能有中文字符，编辑的时候建议用notepad++

