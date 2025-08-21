pipeline {
    parameters {
        string(name: 'IMAGE_TAG', defaultValue: 'latest', description: 'Add tag for your image')
    }
    environment {
        IMG = 'my_image'
        REPO = 'cmuriukin/class_22_repo'
    }
    agent any

    stages {
        stage('Checkout Git Project') {
            steps {
                git url: 'https://github.com/cmuriukin/my-simple-python-application.git', branch: 'feature_class22'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMG:$IMAGE_TAG .'
            }
        }
        stage('Scan Docker Image') {
            steps {
                sh 'trivy image $IMG:$IMAGE_TAG'
                sh 'trivy image $IMG:$IMAGE_TAG'
            }
        }
        stage('Tag Docker Image') {
            steps {
                sh 'docker tag $IMG:$IMAGE_TAG $REPO:$IMAGE_TAG'
                sh 'docker tag $IMG:$IMAGE_TAG $REPO:$BUILD_NUMBER'
            }
        }
        stage('Push Image to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'jenkins-docker-token', passwordVariable: 'DOCKER_HUB_PASSWORD', usernameVariable: 'DOCKER_HUB_USER')]) {
                  sh "echo $DOCKER_HUB_PASSWORD | docker login -u $DOCKER_HUB_USER --password-stdin"
                  sh 'docker push $REPO:$BUILD_ID'
                  sh 'docker push $REPO:latest'
                }
            }
        }
    }
    post {
        success {
        slackSend   color: 'good',
                    message: "Docker Build id $BUILD_NUMBER was pushed successfully",
                    channel: '#class22',
                    tokenCredentialId: 'slack_jenkins'
        }
        failure {
        slackSend   color: 'danger',
                    message: "Docker Build id $BUILD_NUMBER did not succeed",
                    channel: '#class22',
                    tokenCredentialId: 'slack_jenkins'
        }
    }
}
