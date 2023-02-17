pipeline{
  agent any
  stages{
    stage("snehal-build-docker-image"){
      steps{
        sh "echo build stage"
        sh "docker build -t pythonrepo ."
        sh "docker images ls"
        sh "docker ps" 
      }
    }
    stage("snehal-login-to-dockerhub")
    {
      steps
      {
        sh "echo login stage"
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
            sh "echo push image stage"
            sh 'docker tag pate1431/pythonimage pate1431/pythonimage:imagev1'
            sh 'docker push pate1431/pythonimage:imagev1'
        }
    }
  }
}
