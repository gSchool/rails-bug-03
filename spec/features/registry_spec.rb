require 'rails_helper'
require 'capybara/rails'

feature 'Registry' do

  scenario 'Registry form should require email' do
    c = 'registrations'
    a = 'new'
    visit (url_for :controller => c, :action => a)
    fill_in "Name", with: "Jimmy"
    fill_in "Password", with: "password"
    fill_in "Confirm", with: "password"
    within(".registration-form") { click_on "Register" }
    expect(page).to have_content("Email can't be blank")
  end

end
