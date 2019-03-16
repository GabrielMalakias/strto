pipeline {
    agent { dockerfile true }
    stages {
        stage('Initialize'){
            def dockerHome = tool 'Docker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
        }
        stage('Test') {
            steps {
                sh 'mix -v'
            }
        }
    }
}
