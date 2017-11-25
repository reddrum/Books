require "rails_helper"
require "helpers/login_helper"

describe "Books", :type => :feature do

  context "create" do
    let!(:user) { create(:user) }
    let!(:category) { create(:category) }
    before(:each) { login('qwerty@gmail.com', '123456') }

    it "create new book&upload image" do
      visit new_book_path
      select("cat1", from: "category_id").select_option
      attach_file 'book[book_img]', "#{Rails.root}/spec/fixtures/image.jpg"
      fill_in('book_title', with: 'booooook')
      fill_in('book_description', with: 'lorem ipsum')
      fill_in('book_author', with: 'someone')
      click_button 'Create Book'
      expect(page).to have_xpath("//img[contains(@src,'image.jpg')]")
    end

    it "create book&review" do
      visit new_book_path
      select("cat1", from: "category_id").select_option
      fill_in('book_title', with: 'booooook2')
      fill_in('book_description', with: 'lorem ipsum')
      fill_in('book_author', with: 'someone')
      click_button 'Create Book'

      visit new_book_review_path("#{Book.last.id}")
      fill_in('review[comment]', with: 'nice book')
      click_button 'Create Review'
      expect(page).to have_content 'nice book'
    end
  end
end