pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'make all'
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts 'output/dailies*.tar.gz'
            }
        }
    }
}
