FROM openjdk
ADD target/hellowjava.jar hellowjava.jar
ENTRYPOINT ["java", "-jar", "/hellowjava.jar"]
EXPOSE 2222
