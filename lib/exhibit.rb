class Exhibit
  attr_reader :name, :cost

  def initialize(hash_data)
    @name = hash_data[:name]
    @cost = hash_data[:cost]
  end
end
