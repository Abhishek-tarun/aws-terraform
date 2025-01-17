pipeline {
    agent any
    stages {

        stage('Initialize Terraform') {
            steps {
                bat 'C:\\Program Files\\PowerShell\\7\\pwsh.exe -Command terraform init'
            }
        }
        
        stage('Plan Terraform') {
            steps {
                bat 'C:\\Program Files\\PowerShell\\7\\pwsh.exe -Command terraform plan'
            }
        }
        
        stage('Apply Terraform') {
            steps {
                bat 'C:\\Program Files\\PowerShell\\7\\pwsh.exe -Command terraform apply -auto-approve'
            }
        }
        
    }
}
