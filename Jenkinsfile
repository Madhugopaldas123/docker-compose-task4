node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def mvn = tool 'Maven 3.8.5';
    withSonarQubeEnv() {
      sh "${mvn}/bin/mvn sonar:sonar"
    }
  }
}
