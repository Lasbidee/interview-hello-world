pipeline {
  agent none
  stages {
    stage(Build){
        agent { 
            docker { 
                image 'python:3.7.2' 
                } 
        }
        steps {
                sh  '''
                        python -m venv .venv
                        . .venv/bin/activate
                        pip install -r requirements.txt 
                    ''' 
            }
    }
    stage('Unit test') {
      steps {
        sh '  pytest -v' 
      }   
    }
    
  }
}
