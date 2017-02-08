class String
  define_method(:scrabble_score) do
    scr_one = ["a", "e", "i", "o", "u", "l", "n", "r", "t"]
    scr_two = ["d","g"]
    scr_three = ["b", "c", "m", "p"]
    scr_four = ["f", "h", "v", "w", "y"]
    scr_five = ["k"]
    scr_eight = ["j", "x"]
    scr_ten = ["q", "z"]
    if scr_one.include?(self)
      scr_value = 1
    elsif scr_two.include?(self)
      scr_value = 2
    elsif scr_three.include?(self)
      scr_value = 3
    elsif scr_four.include?(self)
      scr_value = 4
    elsif scr_five.include?(self)
      scr_value = 5
    elsif scr_eight.include?(self)
      scr_value = 8
    elsif scr_eight.include?(self)
      scr_value = 10



    end
  end
end
