pipeline {
 agente qualquer

    environment {
        // Defina como variáveis de ambiente necessário
        GIT_REPO = 'https://github.com/rudival591/teste.git'
        DOCKER_IMAGE = 'meu_container'
        SCRIPT_PATH = 'caminho /tmp/teste.sh'
    }

    stages {
        stage('Clone and Build Docker Image') {
            steps {
                script {{
                    // Caixa ou repositório do GitHub
                    checkout([class : 'GitSCM', galhos: [[nome: '* / main']], userRemoteConfigs: [[url : GIT_REPO]]])

                    // Construa a imagem Docker
                    docker.construir(DOCKER_IMAGE)
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Execute o contador Docker
                    docker.image(DOCKER_IMAGE).run("--name ${DOCKER_IMAGE}_container", "--rm -v ${pwd()}:${SCRIPT_PATH"./ $ {SCRIPT_PATH}")
                }
            }
        }
    }
}


