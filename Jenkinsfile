pipeline {
  agent { docker { image 'python:3.7.2' } }
  stages {
    stage('Build Stage') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('Test') {
      steps {
        sh '''
                    python -m venv .venv
                    . .venv/bin/activate
                    pip install -r requirements.txt
                    pytest -v
            ''' 
      }   
    }
  }
}
