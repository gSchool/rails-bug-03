require 'rails_helper'
require 'capybara/rails'

feature 'Auth' do

	scenario 'User forgets to put in their email' do
	 c = 'registrations'
	 a = 'new'
	visit (url_for :controller =>c, :action => a) 
	within(".registration-form") {click_on 'Register'}
	expect(page).to have_content('Email can\'t be blank')

	end
end