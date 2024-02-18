pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/rudival591/teste.git'
        DOCKER_IMAGE = 'meu_container'
        SCRIPT_PATH = '/criarpagina.sh'
    }

    stages {
        stage('Clone and Build Docker Image') {
            steps {
                script {
                    // Baixar o repositório do GitHub para /srv
                    checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: GIT_REPO, extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: '/srv']]]]])

                    // Construir a imagem Docker
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Executar o contêiner Docker
                    docker.image(DOCKER_IMAGE).inside {
                        // Comandos a serem executados dentro do contêiner
                        sh "mv /srv/criarpagina.sh ."  // Mover o script para o diretório atual
                        sh "chmod +x criarpagina.sh"
                        sh "./criarpagina.sh"
                    }
                }
            }
        }
    }
}
