pipeline {

        agent any

        environment {
                imageForBuild = "jonyward/app ."
                image = "jonyward/app"
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
                                withDockerRegistry([ credentialsId: "jonyward-dockerhub", url: "" ]){
                                        sh "docker push " + image
                                }
                        }
                }

                stage('Build container') {
                        steps {
                                sh "docker run --rm " + image
                        }
                }
        }
}
