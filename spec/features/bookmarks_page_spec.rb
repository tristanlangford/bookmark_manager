feature 'bookmarks page' do
  scenario 'user can view bookmarks on page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'www.github.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'www.bbc.co.uk');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'www.gmail.com');")
    
    visit('/bookmarks')
    expect(page).to have_content("www.github.com www.bbc.co.uk www.gmail.com")
end
end
