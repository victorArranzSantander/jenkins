pipeline {
    agent any
    stages {
        stage('docker build') {
            steps {
                sh "docker build -t ${name-app} ."
                sh "docker tag ${name-app} formadorfullstacktalentomobile/nodecicd:${BUILD_NUMBER}"
            }
        }
        stage('docker push') {
            steps {
                sh "echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin"
                sh "docker push formadorfullstacktalentomobile/nodecicd:${BUILD_NUMBER}"
            }
        }
    }
}