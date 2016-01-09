require 'elasticsearch/model'

class Article < ActiveRecord::Base
  include Searchable
end
