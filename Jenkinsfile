pipeline {
    agent any

    stages {

             stage ('checkout') {
                  steps {
                     checkapp()
                }
             }
       
         stage ('build')  {

            steps {
             buildapp()
                    }
            }
            

 
        stage ('test')  {
            steps {
                
             testapp()
                }

            }
        }
 
 }
 def checkapp(){
        dir('/opt/projects') {
        sh "rm -rf *"
        sh  "git clone https://github.com/BorhenCherif/Test-Vue-PP.git"

 }
 }

 def builapp(){
        dir('/opt/projects/Test-Vue-PP') {
        sh " mvn clean install"

 }
 }
 def testapp(){
       dir('/opt/projects') {
       sh " mvn test"

 }

}



