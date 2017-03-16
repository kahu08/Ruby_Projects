require ("rspec")
require ("triangles")

describe('Triangle')do
  describe('#triangle_type')do
    it('returns equilateral for triangle with all sides equal')do
      test_triangle = Triangle.new(8,8,8)
      expect(test_triangle.triangle_type()).to(eq("The triangle is equilateral"))
    end
  end
  describe('#triangle_type')do
    it('returns isosceles for triangle with two sides equal')do
      test_triangle = Triangle.new(6,4,4)
      expect(test_triangle.triangle_type()).to(eq("The triangle is an isosceles"))
    end
  end
  describe('#triangle_type')do
    it('returns not a triangle for triangle with sum of two sides less than or equal to other side')do
      test_triangle = Triangle.new(3,2,1)
      expect(test_triangle.triangle_type()).to(eq("This is not a triangle"))
    end
  end
  describe('#triangle_type')do
    it('returns scalene for triangle with no sides equal')do
      test_triangle = Triangle.new(3,4,5)
      expect(test_triangle.triangle_type()).to(eq("The triangle is scalene"))
    end
  end
end
