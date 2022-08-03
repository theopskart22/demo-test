pipeline {
    agent any

    stages {
    
        stage("CI/CD: Warm Up"){
            steps {
                script {
                    sh "java -version"

                }
            }
        }
		
		stage("Checkout from SCM"){
            steps {
                script {
                    sh "git clone https://github.com/techmartguru/demo-test.git"				
                }
            }
        }

        stage('Replace sec value ') {
            steps {
            script {
                sh (script: "${WORKSPACE}/demo-test/sec.sh ${WORKSPACE}/demo-test", returnStdout: true)
            }
        }
        }

        stage("Create AMI"){
            steps {
                script {
                    
                    sh " cat ${WORKSPACE}/demo-test/db.properties"

                }
            }
        }

		}
		
     post { 
         always { 
            cleanWs()
         }
    }		
}
