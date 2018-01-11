class ScoutProfile

  attr_reader :country,
              :reputation,
              :availability

  def initialize(data = {})
    @country = data['country']
    @reputation = data['reputation']
    @availability = data['availability']
  end

end
