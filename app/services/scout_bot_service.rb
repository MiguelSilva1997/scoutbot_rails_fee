class ScoutBotService

  def get_top_players
    response = @conn.get("home")
    JSON.parse(response.body)
  end


  private

  attr_reader :conn

  def initialize
    @conn ||= Faraday.new(url: "http://localhost:3000/api/v1/")
  end

end
