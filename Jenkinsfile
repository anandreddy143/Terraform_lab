
pipeline{
     agent any 
    
    stages{
        
        stage('git checkout'){
            steps{
                git branch: 'master', url: 'https://github.com/anandreddy143/Terraform_lab.git'
            }
        }
        stage('terraform init'){
            steps{
                sh 'terraform init'
            }
        }
         stage('terraform plan'){
            steps{
                sh 'terraform plan'
            }
        }
         stage('terraform apply'){
            steps{
                 sh 'terraform apply --auto-approve'
            }
        }
    }
}
