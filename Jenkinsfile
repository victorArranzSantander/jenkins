pipeline {
    agent any
    stages {
        stage('docker build') {
            steps {
                sh "docker ps"
                sh "docker pull node:16-alpine"
                sh "docker build -t pruebaDespliegueReact ."
                sh "docker tag pruebaDespliegueReact vicarbar/react:${BUILD_NUMBER}"
                sh "docker images | grep pruebaDespliegueReact"
                sh "docker run -p 3000:3000 -d dockerized-react"
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