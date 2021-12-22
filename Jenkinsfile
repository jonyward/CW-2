pipeline {

        agent any

        environment {
                image = "jonyward/app"
        }
        stages{
                stage('Build docker image') {
                        steps{
                                echo 'Building the application'
                                sh "docker build -t " + image
                        }
                }        
        }
}
