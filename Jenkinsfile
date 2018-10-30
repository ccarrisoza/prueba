pipeline{
	agent any
	stages{
		
		stage('Build'){
			steps {
				sh 'mnv clean package'
			}
			post {
				echo 'Now Archiving...'
				archiveArtifacts artifacts: '**/target/*.war'
			}
		}
	}
}
