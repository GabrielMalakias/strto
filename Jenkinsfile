pipeline {
    agent { dockerfile true }

    stages {
        stage('Checkout files') {
            checkout scm
        }
        stage('Build') {
            steps {
              mix -v
              mix deps.get --only prod
              MIX_ENV=prod mix compile
              cd assets
              node run deploy
              cd ..
              mix phx.digest
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
