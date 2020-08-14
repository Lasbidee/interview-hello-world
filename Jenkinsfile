pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'python:2-alpine' 
                }
            }
            steps {
                sh 'pip install -r requirements.txt' 
                sh 'export FLASK_APP=hello/hello.py python3 -m flask run' 
            }
        }

        stage('test') {
            steps {
                sh 'python3 -m pytest tests'
            }
            post {
                always {
                junit 'test-reports/*.xml'
                }
            }    
        }    
    }
}
