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
  stages {
    stage('Run tests') {
      steps {
        container('helm') {
          git url: 'git://github.com/GabrielMalakias/strto'
            sh '''
            mix -v
            mix local.hex --force
            mix local.rebar --force
            mix deps.get
            mix deps.compile
            mix compile
            MIX_ENV=test mix compile
            mix format --check-formatted
            mix test
            '''
        }
      }
    }
    stage('Run helm') {
      steps {
        echo "Testing..."
      }
    }
  }
}
