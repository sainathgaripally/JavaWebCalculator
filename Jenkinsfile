pipeline {
    environment {
        img = "sampleimage"
        registryCredentials = 'dockerhubcreds'
    }
    agent any
    stages {
        stage('build a docker imagesssseses') {
            steps {
                script {
                    docker.build img + ":$BUILD_NUMBER"
                }
            }
        }
    }
}
