require 'rails_helper'

describe "the add a genre process" do
  it "adds a new genre" do
    visit genres_path
    click_link 'Register'
    fill_in 'user_email', :with => 'test@test.com'
    fill_in 'user_password', :with => 'testtest'
    fill_in 'user[password_confirmation]', :with => 'testtest'
    click_button 'Sign up'
    visit genres_path
    click_link "New Genre"
    fill_in 'genre[title]', :with => 'Genre stuff'
    click_on 'Create Genre'
    expect(page).to have_content 'Genre stuff'
  end
end
