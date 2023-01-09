pipeline {
    agent any
    stages {
        stage('docker build') {
            steps {
                sh "docker ps"
                sh "docker pull node:16"
                sh "docker build -t pruebacicd ."
                sh "docker tag pruebacicd victorArranzSantander/jenkins:${BUILD_NUMBER}"
            }
        }
        stage('docker push') {
            steps {
                sh "docker push victorArranzSantander/jenkins:${BUILD_NUMBER}"
            }
        }
    }
}