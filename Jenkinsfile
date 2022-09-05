pipeline {
    environment {
        registry = "sainath/project"
        registryCredential = 'docker-hub'
        dockerImage = ""
    }
    agent any
    stages {
        stage ('Build Docker Image') {
            steps {
                script {
                    docker.build registry + ":BUILD_NUMBER"
                }
            }
        }
        stage ('Push Docker Image') {
            steps {
                script {
                    dockerImage.push("$BUILD_NUMBER")
                    dockerImage.push('latest')
                }
            }
        }
    }
}
