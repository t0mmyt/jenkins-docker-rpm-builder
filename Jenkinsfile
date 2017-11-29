node {
    def app

    stage('Clone repository') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("t0mmyt/rpm-builder")
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 't0mmyt-dockerhub') {
            app.push("latest")
        }
    }
}