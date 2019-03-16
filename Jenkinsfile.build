pipeline {
  agent {
    kubernetes {
      label 'pod'
        containerTemplate {
            name 'helm'
            image '_/docker'
            ttyEnabled true
            command 'cat'
        }
    }
  }
  stages {
    stage('Run tests') {
      steps {
        container('helm') {
          git url: 'git://github.com/GabrielMalakias/strto'
            sh '''
            docker build -f ./build/Dockerfile.build
            '''
        }
      }
    }
  }
}
