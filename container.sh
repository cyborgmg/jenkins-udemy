#!/bin/bash

sshpass -p c6b94gmg ssh cyborg@192.168.0.8 rm -rf /home/cyborg/Dockers/tasks
sshpass -p c6b94gmg ssh cyborg@192.168.0.8 mkdir -p /home/cyborg/Dockers/tasks

sshpass -p c6b94gmg scp -oStrictHostKeyChecking=no Dockerfile cyborg@192.168.0.8:/home/cyborg/Dockers/tasks/
sshpass -p c6b94gmg scp -oStrictHostKeyChecking=no ./tasks-backend/target/tasks-backend.war cyborg@192.168.0.8:/home/cyborg/Dockers/tasks/
sshpass -p c6b94gmg scp -oStrictHostKeyChecking=no ./tasks-frontend/target/tasks.war cyborg@192.168.0.8:/home/cyborg/Dockers/tasks/

#sshpass -p c6b94gmg ssh cyborg@192.168.0.8 
