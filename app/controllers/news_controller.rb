class NewsController < ApplicationController

  def index
    @news = Sport.new.get_news
  end

end
