pipeline {
    agent any

        stages {
        stage('Limpar Diretório de Trabalho') {
            steps {
                deleteDir()
            }
        }

    
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
                    sh './criarpagina.sh'
                }
            }
        }
    }
}
