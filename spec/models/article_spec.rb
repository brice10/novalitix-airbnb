require 'rails_helper'

RSpec.describe "Article management", type: :request do
  context "Saving an article" do
    it "requires both title and body" do
      article = Article.new
      expect(article.save).to be_falsey
    end

    it "requires title" do
      article = Article.new(body:"lionel")
      expect(article.save).to be_falsey
    end

    it "requires body" do
      article = Article.new(title:"lionel")
      expect(article.save).to be_falsey
    end

  end
end
