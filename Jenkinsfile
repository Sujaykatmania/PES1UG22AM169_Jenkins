pipeline {
    agent any  // Use any available Jenkins agent
    
    stages {
        stage('Build') {
            steps {
                script {
                    echo 'Starting the build process...'
                    // Shell command to compile the .cpp file
                    sh '''
                    g++ -o PES1UG22AM169-1 main.cpp  # Replace 'main.cpp' with your actual .cpp file name
                    '''
                }
            }
        }
        
        stage('Test') {
            steps {
                script {
                    echo 'Running the tests...'
                    // Shell command to print the output of the compiled program
                    sh './PES1UG22AM169-1'
                }
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying the application...'
                    // Add any deployment steps here, for example, pushing the executable to a server
                    // Example: sh 'scp PES1UG22AM169-1 user@your-server:/path/to/deploy/'
                }
            }
        }
    }
    
    post {
        failure {
            echo 'Pipeline failed'  // Display this message if any stage fails
        }
    }
}
