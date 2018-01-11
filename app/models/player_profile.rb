class PlayerProfile

  attr_reader :club,
              :height,
              :weight,
              :dominant_foot,
              :age,
              :country,
              :primary_position,
              :secondary_position,
              :rating

  def initialize(data = {})
    @club = data['club']
    @height = data['height']
    @weight = data['weight']
    @dominant_foot = data['dominant_foot']
    @age = data['age']
    @country = data['country']
    @primary_position = data['primary_position']
    @secondary_position  = data['secondary_position']
    @rating = data['rating']
  end

end
