module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model
    settings index: { number_of_shards: 1, number_of_replicas: 0 } do
      mapping do
        indexes :title, type: 'string'
      end
    end
  end
end
