require 'acceptance/acceptance_helper'

feature 'Index', %q{
  In order to see what's new
  As a guest
  I want to view latest articles
} do

  scenario 'full index spec' do
    user = create(:user, email: "hello@example.com")
    article = create(:article, author: user, title: "My Post", published_on: Time.local(2012, 4, 25, 10, 00))
    newer_article = create(:article, author: user, title: "My Newer Post", published_on: Time.local(2012, 4, 26, 10, 00))
    visit root_path
    page.should have_selector(".article", count: 2)
    page.should have_selector(".article:first-child h2", text: "My Newer Post")
    page.should have_content newer_article.blurb
    click_link "My Newer Post"
    page.should have_content(".author", text: user.email)
  end

end
