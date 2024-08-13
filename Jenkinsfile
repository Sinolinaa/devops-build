pipeline {
    agent any

    environment {
        // Define environment variables here if needed
        NODE_VERSION = '14'
        IMAGE_NAME = 'myreactapp'
        IMAGE_TAG = 'dev'
        DOCKER_REGISTRY = 'docker.io'
        DOCKER_REPO = 'sinolinaa/myreactapp'
    }

    stages {
        
        stage('Build docker image') {
            steps {
                script {
                   //build docker image using script file
                   sh './build.sh'
                }
            }
        }
     stage('Login') {
            steps {
                script {
                sh "docker login -u $Dockerhub" 
            }
          }      
        }    

     stage('Deploy') {
            steps {
                script {
                    // Run the deploy.sh script
                    sh './deploy.sh'
                }
            }
        }
      
    }

    post {
        always {
            // Cleanup steps, if needed
            cleanWs()
        }
    }
}

