pipeline {
    agent any  // Use any available agent
    
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                // Add your build commands here, like compiling code or generating artifacts
                // Example for a Java Maven project: sh 'mvn clean install'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Testing...'
                // Add your testing commands here, like running unit tests
                // Example for running tests: sh 'mvn test'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                // Add your deployment steps here
                // Example for Docker: sh 'docker build -t myapp . && docker run -d myapp'
            }
        }
    }

    post {
        always {
            echo 'This will always run after the stages complete'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
