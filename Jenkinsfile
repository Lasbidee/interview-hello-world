pipeline {
  agent { docker { image 'python:3.7.2' } }
  stages {
    stage('Environ and Test') {
      steps {
        sh '''
            python -m venv .venv
            . .venv/bin/activate
            pip install -r requirements.txt
            pytest -v
          '''
      }
    }
    stage('Build Image') {
      steps {
        sh "sudo docker build -t interview-app ."
      }   
    }
  }
}
