require('spec_helper')

describe(Employee) do

  describe("#division") do
    it("tells which list it belongs to") do
      test_division = Division.create({:division_name => "division"})
      test_employee = Employee.create({:employee_name => "task", :division_id => test_division.id})
      expect(test_employee.division()).to(eq(test_division))
    end
  end
end
