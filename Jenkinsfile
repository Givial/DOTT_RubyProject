pipeline {
    agent any
    environment {
        SONAR_TOKEN             = 'd3bfbb115934a22c6645e682a8465a4d6ae40136'
        SONAR_SCANNER_HOME      = '/home/jenkins/.sonar/sonar-scanner-4.7.0.2747-linux'
    }
    stages{
        stage ('Build') {
            steps {
                script{
                    sh "sudo bundle install"
                } 
            }
        }
        stage ('SonarCloud') {
            steps {
                script {
                    env.PATH = "${env.SONAR_SCANNER_HOME}/bin:${env.PATH}"
                    sh 'echo $PATH'
                    sh 'sudo /home/jenkins/.sonar/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner --version'
                }
            }
        }
        stage ('Testing') {
            steps {
                script{
                    sh "ruby tests.rb"
                } 
            }
        }
        stage ('Deployment') {
            steps {
                echo "Implement Sonarqube Analysis" 
            }
        }
               
        
                
    
    }
}