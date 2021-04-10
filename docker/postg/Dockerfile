# docker build --tag=centosgcc .
# docker run -p 4000:80 centosgcc
#
FROM registry.access.redhat.com/rhel7/rhel
#FROM rhel7:latest
# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

#RUN yum group install "Development Tools"
#RUN curl -o e.rpm https://rpmfind.net/linux/opensuse/tumbleweed/repo/oss/noarch/eigen3-devel-3.3.7-2.2.noarch.rpm
#RUN rpm -Uvh e.rpm

# Set proxy server, replace host:port with values for your servers

# Run app.py when the container launches

