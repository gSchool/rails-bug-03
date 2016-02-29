require 'rails_helper'
require 'capybara/rails'

feature 'Register' do

  scenario 'invalid without email' do
    visit root_path
    click_on "Register"
    fill_in "Name", with: "Test User"
    fill_in "Password", with: "password"
    fill_in "Confirm", with: "password"
    within(".registration-form") { click_on "Register" }
    expect(page).to have_content("Email can't be blank")
  end

  scenario 'vali with name, email, and password' do
    visit root_path
    click_on "Register"
    fill_in "Name", with: "Test User"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Confirm", with: "password"
    within(".registration-form") { click_on "Register" }
    expect(page).to have_content("test@example.com")
  end

end