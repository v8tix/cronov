FROM debian:buster-20200130
LABEL MAINTAINER="V8TIX"
LABEL MAIL="info@v8tix.com"
RUN ["/bin/bash", "-c", "mkdir /home/libraries"]
RUN ["/bin/bash", "-c", "mkdir /home/libraries/zemni"]
ADD repositories /home/repositories
ADD packages /home/packages
ADD entrypoint /home/entrypoint
RUN ["/bin/bash", "-c", "chmod 777 /var/log/"]
RUN ["/bin/bash", "-c", "chmod +x -R /home/repositories"]
RUN ["/bin/bash", "-c", "chmod +x -R /home/packages"]
RUN ["/bin/bash", "-c", "chmod +x -R /home/entrypoint"]
RUN ["/bin/bash", "-c", "/home/repositories/repos.sh"]
RUN ["/bin/bash", "-c", "/home/packages/packages.sh"]
RUN ["/bin/bash", "-c", "git clone https://github.com/v8tix/zemni.git /home/libraries/zemni"]
RUN ["/bin/bash", "-c", "chmod +x -R /home/libraries/zemni"]
RUN ["/bin/bash", "-c", "/home/libraries/zemni/system/setup/group_user/group_user.sh"]
RUN ["/bin/bash", "-c", "/home/libraries/zemni/system/setup/locale/locale.sh"]
ENV LANG en_US.utf8
RUN ["/bin/bash", "-c", "rm -rf /home/packages"]
RUN ["/bin/bash", "-c", "mv /home/entrypoint /home/v8tix"]
RUN ["/bin/bash", "-c", "mv /home/libraries /home/v8tix"]
ENTRYPOINT ["/home/v8tix/entrypoint/entrypoint.sh"]
# Do not set the default user in the base otherwise
# implementations will not be able to update the image
# USER v8tix:v8tix