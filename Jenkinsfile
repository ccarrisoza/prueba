pipeline{
	agent any
	tools{
		maven 'M2_HOME'
	}
	stages{
		stage('Build'){
			steps {
			  sh 'mvn clean package'
			}
			post {
				success{
					echo 'Now Archiving...'
					archiveArtifacts artifacts: '**/target/*.war'
				}
				
			}
		}
	}
}
