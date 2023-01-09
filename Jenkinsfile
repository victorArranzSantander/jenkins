pipeline {
    agent any
    stages {
        stage('docker build') {
            steps {
                sh "docker build -t pruebacicd ."
                sh "docker tag pruebacicd victorArranzSantander/jenkins.git:${BUILD_NUMBER}"
            }
        }
        stage('docker push') {
            steps {
                sh "docker push victorArranzSantander/jenkins.git:${BUILD_NUMBER}"
            }
        }
    }
}