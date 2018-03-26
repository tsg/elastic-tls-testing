## TLS enabled testing setup for Elasticsearch and Kibana

This is a docker-compose project that creates:

* an ES cluster composed of two nodes
* a Kibana instance
* a CA and certificates for each of the instances above

It's meant to be used for integration testing for the Beats and Logstash projects.
This is largely based on [this
doc](https://www.elastic.co/guide/en/elasticsearch/reference/current/configuring-tls-docker.html).

Warning: you need to give 4 GB of RAM do your docker machine.

To start the testing env:

```
make up
```

To stop it:

```
make down
```

To test:

```
curl --cacert certs/ca/ca.crt -u elastic:changeme -XGET https://localhost:9200
curl --cacert certs/ca/ca.crt -u elastic:changeme -XGET https://localhost:5601
```

