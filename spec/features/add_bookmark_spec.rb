require 'pg'

feature 'Add bookmarks' do
  scenario 'a user can submit a bookmark and bookmark is added to bookmarks' do
    visit('/bookmarks/add')
    fill_in :url, with: 'http://www.gmail.com'
    click_button 'Add' 
    expect(page).to have_content 'http://www.gmail.com'
  end
end

