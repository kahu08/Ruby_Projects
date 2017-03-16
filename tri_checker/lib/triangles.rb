  class Triangle
      define_method(:initialize) do |length, width, height|
        @length = length
        @width = width
        @height = height
      end
    define_method(:triangle_type) do
      name_of_triangle = ""
      if @length.==(@width) && @width.==(@height)
        name_of_triangle = "The triangle is equilateral"
        return name_of_triangle

      elsif @length.==(@width) || @width.==(@height) || @length.==(@height)
        name_of_triangle = "The triangle is an isosceles"
        return name_of_triangle

      elsif @length + @width <= @height || @width + @height <= @length || @height + @length <= @width
        name_of_triangle = "This is not a triangle"
        return name_of_triangle

      else
        name_of_triangle = "The triangle is scalene"
        return name_of_triangle
      end
    end
end

# ALTERNATIVE(imperfect)
# class Triangle
#     define_method(:initialize) do |length, width, height|
#       @length = length
#       @width = width
#       @height = height
#     end
#
#     define_method(:equilateral?) do
#       @length.eql?(@width)
#       @width.eql?(@height)
#       @height.eql?(@length)
#
#     end
#     define_method(:isosceles) do
#       if @length.eql?(@width)
#         "isosceles"
#       elsif @width.eql?(@height)
#         "isosceles"
#       elsif @height.eql?(@length)
#         "isosceles"
#       end
#       "isosceles"
#       end
#       define_method(:scalene) do
#         if @length !=@width
#           "scalene"
#         elsif @width !=@height
#           "scalene"
#         elsif @height !=@length
#           "scalene"
#         end
#           "scalene"
#         end
#       define_method(:neither) do
#           if @length + @width <= @height
#             "this is not a triangle"
#           elsif @width + @height <= @length
#             "this is not a triangle"
#           elsif @height + @length <= @width
#             "this is not a triangle"
#           end
#             "this is not a triangle"
#         end
#   end
