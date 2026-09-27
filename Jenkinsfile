pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t devops-cicd-project:v1 .'
            }
        }

        stage('Deploy Container') {
            steps {
                bat '''
                docker rm -f devops-cicd-web
                docker run -d --name devops-cicd-web -p 8082:80 devops-cicd-project:v1
                '''
            }
        }
    }
}
