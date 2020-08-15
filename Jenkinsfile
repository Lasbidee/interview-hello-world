pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'python:3.7.2'
                }
            }
            steps {
                sh 'export FLASK_APP=hello/hello.py python3 -m flask run'
            }
        }
        stage('Test') { 
            agent {
                docker {
                    image 'python:3.7.2' 
                }
            }
            steps {
                sh '''
                    python -m venv .venv
                    . .venv/bin/activate
                    pip install -r requirements.txt
                    pytest -v
                   ''' 
            }
            post {
                always {
                    junit 'test-reports/results.xml' 
                }
            }
        }
    }
}
