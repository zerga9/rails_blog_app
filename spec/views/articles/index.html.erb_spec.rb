require 'rails_helper'

RSpec.describe 'articles/index', type: :view do
  before(:each) do
    assign(:articles, [
             Article.create!(title: 'gadiza', text: 'This is it'),
             Article.create!(title: 'bredaisdegekste', text: 'Tis is it again')
           ])
  end

  it 'renders a list of articles' do
    render
  end
end
