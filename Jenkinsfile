pipeline {
    agent any

    tools {nodejs "node"}

    stages {
        stage('Build') {
            steps {
            sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') { 
            steps {
                sh './jenkins/scripts/deliver.sh' 
                sh './jenkins/scripts/kill.sh'
            }
        }   
    }
}