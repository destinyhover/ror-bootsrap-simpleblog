require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "validations" do
    it {should validate_presence_of :title}
    it {should validate_presence_of :text}
  end
   describe "assotiations" do 
  it { should have_many :comments}
  it { should belong_to :user}
  end

  describe "#subject" do
    
    let(:article) { create(:article, title: 'Foo', user: User.first) }

    it "returns the title as subject" do
      expect(article.subject).to eq 'Foo'
    end
  end

  describe "#last_comment" do

    let(:comment) {create(:comment, body: 'cmbdy67891', article: Article.first)}
    it "returns the last comment" do
      expect(comment.body).to eq 'cmbdy67891'
    end
  end
end