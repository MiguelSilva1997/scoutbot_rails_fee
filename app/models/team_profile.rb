class TeamProfile

  attr_reader :name,
              :reputation,
              :league,
              :division,
              :country

  def initialize(data = {})
    @name = data['name']
    @reputation = data['reputation']
    @league = data['league']
    @division = data['division']
    @country = data['country']
  end

end
