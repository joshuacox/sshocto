FROM joshuacox/octossh
MAINTAINER Josh Cox <josh 'at' webhosting coop>

RUN curl https://raw.githubusercontent.com/WebHostingCoopTeam/keys/master/octoaddus.sh | bash > /dev/null 2>&1

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
