set keytoolBinPath=C:\Program Files\Java\jre1.8.0_231\bin\

"%keytoolBinPath%keytool" -genkey -keyalg RSA -alias rmi -keystore rmi_keystore.jks -storepass changeit -validity 365 -keysize 2048 %*

copy rmi_keystore.jks jenkins
copy rmi_keystore.jks jmeter
del rmi_keystore.jks

docker-compose up