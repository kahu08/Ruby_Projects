require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the making change process', {:type => :feature}) do
    it('processes the user entry of cents and returns the coins necessary to make change') do
      visit('/')
      fill_in('cents', :with => 41)
      click_button('Make change!')
      expect(page).to have_content('1 quarter')
    end
  end
  
