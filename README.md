#Artemia --=>>>|:<

Artemia is a MongoDb Helper for Golo

##Build jar for tests

    mvn compile assembly:single

##Run main.golo for tests

    golo golo --classpath jars/*.jar --files artemia.golo main.golo

Don't forget to run `mongod` before.

##Install it to a Golo project

Create a `.bowerrc` file at the root of the project with this content:

    {
      "directory": "src/main/golo/libs"
    }

Create a `bower.json` file (or update dependencies) at the root of the project with this content:

{
  "name": "your_project_name",
  "version": "0.0.0",
  "dependencies": {
    "artemia" : "TypeUnsafe/artemia#master"
  }
}

Type `bower install`

And add maven dependency to your project `pom.xml`.

##Maven dependency

    <dependency>
        <groupId>org.mongodb</groupId>
        <artifactId>mongo-java-driver</artifactId>
        <version>2.12.0</version>
        <type>jar</type>
        <scope>compile</scope>
    </dependency>
    