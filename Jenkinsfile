pipeline {
    agent any

    stages {
        stage ('chekout') {

            steps {
                   sh 'rm -rf * '
                   sh 'git  https://github.com/BorhenCherif/Test-Vue-PP.git'
                }
            }
         stage ('build') {

            steps {
                    sh ' mvn clean install'
                }
            }


        stage ('test') {

            steps {
                    sh ' mvn test'
                }
            }
        }
}


