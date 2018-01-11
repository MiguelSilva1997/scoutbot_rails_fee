class ScoutBotService

  def get_top_players
    response = @conn.get("home")
    JSON.parse(response.body)
  end

  def get_current_user(params)
    response = @conn.post("login", params)
    JSON.parse(response.body)
  end

  def create_current_user(params)
    response = @conn.post("users", params)
    JSON.parse(response.body)
  end

  private

  attr_reader :conn

  def initialize
    # @conn ||= Faraday.new(url: "https://scoutbot-api.herokuapp.com/api/v1/")
    @conn ||= Faraday.new(url: "http://localhost:3000/api/v1/")
  end

end
