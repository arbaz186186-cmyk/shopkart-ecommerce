pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t shopkart:v1 .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker stop shopkart-container || true
                docker rm shopkart-container || true
                docker run -d --name shopkart-container -p 8099:80 shopkart:v1
                '''
            }
        }

    }
}
