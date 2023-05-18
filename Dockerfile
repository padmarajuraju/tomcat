FROM openjdk:11
COPY . /var/www/java
WORKDIR /var/www/java
RUN javac Hello.java
EXPOSE 8090
CMD ["java", "Hello"]
