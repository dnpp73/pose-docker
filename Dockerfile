FROM i386/ubuntu:bionic-20220401

RUN apt-get update && apt-get install -y make xauth && apt-get -y clean && rm -rf /var/lib/apt/lists/*

COPY ./packages /usr/local/palmos/packages

RUN dpkg -i /usr/local/palmos/packages/libxi6_1.7.9-1_i386.deb \
    && dpkg -i /usr/local/palmos/packages/libglib1.2ldbl_1.2.10-19build1_i386.deb \
    && dpkg -i /usr/local/palmos/packages/libgtk1.2-common_1.2.10-18.1build2_all.deb \
    && dpkg -i /usr/local/palmos/packages/libgtk1.2_1.2.10-18.1build2_i386.deb \
    && dpkg -i /usr/local/palmos/packages/libxext6_1.3.3-1_i386.deb \
    && dpkg -i /usr/local/palmos/packages/pilrc_3.2-3build1_i386.deb \
    && dpkg -i /usr/local/palmos/packages/pilrcui_3.2-3build1_i386.deb

RUN tar xvfz /usr/local/palmos/packages/prc-tools-remix-2.3.5.i386.tar.gz -C / \
    && tar xvfz /usr/local/palmos/packages/pose-3.5-2.i386.tar.gz -C / \
    && tar xvfz /usr/local/palmos/packages/pose-skins-1.9-1.noarch.tar.gz -C /

CMD ["/usr/bin/pose"]
