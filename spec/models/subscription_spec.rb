require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it 'user can follow another user' do
    # Arrange
    matt = FactoryBot.create(:user)
    bob = FactoryBot.create(:user)

    Subscription.create(followed: bob, followed_by: matt)
    # Act

    # Assert
    expect(bob.followers.count).to eq 1
    expect(bob.followers).to include matt

    expect(matt.following.count).to eq 1
    expect(matt.following).to include bob

    expect(bob.following.count).to eq 0
    expect(bob.following).to_not include matt

    expect(matt.followers.count).to eq 0
    expect(matt.followers).to_not include matt

    # Arrange
    donald = FactoryBot.create(:user)

    Subscription.create(followed: bob, followed_by: donald)

     # Assert
     expect(bob.followers.count).to eq 2
     expect(bob.followers).to include donald

     expect(donald.following.count).to eq 1
     expect(donald.following).to include bob

  end
end
