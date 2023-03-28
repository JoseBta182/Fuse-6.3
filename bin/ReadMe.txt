    Camel Project for Apache CXF wsdl-first by Crosswave
=====================================================


To build this project use

    mvn install

To deploy the project in OSGi. For example using Apache Karaf.
You need to install the following features first:

    features:install camel-jaxb
    features:install camel-cxf
    features:install camel-saxon
    features:install activemq-camel


The web services from Apache CXF is usually listed at:

    http://localhost:8181/cxf

And the WSDL file for this example at:

    http://localhost:8181/cxf/nombreServicio/?wsdl

For more help see the Apache Camel documentation

    http://camel.apache.org/
