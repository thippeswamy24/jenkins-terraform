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
                sh 'sudo rm -r *;sudo git clone https://github.com/thippeswamy24/jenkins-terraform.git /home/ec2-user/newfolder'
            }
        }
        stage('tfsvars create') {
            steps {
                sh 'sudo cp -rf /home/ec2-user/vars.tf /var/lib/jenkins/workspace/final/'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /home/ec2-user/terraform init /var/lib/jenkins/workspace/final/'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls /var/lib/jenkins/workspace/final/; sudo /home/ec2-user/terraform plan /var/lib/jenkins/workspace/final/'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'sudo /home/ec2-user/terraform apply /var/lib/jenkins/workspace/final/'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
