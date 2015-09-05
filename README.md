# streamparse_quickstart
Docker: [streamparse](https://github.com/Parsely/streamparse) quickstart example

Docker Hub: https://hub.docker.com/r/gchiam/streamparse_quickstart/


## Building Docker image
```
$ ./build_docker.sh
Sending build context to Docker daemon 50.18 kB
Step 0 : FROM gchiam/openjdk:8
8: Pulling from gchiam/openjdk
31f630c65071: Pull complete
a8bc19c87f14: Pull complete
2182cb95189d: Pull complete
5832a3f6466a: Pull complete
a9621b7e117e: Pull complete
Digest: sha256:fea451d8687296b64c67656c15bfa66cb2a4caf69eca80d4272f339234c04259
Status: Downloaded newer image for gchiam/openjdk:8
 ---> a9621b7e117e
Step 1 : MAINTAINER Gordoon Chiam <gordon.chiam@gmail.com>
 ---> Running in 1927e13ed763
 ---> 47476bfb571d
Removing intermediate container 1927e13ed763
Step 2 : RUN apk --update add     ca-certificates     bash     curl     build-base     gcc     python     python-dev     py-pip
 ---> Running in 1a66ead132b8
fetch http://dl-4.alpinelinux.org/alpine/v3.2/main/x86_64/APKINDEX.tar.gz
(1/46) Upgrading musl (1.1.9-r2 -> 1.1.9-r5)
(2/46) Upgrading musl-utils (1.1.9-r2 -> 1.1.9-r5)
(3/46) Installing ncurses-terminfo-base (5.9-r3)
(4/46) Installing ncurses-libs (5.9-r3)
(5/46) Installing readline (6.3.008-r0)
(6/46) Installing bash (4.3.33-r0)
(7/46) Installing binutils-libs (2.25-r3)
(8/46) Installing binutils (2.25-r3)
(9/46) Installing libgomp (4.9.2-r5)
(10/46) Installing pkgconf (0.9.11-r0)
(11/46) Installing pkgconfig (0.25-r1)
(12/46) Installing gmp (6.0.0a-r0)
(13/46) Installing mpfr3 (3.1.2-r0)
(14/46) Installing mpc1 (1.0.1-r0)
(15/46) Installing libstdc++ (4.9.2-r5)
(16/46) Installing gcc (4.9.2-r5)
(17/46) Installing make (4.1-r0)
(18/46) Installing patch (2.7.5-r0)
(19/46) Installing musl-dbg (1.1.9-r5)
(20/46) Installing libc6-compat (1.1.9-r5)
(21/46) Installing musl-dev (1.1.9-r5)
(22/46) Installing libc-dev (0.7-r0)
(23/46) Installing fortify-headers (0.4-r1)
(24/46) Installing g++ (4.9.2-r5)
(25/46) Installing build-base (0.4-r0)
(26/46) Installing run-parts (4.4-r0)
(27/46) Installing openssl (1.0.2d-r0)
(28/46) Installing lua5.2-libs (5.2.4-r0)
(29/46) Installing lua5.2 (5.2.4-r0)
(30/46) Installing ncurses-widec-libs (5.9-r3)
(31/46) Installing lua5.2-posix (33.3.1-r2)
(32/46) Installing ca-certificates (20141019-r2)
(33/46) Installing libssh2 (1.5.0-r0)
(34/46) Installing curl (7.42.1-r0)
(35/46) Installing libbz2 (1.0.6-r3)
(36/46) Installing expat (2.1.0-r1)
(37/46) Installing libffi (3.2.1-r0)
(38/46) Installing gdbm (1.11-r0)
(39/46) Installing sqlite-libs (3.8.10.2-r0)
(40/46) Installing python (2.7.10-r1)
(41/46) Installing py-setuptools (1.1.7-r0)
(42/46) Installing py-pip (6.1.1-r0)
(43/46) Installing python-doc (2.7.10-r1)
(44/46) Installing python-tests (2.7.10-r1)
(45/46) Installing py-gdbm (2.7.10-r1)
(46/46) Installing python-dev (2.7.10-r1)
Executing busybox-1.23.2-r0.trigger
Executing ca-certificates-20141019-r2.trigger
OK: 224 MiB in 62 packages
 ---> d6bb4cb924f1
Removing intermediate container 1a66ead132b8
Step 3 : RUN pip install -U pip
 ---> Running in ff46d2fbf809
You are using pip version 6.1.1, however version 7.1.2 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.
Collecting pip
  Downloading pip-7.1.2-py2.py3-none-any.whl (1.1MB)
Installing collected packages: pip
  Found existing installation: pip 6.1.1
    Uninstalling pip-6.1.1:
      Successfully uninstalled pip-6.1.1
Successfully installed pip-7.1.2
 ---> 77464cc4c84f
Removing intermediate container ff46d2fbf809
Step 4 : ENV LEIN_ROOT 1
 ---> Running in 3cb50ad4781d
 ---> 4e0e3afbf03a
Removing intermediate container 3cb50ad4781d
Step 5 : RUN curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > ./lein
 ---> Running in fc623de6a351
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 12418  100 12418    0     0   9766      0  0:00:01  0:00:01 --:--:-- 11951
 ---> 61a1dfec94d8
Removing intermediate container fc623de6a351
Step 6 : RUN chmod a+x ./lein
 ---> Running in 185a5eb2dc76
 ---> 44344d628ad4
Removing intermediate container 185a5eb2dc76
Step 7 : RUN mv ./lein /usr/bin/lein
 ---> Running in dba125eba511
 ---> d95b8003dcfd
Removing intermediate container dba125eba511
Step 8 : RUN lein version
 ---> Running in 2162f43a41ca
Downloading Leiningen to /root/.lein/self-installs/leiningen-2.5.2-standalone.jar now...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   408    0   408    0     0    376      0 --:--:--  0:00:01 --:--:--   379
100 15.0M  100 15.0M    0     0  1010k      0  0:00:15  0:00:15 --:--:-- 1204k
Leiningen 2.5.2 on Java 1.8.0_66-ea Java HotSpot(TM) 64-Bit Server VM
 ---> b6dd3ca80eae
Removing intermediate container 2162f43a41ca
Step 9 : RUN pip install streamparse
 ---> Running in e7b4b57597be
Collecting streamparse
  Downloading streamparse-2.0.2.tar.gz (122kB)
Collecting invoke (from streamparse)
  Downloading invoke-0.10.1-py2.py3-none-any.whl (166kB)
Collecting fabric (from streamparse)
  Downloading Fabric-1.10.2-py2-none-any.whl (90kB)
Collecting jinja2 (from streamparse)
  Downloading Jinja2-2.8-py2.py3-none-any.whl (263kB)
Collecting requests (from streamparse)
  Downloading requests-2.7.0-py2.py3-none-any.whl (470kB)
Collecting prettytable (from streamparse)
  Downloading prettytable-0.7.2.tar.bz2
Collecting six (from streamparse)
  Downloading six-1.9.0-py2.py3-none-any.whl
Collecting contextlib2 (from streamparse)
  Downloading contextlib2-0.4.0.tar.gz
Collecting paramiko>=1.10 (from fabric->streamparse)
  Downloading paramiko-1.15.2-py2.py3-none-any.whl (165kB)
Collecting MarkupSafe (from jinja2->streamparse)
  Downloading MarkupSafe-0.23.tar.gz
Collecting ecdsa>=0.11 (from paramiko>=1.10->fabric->streamparse)
  Downloading ecdsa-0.13-py2.py3-none-any.whl (86kB)
Collecting pycrypto!=2.4,>=2.1 (from paramiko>=1.10->fabric->streamparse)
  Downloading pycrypto-2.6.1.tar.gz (446kB)
Installing collected packages: invoke, ecdsa, pycrypto, paramiko, fabric, MarkupSafe, jinja2, requests, prettytable, six, contextlib2, streamparse
  Running setup.py install for pycrypto
  Running setup.py install for MarkupSafe
  Running setup.py install for prettytable
  Running setup.py install for contextlib2
  Running setup.py install for streamparse
Successfully installed MarkupSafe-0.23 contextlib2-0.4.0 ecdsa-0.13 fabric-1.10.2 invoke-0.10.1 jinja2-2.8 paramiko-1.15.2 prettytable-0.7.2 pycrypto-2.6.1 requests-2.7.0 six-1.9.0 streamparse-2.0.2
 ---> 17e257ea0554
Removing intermediate container e7b4b57597be
Step 10 : RUN sparse quickstart wordcount
 ---> Running in 86bee6454afa

Creating your wordcount streamparse project...
    create    wordcount
    create    wordcount/.gitignore
    create    wordcount/config.json
    create    wordcount/fabfile.py
    create    wordcount/project.clj
    create    wordcount/README.md
    create    wordcount/src
    create    wordcount/src/bolts
    create    wordcount/src/bolts/__init__.py
    create    wordcount/src/bolts/wordcount.py
    create    wordcount/src/spouts
    create    wordcount/src/spouts/__init__.py
    create    wordcount/src/spouts/words.py
    create    wordcount/tasks.py
    create    wordcount/topologies
    create    wordcount/topologies/wordcount.clj
    create    wordcount/virtualenvs
    create    wordcount/virtualenvs/wordcount.txt
Done.

Try running your topology locally with:

    cd wordcount
    sparse run
 ---> 4d08cd9ef46f
Removing intermediate container 86bee6454afa
Step 11 : WORKDIR /wordcount
 ---> Running in c9371e6176ba
 ---> 1231b0a21edb
Removing intermediate container c9371e6176ba
Step 12 : ENTRYPOINT /bin/bash
 ---> Running in cf506e400b13
 ---> 5f33774cd0d2
Removing intermediate container cf506e400b13
Successfully built 5f33774cd0d2
```


## Running
```
$ ./run.sh
bash-4.3# ls
README.md    config.json  fabfile.py   project.clj  src          tasks.py     topologies   virtualenvs
bash-4.3# sparse run
Running wordcount topology...
...
3375 [Thread-14-count-bolt] INFO  backtype.storm.daemon.executor - Preparing bolt count-bolt:(4)
13380 [Thread-11-__acker] INFO  backtype.storm.daemon.executor - Preparing bolt __acker:(2)
13384 [Thread-11-__acker] INFO  backtype.storm.daemon.executor - Prepared bolt __acker:(2)
13403 [Thread-14-count-bolt] INFO  backtype.storm.utils.ShellProcess - Storm multilang serializer: backtype.storm.multilang.JsonSerializer
13411 [Thread-17-__system] INFO  backtype.storm.daemon.executor - Preparing bolt __system:(-1)
13423 [Thread-17-__system] INFO  backtype.storm.daemon.executor - Prepared bolt __system:(-1)
13572 [Thread-14-count-bolt] INFO  backtype.storm.task.ShellBolt - Launched subprocess with pid 593
13579 [Thread-14-count-bolt] INFO  backtype.storm.task.ShellBolt - Start checking heartbeat...
13579 [Thread-14-count-bolt] INFO  backtype.storm.daemon.executor - Prepared bolt count-bolt:(4)
13917 [Thread-12-count-bolt] INFO  backtype.storm.daemon.executor - Preparing bolt count-bolt:(3)
13918 [Thread-12-count-bolt] INFO  backtype.storm.utils.ShellProcess - Storm multilang serializer: backtype.storm.multilang.JsonSerializer
13947 [Thread-19-word-spout] INFO  backtype.storm.daemon.executor - Opening spout word-spout:(5)
13949 [Thread-19-word-spout] INFO  backtype.storm.utils.ShellProcess - Storm multilang serializer: backtype.storm.multilang.JsonSerializer
13968 [Thread-21-__system] INFO  backtype.storm.daemon.executor - Preparing bolt __system:(-1)
13974 [Thread-21-__system] INFO  backtype.storm.daemon.executor - Prepared bolt __system:(-1)
13983 [Thread-23-__acker] INFO  backtype.storm.daemon.executor - Preparing bolt __acker:(1)
13983 [Thread-23-__acker] INFO  backtype.storm.daemon.executor - Prepared bolt __acker:(1)
14011 [Thread-12-count-bolt] INFO  backtype.storm.task.ShellBolt - Launched subprocess with pid 598
14027 [Thread-12-count-bolt] INFO  backtype.storm.task.ShellBolt - Start checking heartbeat...
14028 [Thread-12-count-bolt] INFO  backtype.storm.daemon.executor - Prepared bolt count-bolt:(3)
14086 [Thread-19-word-spout] INFO  backtype.storm.spout.ShellSpout - Launched subprocess with pid 600
14087 [Thread-19-word-spout] INFO  backtype.storm.daemon.executor - Opened spout word-spout:(5)
14093 [Thread-19-word-spout] INFO  backtype.storm.daemon.executor - Activating spout word-spout:(5)
14094 [Thread-19-word-spout] INFO  backtype.storm.spout.ShellSpout - Start checking heartbeat...
14121 [Thread-25] INFO  backtype.storm.task.ShellBolt - ShellLog pid:593, name:count-bolt dog: 1
14124 [Thread-27] INFO  backtype.storm.task.ShellBolt - ShellLog pid:598, name:count-bolt cat: 1
14128 [Thread-25] INFO  backtype.storm.task.ShellBolt - ShellLog pid:593, name:count-bolt zebra: 1
14132 [Thread-27] INFO  backtype.storm.task.ShellBolt - ShellLog pid:598, name:count-bolt elephant: 1
14146 [Thread-25] INFO  backtype.storm.task.ShellBolt - ShellLog pid:593, name:count-bolt cat: 1
14147 [Thread-27] INFO  backtype.storm.task.ShellBolt - ShellLog pid:598, name:count-bolt dog: 1
14153 [Thread-27] INFO  backtype.storm.task.ShellBolt - ShellLog pid:598, name:count-bolt zebra: 1
14160 [Thread-25] INFO  backtype.storm.task.ShellBolt - ShellLog pid:593, name:count-bolt elephant: 1
14166 [Thread-27] INFO  backtype.storm.task.ShellBolt - ShellLog pid:598, name:count-bolt dog: 2
14169 [Thread-25] INFO  backtype.storm.task.ShellBolt - ShellLog pid:593, name:count-bolt cat: 2
14173 [Thread-25] INFO  backtype.storm.task.ShellBolt - ShellLog pid:593, name:count-bolt zebra: 2
14178 [Thread-27] INFO  backtype.storm.task.ShellBolt - ShellLog pid:598, name:count-bolt elephant: 2
14181 [Thread-27] INFO  backtype.storm.task.ShellBolt - ShellLog pid:598, name:count-bolt dog: 3
14186 [Thread-25] INFO  backtype.storm.task.ShellBolt - ShellLog pid:593, name:count-bolt cat: 3
14192 [Thread-25] INFO  backtype.storm.task.ShellBolt - ShellLog pid:593, name:count-bolt zebra: 3
14194 [Thread-27] INFO  backtype.storm.task.ShellBolt - ShellLog pid:598, name:count-bolt elephant: 3
...
```
