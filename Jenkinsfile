pipeline{
	agent any
	tools{
		maven 'M2_HOME'
	}
	parameters{
		string(name: 'Staging', defaultValue: '54.237.205.178', description: 'Staging Server')
		string(name: 'Produccion', defaultValue: '18.215.239.202', description: 'Produccion Server')
	}

	triggers {
		pollSCM('* * * * *')
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
		
		stage ('Deployments'){
            parallel{
                stage ('Deploy to Staging'){
                    steps {
                        sh "scp -i /Users/fcarrisoza/Udemy/Jenkins/tomcatDemo.pem **/target/*.war ec2-user@${params.Staging}:/var/lib/tomcat7/webapps"
                    }
                }

                stage ("Deploy to Production"){
                    steps {
                        sh "scp -i /Users/fcarrisoza/Udemy/Jenkins/tomcatDemo.pem **/target/*.war ec2-user@${params.Produccion}:/var/lib/tomcat7/webapps"
                    }
                }
            }
        }
    }

}
