pipeline{
    agent any
    environment {
    AWS_CRED = credentials('aws-jenkins')
    }
    parameters{
        choice(name:'action', description: 'Please select which action you will? "apply" or "destroy" ', choices: ['apply', 'destroy'])
        }
    }
    stages{
        stage('tf-init'){
            steps{
                sh "terraform init"
            }
        }
        stage('tf-validate'){
            steps{
                sh"terraform validate"
            }
        }
        stage('tf-plan') {
            steps {
                sh "terraform plan"
            }
        }
        stage("tf-action"){
            when {
                branch 'main'
            }
            steps{
                sh"terraform ${param.action} -auto-approve"
            }
        }
    }
    post {
        success {
            echo "The pipeline ran successfully!"
        }
        failure{
            echo "The pipeline failed :( "
        }
        always{
            cleanWs()
        }
    }