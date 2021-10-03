FROM centos:centos7
RUN yum install -y -q \


mysql \


python-setuptools \


python-setuptools-devel \


epel-release bind-utils \


postgresql \


postgresql-devel \


python-devel \


gcc
RUN yum install -y -q MySQL-python python-pip
RUN pip install --upgrade setuptools==44.0.0 &&\pip install --upgrade pip==20.3.4
RUN pip install -q 'ansible<2.7' 'pymongo<=3.5.1' 'bcrypt<=3.1.7' pexpect psycopg2-binary
