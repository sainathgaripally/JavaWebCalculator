pipeline {
    environment {
        img = "sampleimage"
        registryCredentials = 'dockerhubcreds'
    }
    agent any
    stages {
        stage('build a docker imagessss') {
            steps {
                script {
                    docker.build img + ":$BUILD_NUMBER"
                }
            }
        }
    }
}
