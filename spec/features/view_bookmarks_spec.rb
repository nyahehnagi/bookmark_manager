feature "viewing bookmarks" do
  scenario "user views the bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.microsoft.com")
    expect(page).to have_content("http://www.google.com")
  end
end