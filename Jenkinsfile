pipeline{
	agent any
	tools{
		org.jenkinsci.plugins.docker.commons.tools.DockerTool 'DOCKER'
		maven 'M2_HOME'
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
