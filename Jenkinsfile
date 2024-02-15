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

        stage('Executar Script Shell') {
            steps {
                // Execute o script shell
                script {
                    sh 'echo "sua_senha" | sudo -S ./criarpagina.sh'
                }
            }
        }
    }
}
