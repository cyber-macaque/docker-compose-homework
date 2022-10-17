def call (){
  sh 'JENKINS_NODE_COOKIE=dontKillMe nohup java -jar /var/lib/jenkins/workspace/test-1/target/spring-petclinic-2.7.3.jar'
}
