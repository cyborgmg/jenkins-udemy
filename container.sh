#!/bin/bash

sshpass -p c6b94gmg scp ./target/Dockerfile cyborg@192.168.0.8:/tmp/

sshpass -p c6b94gmg scp ./target/tasks-backend.war cyborg@192.168.0.8:/tmp/

sshpass -p c6b94gmg scp ../fontend/target/tasks.war cyborg@192.168.0.8:/tmp/
