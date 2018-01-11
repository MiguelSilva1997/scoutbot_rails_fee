class SportService

  def get_current_news
    response = @conn.get("top-headlines?q=league&apiKey=#{ENV['STORY_KEY']}")
    JSON.parse(response.body)
  end

  private

  attr_reader :conn

  def initialize
    @conn ||= Faraday.new(url: "https://newsapi.org/v2/")
  end
end
