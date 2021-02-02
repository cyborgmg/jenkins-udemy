pipeline {
    agent any
    stages{
        stage('Publish Container'){
           steps {
                sh label: 'Maven - Test', script: "chmod 777 ./container.sh && ./container.sh"
            }
        }
    }
}

