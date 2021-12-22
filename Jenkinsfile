pipeline {

        agent any

        environment {
                image = "jonyward/app ."
        }
        stages{
                stage('Build docker image') {
                        steps{
                                echo 'Building the application'
                                sh "docker build -t " + image
                        }
                }

                stage('Push to dockerhub') {
                        steps{
                                echo 'Pushing to dockerhub'
                                sh "docker push " + image
                        }
                }
        }
}
