FROM joshuacox/octossh
MAINTAINER Josh Cox <josh 'at' webhosting coop>

RUN curl https://raw.githubusercontent.com/WebHostingCoopTeam/keys/master/octoaddus.sh | bash > /dev/null 2>&1

# PORTS_FROM_HOST 2022 22
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
