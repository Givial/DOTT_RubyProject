pipeline {
    agent any
    environment {
        SONAR_TOKEN             = 'd3bfbb115934a22c6645e682a8465a4d6ae40136'
        SONAR_SCANNER_OPTS      = "-server"
        // SONAR_SCANNER_HOME      = '/home/jenkins/.sonar/sonar-scanner-4.7.0.2747-linux'
    }
    stages{
        stage ('Build') {
            steps {
                script{
                    sh "sudo bundle install"
                    env.CONTINUE = true
                } 
            }
        }
        stage ('SonarCloud') {
            steps {
                script {
                    sh 'whoami'
                    // env.PATH = "${env.SONAR_SCANNER_HOME}/bin:${env.PATH}"
                    // sh 'echo $PATH'
                    sh '/home/jenkins/.sonar/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner -Dsonar.organization=givial -Dsonar.projectKey=Givial_DOTT_RubyProject -Dsonar.sources=. -Dsonar.host.url=https://sonarcloud.io'
                }
            }
        }
        stage ('Testing') {
            steps {
                script{
                    sh "gem install minitest"
                    sh "ruby tests.rb"
                } 
            }
        }
        stage ('Deployment') {
            steps {
                script {
                    dir("${env.WORKSPACE}/AWSLaunchTF") {
                        sh "terraform init"
                        sh "terraform plan"
                        sh "terraform apply --auto-approve"
                    }
                }
            }
        }
               
        
                
    
    }
}