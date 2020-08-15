pipeline {
  agent none
  stages {
    stage('Environ') {
      steps {
        sh '''
              python -m venv .venv
              . .venv/bin/activate
              pip install -r requirements.txt
            ''' 
      }
    }
    stage('Test') {
      steps {
        sh ' pytest -v ' 
      }   
    }
  }
}
