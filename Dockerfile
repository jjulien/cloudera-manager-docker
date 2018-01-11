FROM docker.io/centos:7

# Install Java
#RUN yum install -y java-1.8.0-openjdk

# Setup Cloudera Repos
ADD etc/yum.repos.d/cloudera-manager.repo /etc/yum.repos.d/cloudera-manager.repo

RUN yum install -y oracle-j2sdk1.7

RUN yum install -y cloudera-manager-daemons cloudera-manager-server
RUN yum install -y yum install cloudera-manager-server-db-2
RUN yum install -y which psmisc

RUN yum install -y openssh-clients openssh-server
ADD scripts/start_cdm.sh /start_cdm.sh


CMD ["/start_cdm.sh"]
# Install and initiate Zookeeper
#RUN yum install -y zookeeper zookeeper-server
#RUN mkdir -p /var/lib/zookeeper; chown -R zookeeper /var/lib/zookeeper/; service zookeeper-server init
