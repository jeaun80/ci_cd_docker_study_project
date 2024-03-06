FROM openjdk:17-alpine

LABEL maintainer="kims1706@naver.com"

ARG JAR_FILE=build/libs/cicd-docker-practice-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar
# 빌드된 jar 파일을 app.jar이란 이름으로 container에 복사

ENTRYPOINT ["java","-jar","/app.jar"]
# ENTRYPOINT는 해당 컨테이너가 수행될 때 반드시 지정한 명령을 수행하게 됨
# 위의 경우에서는 container에서 app.jar 파일을 실행