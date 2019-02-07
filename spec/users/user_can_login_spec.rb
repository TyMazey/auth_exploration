require 'rails_helper'

RSpec.describe 'as user', type: :feature do

  it 'allows me to login' do
    u = User.create(name: 'ty', email: 'email', password: '123')

    visit login_index_path

    fill_in 'Name', with: 'ty'
    fill_in 'Email', with: 'email'
    fill_in 'Password', with: '123'
    click_on 'Submit'
    expect(current_path).to eq(user_path(u.id))
  end
end
