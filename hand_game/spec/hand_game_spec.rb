require('rspec')


describe('String#beats') do
  it("returns true if rock is object and scissors is argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end
  it("returns true if scissors is object and paper is argument") do
    expect("scissors".beats?("paper")).to(eq(true))
  end
  it("returns true if paper is object and rock is argument") do
    expect("paper".beats?("rock")).to(eq(true))
  end
  # it("returns true if rock is object and rock is argument") do
  #   expect("rock".ties?("rock")).to(eq(true))
  # end
  # it("returns true if scissors is object and scissors is argument") do
  #   expect("scissors".ties?("scissors")).to(eq(true))
  # end
  # it("returns true if paper is object and paper is argument") do
  #   expect("paper".ties?("paper")).to(eq(true))
  # end
end
