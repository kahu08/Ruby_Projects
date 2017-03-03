ENV['RACK_ENV'] = 'test'

require("sinatra/activerecord")
require("rspec")
require("pg")
require("division")
require("employee")
require("pry")
# DB = PG.connect({:dbname => "to_do_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM divisions *;")
    DB.exec("DELETE FROM employees *;")
  end
end


# require("rspec")
# require("pg")
# require("division")
# require('employee')
# RSpec.configure do |config|
#   config.after(:each) do
#     Division.all().each() do |division|
#       division.destroy()
#     end
#     # Employee.all().each() do |employee|
#     #   employee.destroy()
#     # end
#   end
# end
