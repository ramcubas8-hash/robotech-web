# 1. Usamos Tomcat 11 y JDK 21 (Es la versión "Long Term Support" más cercana a la 23)
FROM tomcat:11.0-jdk21

# 2. Limpiamos el servidor
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copiamos tu archivo WAR (Asegúrate de que el nombre sea el de tu carpeta target)
COPY target/ProyectoRobotech-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# 4. Puerto
EXPOSE 8080

# 5. Ejecución
CMD ["catalina.sh", "run"]