require('capybara/rspec')
  require('./app')
  capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the scrabble score path', {:type => :feature}) do
    it('processes user entry and returns the score value') do
      visit('/')
      fill_in('word', :with => 'a')
      click_button('Send')
      expect(page).to have_content(1)
    end
  end
