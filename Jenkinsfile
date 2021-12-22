pipeline {

        agent any

        environment {
                imageForBuild = "jonyward/final-app ."
                image = "jonyward/final-app"
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
                                withDockerRegistry([ credentialsId: "Dockerhub", url: "" ]){
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
