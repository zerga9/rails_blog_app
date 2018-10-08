require 'rails_helper'

RSpec.describe 'articles/show', type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(title: 'broekhoven'))
  end

  it 'renders attributes' do
    render
  end
end
