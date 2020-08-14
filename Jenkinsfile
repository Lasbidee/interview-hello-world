pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'python:3.7.3-stretch' 
                }
            }
            steps {
                sh 'sudo pip install -r requirements.txt' 
                sh 'sudo docker build .' 
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
