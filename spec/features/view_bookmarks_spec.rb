require 'pg'

feature 'Viewing bookmarks' do
  scenario 'a user can see bookmarks' do

    Bookmark.add(url: "http://www.makersacademy.com")
    Bookmark.add(url: "http://www.destroyallsoftware.com")
    Bookmark.add(url: "http://www.google.com")
    
    visit('/bookmarks')

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
