require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/');")

      bookmarks = Bookmark.all
      expect(bookmarks).to include "http://www.makersacademy.com/"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com/"
    end
  end

  describe '.add' do
    it 'adds a new bookmark' do
      Bookmark.add(url: 'http://www.example.org', title: 'Gmail')
  
      # expect(Bookmark.all).to include 'http://www.example.org'
      expect(Bookmark.all).to include 'Gmail'
    end
  end
end
