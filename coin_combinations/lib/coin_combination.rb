class Fixnum
    define_method(:coin_combination) do
      total_cents = self
      quarters = 0
      dimes = 0
      nickels = 0
      pennies = 0

      until total_cents.==(0)
        if total_cents.>(25)
          quarters = total_cents./(25)
          total_cents = total_cents.%(25)
        elsif total_cents.>(10)
          dimes = total_cents./(10)
          total_cents = total_cents.%(10)
        elsif total_cents.>(5)
          nickels = total_cents./(5)
          total_cents = total_cents.%(5)
        else
          pennies = total_cents
          total_cents = 0
        end
      end

      return [quarters, dimes, nickels, pennies]
    end
  end
