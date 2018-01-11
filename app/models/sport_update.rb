class SportUpdate
  attr_reader :source,
              :author,
              :title,
              :description,
              :url,
              :image

  def initialize(data = {})
    @source = data['source']['name']
    @author = data['author'] || "None"
    @title = data['title']
    @description = data['description']
    @url = data['url']
    @image = data['"urlToImage"']
  end
end
