pipeline {
    agent any

    stages {

             stage ('checkout') {
                  steps {
                    dir('/opt/projects') {
                    sh "rm -rf *"
                    sh  "git clone https://github.com/BorhenCherif/Test-Vue-PP.git"

                }

    
             }
             }
       
         stage ('build')  {

            steps {
                dir('/opt/projects/Test-Vue-PP') {
                    sh " mvn clean install"
                }
                 }
            }

 
        stage ('test')  {

            steps {
                dir('/opt/projects') {
                    sh " mvn test"
                }
            }
        }
}
}


