pipeline {

    agent any

    environment {
        DOCKER_TAG = getVersion()
    }

    stages {
        stage('git checkout') {
            steps {
                git credentialsId: 'GitHub', 
                    url: 'https://github.com/mahi-442/dockerhub.git'
            }
        }
        stage('docker build') {
            steps {
                sh "docker build . -t mahi9618/docker_442:${DOCKER_TAG}"
            }
        }
        stage('docker push') {
            steps{
                withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerHubPwd')]) {
                    sh "docker login -u mahi9618 -p ${dockerHubPwd}"
                }
                sh "docker push mahi9618/docker_442:${DOCKER_TAG}"
            }
        }
    }
}
def getVersion() {
    def commitHash = sh label: '', returnStdout: true, script: 'git rev-parse --short HEAD'
    return commitHash
}