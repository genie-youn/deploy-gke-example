FROM openjdk:8-jdk-alpine

# root 권한으로 실행되지 않도록 사용자 그룹 추가.
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring

VOLUME /tmp
COPY build/libs/*.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
