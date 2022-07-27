require "./lib/patron"
require "rspec"


describe(Patron) do
  before(:each) do
    @patron_1 = Patron.new("Bob", 20)
  end

  it("exists") do
    expect(@patron_1).to(be_an_instance_of(Patron))
  end

  it("attributes") do
    expect(@patron_1.name).to(eq("Bob"))
    expect(@patron_1.spending_money).to(eq(20))
  end

  it("has interests") do
    expect(@patron_1.interests).to(eq([]))
    @patron_1.add_interest("Dead Sea Scrolls")
    @patron_1.add_interest("Gem and Minerals")
    expect(@patron_1.interests).to(eq(["Dead Sea Scrolls", "Gem and Minerals"]))
  end
end
