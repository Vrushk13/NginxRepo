pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh '''
                /usr/bin/docker --version
                /usr/bin/docker build -t nginx-jenkins .
                '''
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                /usr/bin/docker stop nginx-container || true
                /usr/bin/docker rm nginx-container || true
                '''
            }
        }

        stage('Run NGINX Container') {
            steps {
                sh '''
                /usr/bin/docker run -d -p 9090:80 --name nginx-container nginx-jenkins
                '''
            }
        }
    }
}




