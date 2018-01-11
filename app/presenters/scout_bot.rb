class ScoutBot

  def initialize(filter = {})
    @filter =filter
  end

  def top_players
    raw_data = scoutbot_service.get_top_players
    generate_players(raw_data)
  end

  def generate_players(raw_data)
    raw_data.map{ |data| Player.new(data)}
  end

  def current_news
    raw_data = scoutbot_service.get_current_news
    generate_sport_updates(raw_data)
  end

  def generate_sport_updates(raw_data)
    raw_data['articles'].map{ |data| SportUpdate.new(data)}
  end

  private

  attr_reader :filter

  def scoutbot_service
    @scoutbot_service ||= ScoutBotService.new
  end
end
