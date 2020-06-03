feature 'bookmarks page' do
  scenario 'user can view bookmarks on page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'www.github.com', 'Github');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'www.bbc.co.uk', 'BBC');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'www.gmail.com', 'Gmail');")

    visit('/bookmarks')
    expect(page).to have_content("Github BBC Gmail")
  end

  scenario 'Has a form for adding bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('Add new:')
  end
end
