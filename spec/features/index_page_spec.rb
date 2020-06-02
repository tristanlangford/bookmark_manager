feature 'testing index page' do
  scenario 'it shows hello world message' do
    visit('/')
    expect(page).to have_content('Bookmark Manager')
  end
end
