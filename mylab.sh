git clone https://github.com/GoogleCloudPlatform/java-docs-samples.git

cd java-docs-samples/appengine-java8/helloworld

mvn clean

mvn package

mvn appengine:run

gcloud app create

nano pom.xml
