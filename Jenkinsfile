pipeline{
    agent any

    stages{
        stage('Cloning GitHub repo to Jenkins'){
            steps{
                script{
                    echo 'Cloning GitHub repo to Jenkins...........'
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Chirag-Jogi/HotelReservationPrediction_MLops.git']])
                }
            }
        }
    }
}