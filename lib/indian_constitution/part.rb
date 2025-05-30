# frozen_string_literal: true
module IndianConstitution
  class Part
    attr_reader :number, :title, :articles

    def initialize(data)
      @number = data["number"]
      @title = data["title"]
      @articles = data["articles"].map { |article_data| Article.new(article_data) }
    end

    def find_article(number)
      articles.find { |article| article.number == number}
    end

    def to_h
      {
        number: number,
        title: title,
        articles: articles.map(&:to_h)
      }
    end
  end
end