pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/prashantsuk/jenkins-terraform-ec2-pipeline.git']]])            

          }
        }
        
        stage ("packer init .") {
            steps {
                sh ('packer init .') 
            }
        }
         stage ("packer validate .") {
            steps {
                sh ('packer validate') 
            }
        }
         stage ("packer build") {
            steps {
                sh ('packer build .') 
            }
        }
        
        /*stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }*/
    }
}
