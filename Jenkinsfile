pipeline {
    agent any
    stages {

        stage('Initialize Terraform') {
            steps {
                pwsh 'terraform init'
            }
        }
        
        stage('Plan Terraform') {
            steps {
                pwsh 'terraform plan'
            }
        }
        
        stage('Apply Terraform') {
            steps {
                pwsh 'terraform apply -auto-approve'
            }
        }
        
    }
}