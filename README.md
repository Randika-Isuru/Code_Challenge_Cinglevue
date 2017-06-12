# Code_Challenge_Cinglevue
This is code challenge which was I did for cinglevue international pty ltd

Before go through whole project I would like to say I am unable to complete whole project. I just create the structure of this code challenge.

In this project I use several technologies

* Spring MVC
* Spring Security
* Spting Data (for communicate with NoSQL DB ex. MongoDB)
* Apache Maven (Build Tool)
* JavaScript
* Tomcat 8.5
* RestFul

This whole project was configure using annotation there are no any .xml file even this project not requred web.xml file. I am new to some of this technologies ex. Spring Data and while I am crating this project I was stuck some places This is the one of major problem I faced

https://stackoverflow.com/questions/44480365/spring-seccurity-java-based-configuration-not-working-it-will-always-show-index/44483811?noredirect=1#comment75969734_44483811

however this is running application you can run this application using following steps

* checkout the repository
* Go to the root pom.xml
* Change the Path of outputDirectory tag inside the pom "To_your_webapps_folder"
* Then run mvn clean install inside the root directory ex.F:\Personal\Cingle Eve\Code Challenge- Cinglevue International\Student Rrgistration\sms>mvn clean install
* start tomcat
* Go to http://localhost:8080/sms-web/
* userName : randika password : randika123
