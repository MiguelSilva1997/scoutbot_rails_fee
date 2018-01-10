class CurrentUser
  attr_reader :id,
              :first_name,
              :last_name,
              :email,
              :phone_number,
              :role,
              :scout_profile,
              :player_profile,
              :teams

  def initialize(data)
    @id = data["id"]
    @role = data["role"]
    @first_name = data["first_name"]
    @last_name = data["last_name"]
    @email = data["email"]
    @phone_number = data["phone_number"]
    @scout_profile = data["scout_profile"]
    @player_profile = data["player_profile"]
    @teams = data["teams"]
  end
end
