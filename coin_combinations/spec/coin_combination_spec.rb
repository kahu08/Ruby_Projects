require('rspec')
  require('./lib/coin_combination.rb')

  describe('Fixnum#coin_combination') do
    it('returns the change when the amount is less than 5') do
      expect((3).coin_combination()).to(eq([0,0,0,3]))
    end

    it('returns pennies and nickels for an amount greater than 5 and less than 10') do
      expect((9).coin_combination()).to(eq([0,0,1,4]))
    end

    it('returns pennies and nickels and dimes for an amount greater than 10 and less than 25') do
      expect((17).coin_combination()).to(eq([0,1,1,2]))
    end

    it('returns the correct quantity of pennies, nickels, dimes and quarters for an amount greater than 25 and less than 100') do
      expect((41).coin_combination()).to(eq([1,1,1,1]))
    end
  end
  
