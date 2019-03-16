pipeline {
  agent {
    kubernetes {
      label 'pod'
      containerTemplate {
        name 'helm'
        image 'elixir:1.8.1'
        ttyEnabled true
        command 'cat'
      }
    }
  }
  stage('Run tests') {
    steps {
      container('helm') {
        git url: 'git://github.com/GabrielMalakias/strto'
          sh '''
          sh 'mix -v'
      }
    }
  }
  stage('Run helm') {
    steps {
      echo "Testing..."
    }
  }
}
