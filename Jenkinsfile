pipeline {
    agent any
    stages {
        stage('docker build') {
            steps {
                sh "docker ps"
                sh "docker pull node:16-alpine"
                sh "docker build -t pruebareact ."
                sh "docker tag pruebareact vicarbar/react:${BUILD_NUMBER}"
                sh "docker images | grep pruebareact"
                sh "docker run -d -it -p 3008:3008 pruebareact"
            }
        }
        stage('docker push') {
            steps {
                sh "docker push vicarbar/react:${BUILD_NUMBER}"
            }
        }
    }
}

//echo "Hola Ejercicio 3"