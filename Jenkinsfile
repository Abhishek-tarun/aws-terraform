pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Abhishek-tarun/aws-terraform.git'
            }
        }
        stage('Initialize Terraform') {
            steps {
                sh terraform init
            }
        }
        
        stage('Plan Terraform') {
            steps {
                sh terraform plan
            }
        }
        
        stage('Apply Terraform') {
            steps {
                sh terraform apply -auto-approve
            }
        }
        
    }
}