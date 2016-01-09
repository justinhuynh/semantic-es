### Elasticsearch Rails Tutorial

There are a number of use cases for a more powerful, fulltext search capability than what is available standard with PostgreSQL. In my case, I wanted to analyze my search results and customize aspects of how the results were returned (e.g., boost), which led me to the fantastic [Searchkick gem](https://github.com/ankane/searchkick).

Searchkick is an amazing and well-maintained resource (as of 2016), but I was interested in tapping into Elasticsearch's powerful Query DSL directly, which would require greater control in generating my own queries.

Many of the alternative wrappers or interfaces for Elasticsearch have largely been abandoned, so I decided to try working directly with some of the interfaces provided by Elasticsearch:

[elasticsearch-rails](https://github.com/elastic/elasticsearch-rails/tree/master/elasticsearch-rails)
[elasticsearch-model](https://github.com/elastic/elasticsearch-rails/tree/master/elasticsearch-model)
[elasticsearch-ruby](https://github.com/elastic/elasticsearch-ruby)

This tutorial is geared toward beginners with some familiarity with Rails and ActiveRecord, but have otherwise not implemented external search solutions.

### Elasticsearch Setup for Development

Elasticsearch runs as a Java-based server on your local machine.
Run `brew install elasticsearch` to get started.

### Configuring Elasticsearch

(to be developed)
* Elasticsearch head plugin
* How to find your install directory
* Elasticsearch marvel
* A quick primer on Elasticsearch API
* Start elasticsearch on your local machine to spool up a server (similar to how you would connect to a database)
