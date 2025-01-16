pipeline {
    agent any

        stage('Terraform Init') {
            steps {
                withTerraform(terraformVersion: '0.14.5') {
                    init()
                }
            }
        }

    }
}