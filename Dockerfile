FROM   centos:7
MAINTAINER yijunjun "junjunyi@gmail.com"

# ensure local python is preferred over distribution python
ENV PATH /usr/local/bin:$PATH

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

ADD web /root/web

ADD python3.6 /usr/bin/python3.6

EXPOSE 80

CMD nohup /root/web/main.py &
