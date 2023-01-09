pipeline {
    agent any
    stages {
        stage('docker build') {
            steps {
                sh "docker build -t pruebacid ."
                sh "docker tag pruebacid victorArranzSantander/jenkins:${BUILD_NUMBER}"
            }
        }
        stage('docker push') {
            steps {
                sh "docker push victorArranzSantander/jenkins:${BUILD_NUMBER}"
            }
        }
    }
}