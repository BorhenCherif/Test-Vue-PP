pipeline {
    agent any

    stages {

             stage ('checkout') {
                  steps {
                      git  "https://github.com/BorhenCherif/Test-Vue-PP.git"
                }
             }
       
         stage ('build')  {

            steps {
              sh " mvn clean install"
                    }
            }
            

 
        stage ('test')  {
            steps {
                
          sh " mvn test"
                }

            }
        }
 
 }
 /*def checkapp(){
         git  "https://github.com/BorhenCherif/Test-Vue-PP.git"

 }
 

 def builapp(){
        sh " mvn clean install"

 }
 def testapp(){
       
       sh " mvn test"
 }
 */





