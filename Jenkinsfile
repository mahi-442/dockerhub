pipeline {

    

    stages {
        stage('git checkout') {
            steps {
                git credentialsId: 'GitHub', 
                    url: 'https://github.com/mahi-442/dockerhub.git'
            }
        }
        stage('docker build') {
            steps {
                sh "docker build -t hue:v1 ."
            }
        }
    }
}