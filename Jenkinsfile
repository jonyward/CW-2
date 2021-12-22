pipeline {

        agent

        environment {
                image = "jonyward/app"
        }
        stage('Build docker image') {
                steps{
                        sh "docker build -t " + image
                }
        }
}
