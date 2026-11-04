FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY GeminiServer.java index.html styles.css script.js d8a1c784b31f400f84f7f42e86f22701.png ./

RUN javac --add-modules jdk.httpserver GeminiServer.java

EXPOSE 8080

CMD ["java", "--add-modules", "jdk.httpserver", "GeminiServer"]
