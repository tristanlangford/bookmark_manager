feature 'testing index page' do
  scenario 'it shows hello world message' do
    visit('/')
    expect(page).to have_content('Hello, world')
  end
end
