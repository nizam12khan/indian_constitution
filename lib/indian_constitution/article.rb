module IndianConstitution
  class Article
    attr_reader :number, :title, :content

     def initialize(data)
      @number = data["number"]
      @title = data["title"]
      @content = data["content"]
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