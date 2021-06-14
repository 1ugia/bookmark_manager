feature 'Viewing bookmarks' do

  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'visiting the bookmark page' do
    visit('/bookmark')
    expect(page).to have_content 'https://www.youtube.com/user/pokemon'
    expect(page).to have_content 'https://github.com/'
  end

end
