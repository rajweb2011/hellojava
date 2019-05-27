pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn package && java -jar target/gs-spring-boot-0.1.0.jar --server.port=8989' 
            }
        }
    }
}
