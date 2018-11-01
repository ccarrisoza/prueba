pipeline{
	agent any
	tools{
		maven 'M2_HOME'
		docker 'DOCKER'
	}

	stages{
		stage('Build'){
			steps {
			  sh 'mvn clean package'
			  sh "docker build . -t tomcatwebapp:${env.BUILD_ID}"
			}
		}
    }

}
