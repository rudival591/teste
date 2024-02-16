pipeline {
    agent any
   
  
    stages {
        stage('Clonar Repositório') {
            steps {
                // Clone seu repositório Git
                script {
                    git 'https://github.com/rudival591/teste.git'
                }
            }
        }
    
    stages {
        stage('Executar Script Shell como Root') {
            steps {
                script {
                    sh 'sudo ./seu_script.sh'
                }
            }
        }
    }
}
