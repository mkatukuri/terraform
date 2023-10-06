pipeline {
    agent any
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
                printenv
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
