pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-credentials-id')['AWS_ACCESS_KEY_ID']
        AWS_SECRET_ACCESS_KEY = credentials('aws-credentials-id')['AWS_SECRET_ACCESS_KEY']
    }
    stages {

        stage('Initialize Terraform') {
            steps {
                bat '"C:\\Program Files\\PowerShell\\7\\pwsh.exe" -Command terraform init'
            }
        }
        
        stage('Plan Terraform') {
            steps {
                bat '"C:\\Program Files\\PowerShell\\7\\pwsh.exe" -Command terraform plan'
            }
        }
        
        stage('Apply Terraform') {
            steps {
                bat '"C:\\Program Files\\PowerShell\\7\\pwsh.exe" -Command terraform apply -auto-approve'
            }
        }
        
    }
}
