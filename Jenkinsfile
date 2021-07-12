pipeline {
    agent any

    stages {
        stage ('chekout') {

            steps {
                   sh 'rm -rf * '
                   sh 'git clone https://github.com/BorhenCherif/Test-Vue-PP.git'
                }
            }
         stage ('build') {

            steps {
                    sh 'cd /Test-Vue-PP/ && mvn clean install'
                }
            }


        stage ('test') {

            steps {
                    sh 'cd /Test-Vue-PP/ && mvn test'
                }
            }
        }
}


