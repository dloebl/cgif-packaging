FROM fedora:34
# install needed software for building the RPM(s)
RUN yum update -y
RUN yum install rpmdevtools -y
RUN yum install gcc -y
RUN yum install meson -y
RUN yum install ninja-build -y
RUN yum install git -y
RUN yum install mock -y
COPY buildrpms.sh /root/buildrpms.sh
ENTRYPOINT ["/root/buildrpms.sh"]
