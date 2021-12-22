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
                                echo 'Pushing image to dockerhub'
                                withDockerRegistry([ credentialsId: "jonyward-dockerhub", url: "" ]){
                                        sh "docker push " + image
                                }
                        }
                }

                stage('Build container') {
                        steps{
                                echo 'Running the container'
                                sh "docker run --rm --name app -p 80:80 -d " + image
                        }
                }
        }
}
