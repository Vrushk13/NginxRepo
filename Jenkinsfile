pipeline {
    agent any

    stages {

        stage('Check Docker') {
            steps {
                sh '''
                whoami
                id
                docker --version
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t nginx-jenkins .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                docker stop nginx-container || true
                docker rm nginx-container || true
                '''
            }
        }

        stage('Run NGINX Container') {
            steps {
                sh 'docker run -d -p 9090:80 --name nginx-container nginx-jenkins'
            }
        }
    }
}





