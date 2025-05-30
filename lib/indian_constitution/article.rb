module IndianConstitution
  class Article
    attr_reader :number, :title, :content

    def initialize(number:, title:, content:)
      @number = number
      @title = title
      @content = content
      freeze
    end

    def to_h
      {
        number: number,
        title: title,
        content: content
      }
    end
  end
end