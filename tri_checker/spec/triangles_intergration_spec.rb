require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the result path', {:type => :feature}) do
     it('processes the user entry and returns the type of triangle') do
       visit('/')
       fill_in('length',:with => 3)
       fill_in('width', :with => 2)
       fill_in('height', :with => 1)
       click_button('Send')
       test_triangle = Triangle.new(3,2,1)
       expect(test_triangle.triangle_type()).to have_content("This is not a triangle")
     end
   end
