pipeline {
    agent any
    stages {
        stage(chekout) {
            steps {
                git 'https://github.com/Abhishek-tarun/aws-terraform.git'
            }
        }
        stage('Terraform Init') {
            steps {
                withTerraform(terraformVersion: '0.14.5') {
                    init()
                }
            }
        }

    }
}