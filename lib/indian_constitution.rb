# frozen_string_literal: true

require "json"
require "indian_constitution/part"
require "indian_constitution/article"

# Provides access to the Indian Constitution's parts and articles. djejd
module IndianConstitution
  DATA_DIR = File.join(__dir__, "indian_constitution", "data")
  DATA_PATH = File.join(DATA_DIR, "constitution.json")
  @parts = nil

  def self.load_data
    data = JSON.parse(File.read(DATA_PATH))
    @parts = data["parts"].map { |part_data| Part.new(part_data) }
  rescue Errno::ENOENT
    raise "Constitutional data file not found at #{DATA_PATH}"
  rescue JSON::ParserError
    raise "Invalid JSON format in #{DATA_PATH}"
  end

  def self.parts
    @parts || load_data
  end

  def self.get_part(number)
    parts.find { |part| part.number == number } || raise("Part #{number} not found")
  end

  def self.get_article(number)
    parts.each do |part|
      article = part.find_article(number.to_i)
      return article if article
    end
    raise "Article #{number} not found"
  end

  def self.all_articles
    parts.flat_map(&:articles)
  end
end
