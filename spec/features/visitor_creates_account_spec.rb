require 'rails_helper'

feature 'Account creation' do
  scenario 'allows guest to create account' do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end

def sign_up
  visit new_user_registration_path

  fill_in :user_username, with: 'wowodf2'
  fill_in :user_email, with: 'eee@asd.com'
  fill_in :user_password, with: 'nigfigdfi231nf'
  fill_in :user_password_confirmation, with: 'nigfigdfi231nf'

  click_button 'Sign up'
end