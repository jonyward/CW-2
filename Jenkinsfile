pipeline {

        agent any

        environment {
                image = "jonyward/final"
        }
        stages{
                stage('Build docker image') {
                        steps{
                                echo 'Building the application'
                                sh "docker build . -t " + image + ":${env.BUILD_NUMBER}"
                        }
                }

                stage('Push to dockerhub') {
                        steps{
                                echo 'Pushing image to dockerhub'
                                withDockerRegistry([ credentialsId: "Dockerhub", url: "" ]){
                                        sh "docker push " + image + ":${env.BUILD_NUMBER}"
                                        sh "docker push " + image + ":latest"
                                }
                        }
                }

                stage('Build container') {
                        steps{
                                echo 'Running the container'
                                sh "docker run --rm --name app -p 80:80 -d " + image
                        }
                }

                                stage('Deploy to K8s') {
                        steps{ 
                                sshagent(credentials: ['ubuntu']) {
                                                script{
                                                        try{
                                                                sh "ssh-keyscan -H 52.91.218.65>> ~/.ssh/known_hosts"
                                                                sh "ssh ubuntu@52.91.218.65 kubectl set image deployments/kube-server final=jonyward/final:${env.BUILD_NUMBER}"
                                                        }catch(error){
                            }
                    }
                }
            }
        }
        }
}
