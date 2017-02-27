require('rspec')
  require('title_case')

  describe('title_case') do
    it("capitalizes the first letter of a word") do
      expect(("beowolf").title_case).to eq(Beowolf)
    end

    it("capitalizes the first letter of all words in a multiple word title") do
      expect(("the color purple").title_case).to eq("The Color Purple")
    end
  end
  
