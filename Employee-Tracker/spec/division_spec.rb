require('spec_helper')

# describe(Division) do
#   describe("#employees") do
#     it("tells which employees are in it") do
#       test_division = Division.new({:division_name => 'Moringa School stuff'})
#       # test_division = Division.create({:division_name => "division"})
#       # test_employee1 = Employee.create({:employee_name => "John", :division_id => test_division.id})
#       test_employee1 = test_division.employees().new({:employee_name => 'John'})
#       binding.pry
#       # test_employee2 = Employee.create({:employee_name => "Doe", :division_id => test_division.id})
#       test_employee1.save()
#       test_employee2 = test_division.employees().new({:employee_name => 'Doe'})
#       test_employee2.save()

#       test_division.save()
#       expect(test_division.employees()).to(eq([test_employee1, test_employee2]))
#       # test_division.employees()
#     end
#   end
# end

describe(Division) do
  describe("#employees") do
    it("tells which employees are in it") do
      test_division = Division.create({:division_name => "HR"})
      test_employee1 = Employee.create({:employee_name => "Jack", :division_id => test_division.id})
      test_employee2 = Employee.create({:employee_name => "Keith", :division_id => test_division.id})
      expect(test_division.employees()).to(eq([test_employee1, test_employee2]))
    end
  end
end
