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

                stage('Deploy to K8s') {
                        steps{ 
                                sshagent(credentials: ['ubuntu']) {
                                                script{
                                                        try{
                                                                sh 'ssh-keyscan -H 52.91.218.65>> ~/.ssh/known_hosts'
                                                                sh 'ssh ubuntu@52.91.218.65 kubectl set image deployments/jenkins-deployment jonyward/final-app=jonyward/final-app'
                                                        }catch(error){
                            }
                    }
                }
            }
        }
        }
}
