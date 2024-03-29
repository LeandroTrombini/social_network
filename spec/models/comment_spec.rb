require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'user comments on a post' do
    boris = FactoryBot.create(:user)
    alex = FactoryBot.create(:user)

    post = FactoryBot.create(:post, user: boris)

    comment = FactoryBot.create(:comment, user: alex, post: post)

    expect(post.comments.count).to eq 1
    expect(post.comments.first.user).to eq alex
    expect(post.comments.first.body).to eq 'Que post legal!'
    expect(alex.comments.first).to eq comment
    expect(boris.comments.first).to eq nil
  end
end
