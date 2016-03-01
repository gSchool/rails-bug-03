require 'rails_helper'
require 'capybara/rails'

feature 'Auth' do
    scenario 'Testing to see if email is needed' do
        create_user email: 'cantbuymelove@beatles.com'
        visit root_path
        within(".auth") { click_on "Register" }
        expect(page).to have_content("Register")

        fill_in "Email", with: 'cantbuymelove@beatles.com'
        fill_in "Password", with: 'password'
        within(".registration-form"){click_on "Register"}
        expect(current_path).to eq '/registrations'
    end
end
