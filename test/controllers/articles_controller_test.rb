require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test 'the truth' do
    assert true
  end

  test 'should not save article without title' do
    article = Article.new
    assert_not article.save, 'Saved the article without a title'
  end

  test 'should not save article with less than 5 characters title' do
    article = Article.create(title: 'gadi', text: 'hallohallo')
    assert_not article.save, 'Saved the article with less than 5 a title'
  end

  test 'should save article with less than 5 characters title' do
    article = Article.create(title: 'gadiza', text: 'hallohallo')
    assert article.save, 'Not saved the article with more than 5 characters in a title'
  end
end
