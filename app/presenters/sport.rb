class Sport
  def initialize(filter = {})
    @filter = filter
  end

  def get_news
    raw_data = sport_service.get_current_news
    generate_sport_update(raw_data)
  end

  def generate_sport_update(raw_data)
    raw_data['articles'].map {|data| SportUpdate.new(data)}
  end

  private
  attr_reader :filter
    def sport_service
      @sport_service ||= SportService.new
    end
end
