pipeline {
    environment {
        img = "sampleimage"
        registryCredentials = 'dockerhubcreds'
    }
    agent any
    stages {
        stage('build a docker image') {
            steps {
                script {
                    docker.build img + ":$BUILD_NUMBER"
                }
            }
        }
        stage('pushing to docker registry') {
            steps {
                script {
                    docker.withRegistry('', registryCredentials)
                    dockerImage.push("$BUILD_NUMBER")
                    dockerImage.push('latest')
                }
            }
        }
    }
}
