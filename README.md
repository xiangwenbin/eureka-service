## mvn及容器打包命令

* maven 打包 mvn clean package -U -Pproduction -Dmaven.test.skip=true
* window maven 打包 mvn clean package -U  -D maven.test.skip=true
* maven 打包并生成镜像部署 mvn clean package -U -D maven.test.skip dockerfile:build dockerfile:push
* 手动打包镜像 docker build -t eureka-service:1.0.0 .
* 启动镜像 docker run --name eureka-service -d -p 8000:8000 -v /home/logs/eureka-service:/home/logs/eureka-service eureka-service:1.0.0
* 停止镜像 docker stop eureka-service 
 docker run --name eureka-service -d -p 8000:8000 10.0.101.33:80/library/eureka-service