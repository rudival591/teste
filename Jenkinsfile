pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/rudival591/teste.git'
        DOCKER_IMAGE = 'meu_container'
        SCRIPT_PATH = '/tmp/teste.sh'
    }

    stages {
        stage('Clone and Build Docker Image') {
            steps {
                script {
                    // Baixar o repositório do GitHub
                    checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: GIT_REPO]]])

                    // Construir a imagem Docker
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Executar o contêiner Docker
                    docker.image(DOCKER_IMAGE).run("--name ${DOCKER_IMAGE}_container", "--rm -v ${pwd()}:${SCRIPT_PATH}", "/bin/bash", "-c", "./${SCRIPT_PATH}")
                }
            }
        }
    }
}



