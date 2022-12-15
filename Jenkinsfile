pipeline {
    agent any
    stages{
        stage ('Build') {
            steps {
                script{
                    sh "sudo bundle install"
                } 
            }
        }
        stage ('SonarQube') {
            steps {
                echo "Implement Sonarqube Analysis" 
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