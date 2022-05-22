pipeline {
    agent {
        docker {
            image 'node:lts-alpine3.14' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
            nodejs(nodeJSInstallationName: 'UI') {
               sh "npm install"
            }
            }
        }
    }
}