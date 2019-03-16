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
            echo "bla"
            mix -v
            mix local.hex --force
            mix local.rebar --force
            mix deps.get
            mix deps.compile
            MIX_ENV=test mix compile
            mix test
            '''
        }
      }
    }
  }
}
