pipeline {
    agent any
    stages {

        stage('Initialize Terraform') {
            steps {
                withTerraform(terraformVersion: '0.14.5') {
                    init()
                }
            }
        }
        stage('Plan Terraform') {
            steps {
                withTerraform(terraformVersion: '0.14.5') {
                    plan()
                }
            }
        }
        stage('Apply Terraform') {
            steps {
                withTerraform(terraformVersion: '0.14.5') {
                    apply()
                }
            }
        }
    }
    post {
        always {
            withTerraform(terraformVersion: '0.14.5') {
                clean()
            }
        }
    }
}