require 'rails_helper'

RSpec.feature 'Visitor Navigation', :type => :feature do
  context 'a visitor is on the homepage and sees the correct links' do
    it 'has a link to the homepage' do
      visit '/'
      click_link 'Home'

      expect(current_path).to eq('/')
    end

    it 'has a link to all items' do
      visit '/'
      click_link 'Items'

      expect(current_path).to eq('/items')
    end

    it 'has a link to all merchants' do
      visit '/'
      click_link 'Merchants'

      expect(current_path).to eq('/merchants')
    end

    it 'has a link to the cart' do
      visit '/'
      click_link 'Cart'

      expect(current_path).to eq('/cart')
    end

    xit 'has a link to the login page' do
      visit '/'
      click_link 'Login'

      expect(current_path).to eq('/login')
    end

    xit 'has a link to the register page' do
      visit '/'
      click_link 'Register'

      expect(current_path).to eq('/register')
    end
  end
end