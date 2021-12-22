pipeline {
        environment {
                image = 'jonyward/server.js'
        }
        stage('Build docker image') {
                steps{
                        script{
                                'docker build -t ' + image
                        }
                }
        }
}
