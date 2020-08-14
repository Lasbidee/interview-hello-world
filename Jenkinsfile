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
                sh 'docker build .' 
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
