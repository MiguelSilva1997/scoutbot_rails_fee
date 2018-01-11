class Login

  def initialize(filter = {})
    @filter = filter
  end

  def login(params)
    raw_data = scoutbot_service.get_current_user(params)
    CurrentUser.new(raw_data)
  end

  def create_user(params)
    raw_data = scoutbot_service.create_current_user(params)
    CurrentUser.new(raw_data)
  end

  private

  attr_reader :filter

  def scoutbot_service
    @scoutbot_service ||= ScoutBotService.new
  end
end
