pipeline {
<<<<<<< HEAD
    agent any

    environment {
                registry = "borhencherif/TEST-VUE-PP"
                registryCredential = "dockerhub"

    }

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

        stage('build image'){
         steps{
         script{

              dockerImage = docker.build registry + ":V$BUILD_NUMBER"


         }

         }
        }
          stage ('upload image'){
          steps{
              script{
             
                 docker.withRegistry('',registryCredential) {

                     dockerImage.push("V$BUILD_NUMBER")
                     dockerImage.push('latest')
                 } 

              }
          }


          }


          stage ('remove unused docker image'){
              steps{
                  sh "docker rmi $registry:V$BUILD_NUMBER"
              }
          }
        }
 
 }






=======
  agent any
  stages {
    stage('checkout') {
      steps {
        git 'https://github.com/BorhenCherif/Test-Vue-PP.git'
      }
    }

    stage('build') {
      steps {
        sh ' mvn clean install'
      }
    }

    stage('test') {
      steps {
        sh ' mvn test'
      }
    }

    stage('deploy') {
      steps {
        echo 'deploy'
      }
    }

  }
}
>>>>>>> 2d88fb769902e3a45aae88ed3e6b2bcd24ec2c7f
