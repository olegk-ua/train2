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
                input message: 'Verify the web site (http://<Your_IP>:5000) (Click "Proceed" to continue)'
                sh './scripts/kill.sh'
            }
        }
    }
}
