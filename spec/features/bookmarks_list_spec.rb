feature 'bookmarks page' do
  scenario 'user can view bookmarks on page' do
    visit('/bookmarks')
    expect(page).to have_content("www.google.com www.github.com www.bbc.co.uk")
end
end
