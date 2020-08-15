pipeline {
  agent { docker { image 'python:3.7.2' } }

    stage('Unit test') {
      steps {
        sh '''
                python -m venv .venv
                . .venv/bin/activate
                pip install -r requirements.txt
                pytest -v
            ''' 
      }   
    }
    stage('Build Docker') {
       // build the docker image from the source code using the BUILD_ID parameter in image name
       dir("hello_world") {
         sh "docker build -t helloworldapp-${BUILD_ID} ."
       }
   }
}
