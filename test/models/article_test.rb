require "test_helper"

class ArticleTest < ActiveSupport::TestCase

  # Isoler les testCase via les transactions
  self.use_transactional_tests = false

  test "should article with title and body" do
    article = Article.new(title:"alex",body:"lionel")
    assert article.save
  end

  test "should not save article without title" do
    article = Article.new(body:"lionel")
    assert_not article.save, "Saved the article without a title"
  end

  test "should not save article without body" do
    article = Article.new(title:"lionel")
    assert_not article.save, "Saved the article without a body"
  end

  test "should get all articles" do
   articles = Article.all
   assert_not_nil( articles, "Expected articles to be not nil")
  #  assert_empty( articles, "Expected articles collection to empty")
  end

  test "I test some assertions" do
    a = 3
    b = 3
    c = "A"
    d = nil
    articles= Article.all
    assert_same( a, b, "Expected 'a' to be equal to 'b'")
    assert_not_same( a, c, "Expected 'a' and 'c' are  not the same")
    assert( a == b, "Expected a to be equal to b" )
    assert_not( a == c, "Expected 'a' not to be equal to 'c'")
    assert_not_equal( a, c, "Expected 'a' not to be equal to 'c'")
    assert_nil( d, "Expected 'd' to be nil" )
    assert_not_nil( a, "Expected 'd' to be nil" )
    assert_not_empty( articles, "Expected 'articles' to be empty" )
  end
end
