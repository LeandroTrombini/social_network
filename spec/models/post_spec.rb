require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'post is valid' do
    # Arrange
    post = FactoryBot.build(:post)

    post.user = FactoryBot.build(:user)
    post.save
    # Act

    # Assert
    expect(post).to be_valid
  end

  it 'post belongs to user' do
    user = FactoryBot.create(:user)
    post = FactoryBot.create(:post, user: user)

    expect(post.user).to eq user
  end

  it 'user has many posts' do
    user = FactoryBot.create(:user)
    post = FactoryBot.create(:post, user: user)

    expect(user.posts).to include post
  end
end
