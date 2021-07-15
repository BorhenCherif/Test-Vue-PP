pipeline {
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