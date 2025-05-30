# frozen_string_literal: true

RSpec.describe IndianConstitution do
  describe ".get_part" do
    it "returns the correct part by number" do
      part = IndianConstitution.get_part("I")
      expect(part.number).to eq("I")
      expect(part.title).to eq("The Union and Its Territory")
      expect(part.articles.size).to eq(4) # Part I has Articles 1-4
    end
  end

  describe ".get_article" do
    it "returns the correct article by number" do
      article = IndianConstitution.get_article(1)
      expect(article.number).to eq(1)
      expect(article.title).to eq("Name and territory of the Union")
      expect(article.content).to include("India, that is Bharat")
    end

    it "raises an error for an invalid article number" do
      expect { IndianConstitution.get_article(999) }.to raise_error("Article 999 not found")
    end
  end
end
