pipeline {

        agent any

        environment {
                imageForBuild = "jonyward/app ."
                imageForPush = "jonyward/app"
        }
        stages{
                stage('Build docker image') {
                        steps{
                                echo 'Building the application'
                                sh "docker build -t " + imageForBuild
                        }
                }

                stage('Push to dockerhub') {
                        steps{
                                echo 'Pushing to dockerhub'
                                sh "docker push " + imageForPush
                        }
                }
        }
}
