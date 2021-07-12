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
         git  "https://github.com/BorhenCherif/Test-Vue-PP.git"

 }
 

 def builapp(){
        sh " mvn clean install"

 }
 def testapp(){
       
       sh " mvn test"
 }





