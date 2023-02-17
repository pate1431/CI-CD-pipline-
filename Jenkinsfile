pipeline{
  agent any
  stages{
    stage("snehal-build-docker-image"){
      steps{
        sh "echo build stage"
      }
    }
    stage("snehal-login-to-dockerhub"){
      steps{
        sh "echo build stage"
        script{
          withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'jenkinspwd')]) {
            sh 'docker login -u pate1431 -p ${jenkinspwd}'
          }
        }
      }
    }
    stage("snehal-push-image-to-dockerhub"){
        steps{
            sh "echo build stage"
        }
    }
  }
}
