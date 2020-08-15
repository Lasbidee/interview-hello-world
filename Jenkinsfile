pipeline {
  agent { docker { image 'python:3.7.2' } }
  stages {
    stage('test') {
      steps {
        sh '''
            python -m venv .venv
            . .venv/bin/activate
            pip install -r requirements.txt
            pytest -v
          '''
      }
    }
    stage('Docker') {
      steps {
        echo 'docker build .'
      }   
    }
  }
}
