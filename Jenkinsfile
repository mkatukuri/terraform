pipeline {
    agent any
    options {
            // Timeout counter starts BEFORE agent is allocated
            timeout(time: 1, unit: 'SECONDS')
                }
     environment {
            DISABLE_AUTH = 'true'
            DB_ENGINE    = 'sqlite'
        }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                echo "Database engine is ${DB_ENGINE}"
                echo "DISABLE_AUTH is ${DISABLE_AUTH}"
                sh 'printenv'
            }
        }

        stage("Env Build Number"){
                    steps{
                        echo "The build number is ${env.BUILD_NUMBER}"
                        echo "You can also use \${BUILD_NUMBER} -> ${BUILD_NUMBER}"
                    }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
