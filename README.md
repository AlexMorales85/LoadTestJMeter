# Run JMeter load test in Jenkins

- Run start.bat
- Copy token, it's needed in next step
- Open url http://localhost:8080/ and put the token
- Install suggested plugins 
- Config new user
- Go to "Manage Jenkins" -> "Manage Plugins" and install Performance plugins
- Create new Job as a Freestyle project
- Add Build step -> Execute shell:
    Command: 
        cd /home/apache-jmeter-5.1.1/bin/
        ./jmeter -n -f -t /home/jmeterTest/loadTest.jmx -l /home/jmeterResult/report.jtl -R jmeterserver1,jmeterserver2
- Add Post-build Actions -> Publish Performance test result report:
    Source data files: /home/jmeterResult/report.jtl
- Now you can run your build