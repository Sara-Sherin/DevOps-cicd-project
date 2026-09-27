pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-cicd-project:v1 .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker rm -f devops-cicd-web || true
                docker run -d --name devops-cicd-web -p 8082:80 devops-cicd-project:v1
                '''
            }
        }

    }
}
