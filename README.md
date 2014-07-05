#Artemia --=>>>|:<

Artemia is a MongoDb Helper for Golo

##Build jar for tests

    mvn compile assembly:single

##Run main.golo for tests

    golo golo --classpath jars/*.jar --files artemia.golo main.golo

Don't forget to run `mongod` before.

##Maven dependency

    <dependency>
        <groupId>org.mongodb</groupId>
        <artifactId>mongo-java-driver</artifactId>
        <version>2.12.0</version>
        <type>jar</type>
        <scope>compile</scope>
    </dependency>