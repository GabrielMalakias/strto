pipeline {
    agent { dockerfile true }

    stages {
        stage('Checkout files') {
            checkout scm
        }
        stage('Build') {
            steps {
              mix -v
            }
        }
        stage('Test') {
            steps {
                echo 'Testing....'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
