class Player

  attr_reader :first_name,
              :last_name,
              :rating

  def initialize(data)
    @first_name = data['first_name']
    @last_name = data['last_name']
    @rating = data['player_profile']['rating']
  end
end
