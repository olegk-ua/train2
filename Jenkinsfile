pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 5000:5000 -u root'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Run') {
            steps {
                sh './scripts/run.sh'
            }
        }
        stage('Stop') {
            steps {
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './scripts/kill.sh'
            }
        }
    }
}
