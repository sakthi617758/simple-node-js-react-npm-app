pipeline {
    agent any
     tools {
        nodejs 'Nodejs'
     }

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
            }
        }
        stage("speak") {
        slackSend color: '#BADA55', message: 'Hello, World!', channel: #asaka-front-end
        }
    }    
}
