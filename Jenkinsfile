pipeline{
  agent any
  stages{
    stage("snehal-build-docker-image"){
      steps{
        sh "echo build stage"

        sh "docker images ls"
        sh "docker ps"
        

      }
    }
    stage("snehal-login-to-dockerhub")
    {
      steps
      {
        sh "echo build stage"
        script
        {
          withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) 
          {
            sh 'docker login -u pate1431 -p ${dockerhubpwd}'  
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
