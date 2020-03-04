pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'rm -rf *;cd /home/ec2-user && mkdir jen && cd jen ; git clone https://github.com/thippeswamy24/jenkins-terraform.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'cd /var/lib/jenkins/workspace/dem/jenkins-terraform; terraform init'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /home/ec2-user/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
