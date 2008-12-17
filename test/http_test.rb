require File.join(File.dirname(__FILE__), 'test_helpers')

require 'connection_test_methods'

class HTTPTest < Test::Unit::TestCase
  
  include ConnectionTestMethods
  
  def setup
    @solr = Solr.connect :http
    @solr.delete_by_query('*:*')
    @solr.commit
  end
  
end