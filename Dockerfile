FROM openjdk:8-jre
ADD target/automation-1.0-SNAPSHOT.jar //
ENTRYPOINT ["java", "-cp", "/automation-1.0-SNAPSHOT.jar", "org.example.App"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
#ADD target/lib           /usr/share/myservice/lib
# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/myservice/automation.jar