FROM openjdk:17

WORKDIR /jenkins

VOLUME ["/jenkins/agent", "/jenkins/work"]

CMD ["java", "-jar", "/jenkins/agent/agent.jar", \
     "-url", "http://host.docker.internal:8080/", \
     "-secret", "0015bf537eab7e270a45426d71997f43e3d12c594337b4960e9df547e1eab097", \
     "-name", "selfNode", \
     "-webSocket", \
     "-workDir", "/jenkins/work"]