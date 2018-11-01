pipeline{
	agent any

	tools{
		maven 'M2_HOME'
	}

	stages{
		stage('Build'){
			agent {
        		docker {
          			image 'node:7-alpine'
          			args '--name docker-node' // list any args
        		}
      		}
			steps {
			  sh 'mvn clean package'
			  sh "docker build . -t tomcatwebapp:${env.BUILD_ID}"
			}
		}
    }

}
