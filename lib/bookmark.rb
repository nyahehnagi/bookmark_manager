require_relative '../lib/bookmark'
require 'pg'

class Bookmark
  
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks;')
    p result
    result.map { |bookmark| bookmark['url'] }
  end
end

# {"id"=>"1", "url"=>"http://www.makersacademy.com"}
# {"id"=>"4", "url"=>"http://www.google.com"}
# {"id"=>"2", "url"=>"http://www.destroyallsoftware.com"}