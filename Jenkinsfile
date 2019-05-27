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
                sh 'mvn package && java -jar target/gs-spring-boot-0.1.0.jar --server.port=8989'
            }
        }
    }
}
