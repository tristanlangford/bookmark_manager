feature 'bookmarks page' do
  scenario 'user can view bookmarks on page' do
    visit('/bookmarks')
    expect(page).to have_content('List of Bookmarks')
end
end
