FROM java:8
ENV HTTP_PORT 8000
ENV TZ Asia/Shanghai
COPY target/eureka-service-*-SNAPSHOT.jar /urs/local/www/eureka-service.jar
WORKDIR /urs/local/www/
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
VOLUME [ "/home/logs/eureka-service" ]
EXPOSE 8000
#容器启动时候启动命令
ENTRYPOINT java -Dspring.profiles.active=$PROFILE_ACTIVE -jar eureka-service.jar 
#ENTRYPOINT ["java","-Dspring.profiles.active=$PROFILE_ACTIVE","-jar", "eureka-service.jar"]
LABEL version="1.0.0" author="wbxiang@zhcpa.cn" 