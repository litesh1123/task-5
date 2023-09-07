pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    
    stages {
        stage('Git Part') {
            steps {
                git branch: 'main', url: 'https://github.com/litesh1123/task-5.git'
            }
        }
        stage('Terraform part') {
            steps {
                script {
                    withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID',credentialsId:'awsacceskey',secretKeyVariable:'AWS_SECRET_ACCESS_KEY')]){
                        sh "terraform init -reconfigure"
                        sh "terraform apply --auto-approve"
                    }
                }
            }
        }
    }
}

