pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/abulanchuk/docker-internship.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    try {
                        sh 'mvn clean compile'
                    } catch (Exception e) {
                        error "Build failed"
                    }
                }
            }
        }

        stage('Code Quality Checks') {
            steps {
                script {
                    try {
                        sh 'mvn checkstyle:check spotbugs:check org.owasp:dependency-check-maven:check'
                    } catch (Exception e) {
                        error "Code quality checks failed due to Checkstyle, SpotBugs, or Dependency-Check violations"
                    }
                }
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
        }

        failure {
            echo "Pipeline failed due to code quality issues or build errors."
        }
    }
}
