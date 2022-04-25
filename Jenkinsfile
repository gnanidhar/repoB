pipeline {
    agent any
    stages {
        stage ('Say Hello') {
            steps {
                echo 'Hello!!!'
                echo "$GIT_BRANCH"
            }
        }
        stage ('Build Docker Image') {
            steps {
                sh(script: 'docker images -a')
                sh(script: 'docker build --build-arg git_branch=main -t jenkinsdocker .')
            }
        }
        stage ('Run Container') {
            steps {
                sh(script: 'docker run -d --name container1 jenkinsdocker')
                sh(script: 'docker ps')
            }
        }
    }
}