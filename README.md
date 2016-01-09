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

### Quick Start Steps

* Set up new rails app
* Add `elasticsearch-rails` and `elasticsearch-model` to your `Gemfile`

```
bundle install
rake db:create
rails g migration create_articles`
* (write your migration)
```

```
rake db:migrate

rails c
Article.connection
Article.__elasticsearch__.create_index!
Article.import
response = Article.search 'fox dogs'
```

Don't overwrite the `self.search(query)` as shown in the `elasticsearch-rails` readme unless you have your own implementation.

### Learning More

Clone down the [elasticsearch-model](https://github.com/elastic/elasticsearch-rails/tree/master/elasticsearch-model) repo and work with the examples in the `examples` folder

Note - you will need to create a `pry` history file for this to work. Otherwise, your example will fail on this line:

```
Pry.config.history.file = File.expand_path('../../tmp/elasticsearch_development.pry', __FILE__)
```

In the `elasticsearch-model` folder:

```
mkdir tmp
touch tmp/elasticsearch_development.pry
```

Run `ruby examples/activerecord_article.rb` to get started
