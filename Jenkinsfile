pipeline {

    agent {
        label 'linuxmachine'
    }

    stages {
        stage('git checkout') {
            steps{
                git credentialsId: 'GitHub', 
                    url: 'https://github.com/mahi-442/dockerhub.git'
            }
        }
    }
}