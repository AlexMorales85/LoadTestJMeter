docker volume create jenkins
docker network create jenkins

docker build -t jenkinswithjmeter .
docker pull httpd

docker run -d --name web --network jenkins -p 80:80 httpd
docker run --name jenkins --network jenkins -p 8080:8080 -p 50000:50000 -v jenkins:/var/jenkins_home jenkinswithjmeter
