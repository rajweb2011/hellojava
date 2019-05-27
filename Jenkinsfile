pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
              sh 'mvn clean install'

                //sh 'mvn package && java -jar target/gs-spring-boot-0.1.0.jar --server.port=8989'
            }
        }
        stage('Image') {

                 def app = docker.build "localhost:5000/hellowjava:v1"
                 app.push()

         }
         stage ('Run') {
           docker.image("localhost:5000/hellowjava:v1").run('-p 2222:8080 -h hellowjava --name hellowjava ')
}
    }

}
