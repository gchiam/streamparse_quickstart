# streamparse_quickstart
Docker: [streamparse](https://github.com/Parsely/streamparse) quickstart example

Docker Hub: https://hub.docker.com/r/gchiam/streamparse_quickstart/

[![Build Status](https://travis-ci.org/gchiam/streamparse_quickstart.svg?branch=master)](https://travis-ci.org/gchiam/streamparse_quickstart)

## Building Docker image
```
Sending build context to Docker daemon 69.63 kB
Step 0 : FROM gchiam/streamparse
 ---> 1ab068719254
Step 1 : MAINTAINER Gordoon Chiam <gordon.chiam@gmail.com>
 ---> Running in 4d4cd10223b0
 ---> aba96ddc4aba
Removing intermediate container 4d4cd10223b0
Step 2 : RUN sparse quickstart wordcount
 ---> Running in 1c023880a794

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
 ---> 034342c6c89d
Removing intermediate container 1c023880a794
Step 3 : WORKDIR /wordcount
 ---> Running in 43c5dafcdc76
 ---> 40a191a33735
Removing intermediate container 43c5dafcdc76
Step 4 : ENTRYPOINT /bin/bash
 ---> Running in 4a2db3ed229c
 ---> f59ef9af295e
Removing intermediate container 4a2db3ed229c
Successfully built f59ef9af295e
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
