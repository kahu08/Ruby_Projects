require('rspec')
  require('scrabble_score')

    describe('String#scrabble_score') do
      it("Returns number 1 when given a letter") do
        expect(("a").scrabble_score()).to(eq(1))
      end
      it("Returns number 2 when given a letter ") do
        expect(("g").scrabble_score()).to(eq(2))
      end
      it("Returns number 3 when given a letter ") do
        expect(("c").scrabble_score()).to(eq(3))
      end
      it("Returns number 4 when given a letter ") do
        expect(("h").scrabble_score()).to(eq(4))
      end
      it("Returns number 5 when given a letter ") do
        expect(("k").scrabble_score()).to(eq(5))
      end
      it("Returns number 8 when given a letter ") do
        expect(("x").scrabble_score()).to(eq(8))
      end
    end
