FROM ubuntu
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    curl \
    nano \
    net-tools iputils-ping

# vamos a delegar la responsabilidad de las imágenes
# a los scripts llamados EntryPoints (script de inicio para un contenedor)
# mantener vivo el contenedor
# tail es un comando que nunca acaba su ejecución

#CMD ["tail", "-f", "/dev/null"]
#Copiar los entryPoints (admin) dentro del contenedor en /root/admin /bin/admin
RUN mkdir -p /root/base/ubuntu/admin
#Direcotrio actual del contenedor
WORKDIR /root/base/ubuntu/admin
COPY ./dockerfiles/base/ubuntu/admin .
RUN chmod o+x ./start.sh

ENTRYPOINT [ "executable" ]